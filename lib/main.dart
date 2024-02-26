import 'package:flutter/material.dart';
import 'package:sign_talk_app/constants.dart';
import 'package:sign_talk_app/core/utils/AppRouter.dart';

void main()
{
  runApp(const SignTalkApp());
}

class  SignTalkApp extends StatelessWidget {
  const SignTalkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: kPrimaryColor ,
      ),

    );
  }
}

