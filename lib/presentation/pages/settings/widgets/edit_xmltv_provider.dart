import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:forui/forui.dart';

import '../../../../blocs/settings/iptv_provider.dart';

class AddProvider extends StatefulWidget {
  final XmltvIptvProvider provider;
  final FutureOr<void> Function(IptvProvider provider) onSave;
  const AddProvider({super.key, required this.provider, required this.onSave});

  @override
  State<AddProvider> createState() => _AddProviderState();
}

class _AddProviderState extends State<AddProvider> with TickerProviderStateMixin {
  late final GlobalKey<FormState> _formKey;
  late final FTimeFieldController _timePickerController;
  late final TextEditingController _nameController;
  late final TextEditingController _urlController;
  bool isValid = false;
  bool isLoading = false;

  @override
  void initState() {
    final initialName = widget.provider.name;
    final initialUrl = widget.provider.url;
    final initialEpgExpiration = FTime(
      widget.provider.epgExpiration.inHours % 24,
      widget.provider.epgExpiration.inMinutes % 60,
    );
    _formKey = GlobalKey<FormState>();
    _nameController = TextEditingController(text: initialName);
    _urlController = TextEditingController(text: initialUrl);
    _timePickerController = FTimeFieldController(vsync: this, initialTime: initialEpgExpiration);
    super.initState();
  }

  @override
  void dispose() {
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
            FTextField(controller: _nameController, label: Text('Name')),
            SizedBox(height: 16),

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

            SizedBox(height: 16),
            FButton(
              prefix: isLoading ? const FCircularProgress() : null,
              onPress: isValid && !isLoading
                  ? () async {
                      if (_formKey.currentState?.validate() ?? false) {
                        final provider = widget.provider.copyWith(
                          name: _nameController.text,
                          url: _urlController.text,
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
          ],
        ),
      ),
    );
  }
}
