import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sign_talk_app/core/utils/AppRouter.dart';
class CustomButton extends  StatelessWidget {
  final String text;
  const CustomButton({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 227,
        height: 37,
        decoration: ShapeDecoration(
          color: const Color(0xFF4CB6BD),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6)),
        ),
        child: Align(
          alignment: Alignment.center,
          child:  Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'Lato',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
        ),
      ),
    );
  }
}
