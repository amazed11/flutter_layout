import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, this.title, this.ontap}) : super(key: key);
  final String? title;
  final Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.80,
        height: 60.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              50.0,
            ),
            gradient: LinearGradient(colors: [
              Colors.red,
              Colors.redAccent,
            ])),
        child: Center(
          child: Text(
            title!,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            ),
          ),
        ),
      ),
    );
  }
}
