import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_secure_storage_x/flutter_secure_storage_x.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:media_kit/media_kit.dart';
import 'package:path_provider/path_provider.dart';

import 'bootstrapper.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MediaKit.ensureInitialized();

  final storage = FlutterSecureStorage(aOptions: const AndroidOptions(dataStore: true));

  const passwordKey = 'HydratedStoragePassword';
  final hasPassword = await storage.containsKey(key: passwordKey);

  final password = hasPassword
      ? await storage.read(key: passwordKey)
      : base64Url.encode(List<int>.generate(32, (i) => i + DateTime.now().millisecond));

  if (!hasPassword && password != null) {
    await storage.write(key: passwordKey, value: password);
  }

  final storagePath = await getApplicationDocumentsDirectory();

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: HydratedStorageDirectory(storagePath.path),
    encryptionCipher: password != null ? HydratedAesCipher(sha256.convert(utf8.encode(password)).bytes) : null,
  );

  runApp(const Bootstrapper());
}
