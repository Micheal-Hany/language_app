import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({
    this.text,
    this.color,
    this.onTap,
  });
  String? text;
  Color? color;
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(20),
        alignment: Alignment.centerLeft,
        width: size.width * .35,
        height: size.height * .2,
        padding: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10), // Rounded corners
          border: Border.all(
            color: Colors.white54,
            width: 2.0,
          ),
        ),
        child: Center(
          child: Text(
            text!,
            style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.w500,
                letterSpacing: 2),
          ),
        ),
      ),
    );
  }
}
