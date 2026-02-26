import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:forui/forui.dart';

import '../../../../blocs/settings/iptv_provider.dart';

class EditXtreamProvider extends StatefulWidget {
  final XtreamIptvProvider provider;
  final FutureOr<void> Function(IptvProvider provider) onSave;
  final FutureOr<void> Function(IptvProvider provider) onDelete;
  const EditXtreamProvider({super.key, required this.provider, required this.onSave, required this.onDelete});

  @override
  State<EditXtreamProvider> createState() => _EditXtreamProviderState();
}

class _EditXtreamProviderState extends State<EditXtreamProvider> {
  late final GlobalKey<FormState> _formKey;
  late final FTimeFieldController _timePickerController;
  late final TextEditingController _nameController;
  late final TextEditingController _urlController;
  late final TextEditingController _usernameController;
  late final TextEditingController _passwordController;
  bool isValid = false;
  bool isLoading = false;

  @override
  void initState() {
    final initialName = widget.provider.name;
    final initialUrl = widget.provider.url;
    final initialUsername = widget.provider.userName;
    final initialPassword = widget.provider.password;
    final initialEpgExpiration = FTime(
      widget.provider.epgExpiration.inHours % 24,
      widget.provider.epgExpiration.inMinutes % 60,
    );

    _formKey = GlobalKey<FormState>();
    _nameController = TextEditingController(text: initialName);
    _urlController = TextEditingController(text: initialUrl);
    _usernameController = TextEditingController(text: initialUsername);
    _passwordController = TextEditingController(text: initialPassword);
    _timePickerController = FTimeFieldController(time: initialEpgExpiration);
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _urlController.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
    _timePickerController.dispose();
    super.dispose();
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
            FTextField(
              control: .managed(controller: _nameController),
              label: Text('Name'),
            ),
            SizedBox(height: 16),

            FTextFormField(
              control: .managed(controller: _urlController),
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
            FTextField(
              control: .managed(controller: _usernameController),
              label: Text('Username'),
            ),
            SizedBox(height: 16),
            FTextField.password(control: .managed(controller: _passwordController)),
            SizedBox(height: 16),
            FTimeField.picker(
              control: .managed(controller: _timePickerController),
              label: Text('EPG Expiration'),
              hour24: true,
            ),
            SizedBox(height: 16),
            FButton(
              prefix: isLoading ? const FCircularProgress() : null,
              onPress: isValid && !isLoading
                  ? () async {
                      if (_formKey.currentState?.validate() ?? false) {
                        final provider = widget.provider.copyWith(
                          name: _nameController.text,
                          url: _urlController.text,
                          userName: _usernameController.text,
                          password: _passwordController.text,
                          epgExpiration: Duration(
                            hours: _timePickerController.value?.hour ?? 0,
                            minutes: _timePickerController.value?.minute ?? 0,
                          ),
                        );
                        setState(() {
                          isLoading = true;
                        });
                        try {
                          await widget.onSave(provider);
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
            SizedBox(height: 16),
            FButton(
              variant: FButtonVariant.destructive,
              prefix: Icon(FIcons.trash),
              onPress: () async {
                widget.onDelete(widget.provider);
              },
              child: Text('Delete provider'),
            ),
          ],
        ),
      ),
    );
  }
}
