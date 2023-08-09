import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuTextFormFieldWidget extends StatelessWidget {
  MenuTextFormFieldWidget({
    required this.hintText,
    this.controller,
    super.key,
  });
  String hintText;
  TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.0.w, right: 20.w),
      child: TextFormField(
       controller: controller,
        decoration: InputDecoration(
            hintText: hintText,
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            )),
      ),
    );
  }
}