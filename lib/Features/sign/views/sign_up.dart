import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sign_talk_app/Features/widgets/CustomButtom.dart';
import 'package:sign_talk_app/Features/widgets/generator-circle.dart';
import 'package:sign_talk_app/core/utils/AppRouter.dart';
import 'dart:ui';
import 'package:sign_talk_app/core/utils/assets.dart';
import 'package:sign_talk_app/core/utils/styles.dart';
class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 54,
            ),
            Image.asset(
              AssetsData.logo,
              height: 180,
            ),
            const SizedBox(
              height: 56,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
               const Positioned(
                  left: 280,
                  top: -40,
                  //generator circle//===============
                  child: GeneratorCircle(width: 180, height: 180)
                  //generator circle//===============
                  /*Image.asset(
                    "assets/images/2.PNG",
                  ),*/
                ),
               const Positioned(
                  left: 145,
                  top: -30,
                  child: GeneratorCircle(width: 60, height: 60),
                ),
               const Positioned(
                  left: 80,
                  top: 320,
                  child: GeneratorCircle(width: 120, height: 120),
                ),
                Center(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                      child: Container(
                        padding: const EdgeInsets.all(20.0),
                        width: 300,
                        /* decoration: ShapeDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment(0.85, -0.76),
                            end: Alignment(-0.85, 0.76),
                            colors: [Color(0x66E7E7E7), Color(0x4C8DC9CD)],
                          ),
                          shape: RoundedRectangleBorder(
                            side:
                                const BorderSide(width: 1, color: Colors.white),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),*/
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Text(
                              'Sign Up',
                              style: Styles.style30,
                            ),
                            const SizedBox(height: 20.0),
                            const TextField(
                              decoration: InputDecoration(
                                labelText: 'Full Name',
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            const TextField(
                              decoration: InputDecoration(
                                labelText: 'E-mail or Mobile Number',
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            const TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: 'Password',
                              ),
                            ),
                            const SizedBox(height: 22.0),
                            Text.rich(
                              style: Styles.style10,
                              TextSpan(
                                children: [
                                  const TextSpan(
                                    text: "By Signing up, You’re agree to our ",
                                  ),
                                  TextSpan(
                                    style: const TextStyle(
                                      color: Color(0xFF14DDEF),
                                    ),
                                    text: " Terms & Conditions ",
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () async {
                                        //ontap here make action
                                      },
                                  ),
                                  const TextSpan(
                                    text: " and ",
                                  ),
                                  TextSpan(
                                    style: const TextStyle(
                                      color: Color(0xFF14DDEF),
                                    ),
                                    text: " Privacy Policy",
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () async {
                                        //ontap here make action
                                      },
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20.0),
                            GestureDetector(
                              onTap: (){
                                GoRouter.of(context).push(AppRouter.kSignInPage);
                              },
                                child: const CustomButton(text: 'Continue')),
                            const SizedBox(
                              height: 5,
                            ),
                             Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                 Text(
                                  'Joined Us Before ?',
                                  style: Styles.style10,
                                ),
                                const SizedBox(
                                  width: 3,
                                ),
                                GestureDetector(
                                  onTap: (){
                                    GoRouter.of(context).push(AppRouter.kSignInPage);
                                  },
                                  child: Text(
                                    'Sign In',
                                    style: Styles.style10s,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}






