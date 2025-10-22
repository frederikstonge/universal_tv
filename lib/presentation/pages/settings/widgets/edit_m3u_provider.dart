import 'dart:async';
import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:forui/forui.dart';

import '../../../../blocs/settings/iptv_provider.dart';

class EditM3uProvider extends StatefulWidget {
  final M3uIptvProvider provider;
  final FutureOr<void> Function(IptvProvider provider) onSave;
  final FutureOr<void> Function(IptvProvider provider) onDelete;
  const EditM3uProvider({super.key, required this.provider, required this.onSave, required this.onDelete});

  @override
  State<EditM3uProvider> createState() => _EditM3uProviderState();
}

class _EditM3uProviderState extends State<EditM3uProvider> with TickerProviderStateMixin {
  late final GlobalKey<FormState> _formKey;
  late final TextEditingController _nameController;
  late final TextEditingController _urlsController;
  bool isValid = false;
  bool isLoading = false;

  @override
  void initState() {
    final initialName = widget.provider.name;
    final initialUrls = widget.provider.urls.join('\n');
    _formKey = GlobalKey<FormState>();
    _nameController = TextEditingController(text: initialName);
    _urlsController = TextEditingController(text: initialUrls);
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _urlsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FCard(
      title: Text('Edit M3U provider'),
      subtitle: Text('Edit an M3U provider'),
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
            SizedBox(height: 16),
            FButton(
              prefix: isLoading ? const FCircularProgress() : null,
              onPress: isValid && !isLoading
                  ? () async {
                      if (_formKey.currentState?.validate() ?? false) {
                        final provider = widget.provider.copyWith(
                          name: _nameController.text,
                          urls: LineSplitter().convert(_urlsController.text),
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
              child: Text('Save provider'),
            ),
            SizedBox(height: 16),
            FButton(
              style: FButtonStyle.destructive(),
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
