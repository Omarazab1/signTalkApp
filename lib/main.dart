import 'dart:js';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:sign_talk_app/constants.dart';
import 'package:sign_talk_app/core/utils/AppRouter.dart';

void main() {
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