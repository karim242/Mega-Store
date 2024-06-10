import 'package:flutter/material.dart';

class ReviewTextField extends StatelessWidget {
  const ReviewTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 343,
      height: 160,
      child: TextField(
        maxLines: 5,
        decoration: InputDecoration(
          enabledBorder: enabledBorder(),
          focusedBorder: foucsborderBuilder(),
          hintText: 'Write your review here',
        ),
      ),
    );
  }

  OutlineInputBorder enabledBorder() {
    return OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            width: 1.5,
            color: Color(0xffEBF0FF),
          ),
        );
  }
        OutlineInputBorder foucsborderBuilder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: const BorderSide(
                width: 1.5,

        color: Color(0xff40BFFF),
      ),
    );
  }
}
