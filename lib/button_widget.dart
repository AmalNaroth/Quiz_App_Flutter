import 'package:flutter/material.dart';

class CustomElivatedButton extends StatelessWidget {
  CustomElivatedButton(this.text, {super.key, this.callTheFunction});

  String text;

  final void Function()? callTheFunction;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 40),
        backgroundColor: Colors.purple,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20),),
        )
      ),
      onPressed: callTheFunction,
      child: Text(text,textAlign: TextAlign.center,),
    );
  }
}
