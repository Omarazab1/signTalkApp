import 'dart:js';

import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sign_talk_app/constants.dart';
import 'package:sign_talk_app/core/utils/AppRouter.dart';
import 'package:sign_talk_app/firebase_options.dart';

void main() async {
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
     options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
      DevicePreview(
        enabled: true,
        builder:(context)=> const SignTalkApp()));
}

class SignTalkApp extends StatelessWidget {
  const SignTalkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
      ),
    );
  }
}
//asfdagdg