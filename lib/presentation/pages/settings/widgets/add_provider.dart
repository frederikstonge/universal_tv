import 'dart:async';
import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:forui/forui.dart';

import '../../../../blocs/settings/iptv_provider.dart';

class AddProvider extends StatefulWidget {
  final FutureOr<void> Function(IptvProvider provider) onAdd;
  const AddProvider({super.key, required this.onAdd});

  @override
  State<AddProvider> createState() => _AddProviderState();
}

class _AddProviderState extends State<AddProvider> with TickerProviderStateMixin {
  late final GlobalKey<FormState> _formKey;
  late final FTimeFieldController _timePickerController;
  late final TextEditingController _nameController;
  late final TextEditingController _urlsController;
  late final TextEditingController _urlController;
  late final TextEditingController _usernameController;
  late final TextEditingController _passwordController;
  bool isValid = false;
  bool isLoading = false;

  late IptvProviderType _selectedType;

  @override
  void initState() {
    _formKey = GlobalKey<FormState>();
    _nameController = TextEditingController();
    _urlController = TextEditingController();
    _usernameController = TextEditingController();
    _passwordController = TextEditingController();
    _timePickerController = FTimeFieldController(vsync: this, initialTime: FTime(23));
    _selectedType = IptvProviderType.m3u;
    super.initState();
  }

  @override
  void dispose() {
    _timePickerController.dispose();
    _nameController.dispose();
    _urlController.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  IptvProvider buildProvider() {
    switch (_selectedType) {
      case IptvProviderType.m3u:
        final ls = LineSplitter();
        final urls = ls.convert(_urlsController.text);
        return M3uIptvProvider(name: _nameController.text, order: 0, urls: urls);
      case IptvProviderType.xtream:
        final timeValue = _timePickerController.value;
        final epgExpiration = timeValue != null
            ? Duration(hours: timeValue.hour, minutes: timeValue.minute)
            : Duration(hours: 24);

        return XtreamIptvProvider(
          name: _nameController.text,
          order: 0,
          url: _urlController.text,
          userName: _usernameController.text,
          password: _passwordController.text,
          epgExpiration: epgExpiration,
        );
      case IptvProviderType.xmltv:
        final timeValue = _timePickerController.value;
        final epgExpiration = timeValue != null
            ? Duration(hours: timeValue.hour, minutes: timeValue.minute)
            : Duration(hours: 24);
        return XmltvIptvProvider(
          name: _nameController.text,
          order: 0,
          url: _urlController.text,
          epgExpiration: epgExpiration,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return FCard(
      title: Text('Add provider'),
      subtitle: Text('Add a new IPTV provider'),
      child: Form(
        onChanged: () => setState(() {
          isValid = _formKey.currentState?.validate() ?? false;
        }),
        key: _formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: [
            SizedBox(height: 16),
            FSelect(
              label: Text('Type'),
              items: IptvProviderType.values.asMap().map((k, v) => MapEntry(v.name, v)),
              initialValue: _selectedType,
              onChange: (value) {
                if (value == null) {
                  return;
                }

                setState(() {
                  _selectedType = value;
                });
              },
            ),
            SizedBox(height: 16),
            FTextField(controller: _nameController, label: Text('Name')),
            SizedBox(height: 16),
            if (_selectedType == IptvProviderType.m3u) ...[
              FTextFormField.multiline(
                controller: _urlsController,
                label: Text('URLs'),
                description: Text('Use {page} as a placeholder for pagination.'),
                errorBuilder: (context, error) => Text(error),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'URL is required';
                  }

                  final ls = LineSplitter();
                  final lines = ls.convert(value);
                  for (final line in lines) {
                    final uri = Uri.tryParse(line);
                    if (uri == null || !uri.isAbsolute) {
                      return 'Invalid URL: $line';
                    }
                  }

                  return null;
                },
              ),
            ] else if (_selectedType == IptvProviderType.xtream) ...[
              FTextFormField(
                controller: _urlController,
                label: Text('URL'),
                errorBuilder: (context, error) => Text(error),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'URL is required';
                  }

                  final uri = Uri.tryParse(value);
                  if (uri == null || !uri.isAbsolute) {
                    return 'Invalid URL';
                  }

                  return null;
                },
              ),
              SizedBox(height: 16),
              FTextField(controller: _usernameController, label: Text('Username')),
              SizedBox(height: 16),
              FTextField.password(controller: _passwordController),
              SizedBox(height: 16),
              FTimeField.picker(label: Text('EPG Expiration'), hour24: true, controller: _timePickerController),
            ] else if (_selectedType == IptvProviderType.xmltv) ...[
              FTextFormField(
                controller: _urlController,
                label: Text('URL'),
                errorBuilder: (context, error) => Text(error),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return null;
                  }

                  if (Uri.tryParse(value) == null) {
                    return 'Invalid URL';
                  }

                  return null;
                },
              ),
              SizedBox(height: 16),
              FTimeField.picker(label: Text('EPG Expiration'), hour24: true, controller: _timePickerController),
            ],
            SizedBox(height: 16),
            FButton(
              prefix: isLoading ? const FCircularProgress() : null,
              onPress: isValid && !isLoading
                  ? () async {
                      if (_formKey.currentState?.validate() ?? false) {
                        final provider = buildProvider();
                        setState(() {
                          isLoading = true;
                        });
                        try {
                          await widget.onAdd(provider);
                        } finally {
                          if (mounted) {
                            setState(() {
                              isLoading = false;
                            });
                          }
                        }
                      }
                    }
                  : null,
              child: Text('Add provider'),
            ),
          ],
        ),
      ),
    );
  }
}
