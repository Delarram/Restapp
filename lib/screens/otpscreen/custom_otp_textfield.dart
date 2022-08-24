import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResuableTextFieldOtp extends StatelessWidget {
  final double height;
  final double width;
  final Color? color;
  final String? hintText;
  final Function? onChange;

  const ResuableTextFieldOtp(
      {Key? key,
        required this.height,
        required this.width,
        this.color,
        this.hintText, this.onChange})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(15.r))
      ),
      child: TextFormField(
        onChanged: (value){
          onChange!(value);
          if(value.length==1){
            FocusScope.of(context).nextFocus();
          }
        },
        cursorColor: const Color(0xff333333),
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
        decoration: InputDecoration(
          border: InputBorder.none,
          fillColor: Colors.grey[100],
          labelStyle: const TextStyle(color: Color(0xff)),
          hintText: hintText,
          contentPadding: EdgeInsets.all(20.r),
          hintStyle: const TextStyle(color: Color(0xffBDBDBD)),
        ),
      ),
    );
  }
}
