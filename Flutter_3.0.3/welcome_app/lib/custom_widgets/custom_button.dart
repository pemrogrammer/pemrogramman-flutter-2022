import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function() onTap;
  final IconData icon;
  final Color? color, colorIcon;

  const CustomButton(
      {Key? key,
      required this.onTap,
      required this.icon,
      this.color,
      this.colorIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.red,
      onTap: onTap,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: color ?? Colors.amber,
          borderRadius: BorderRadius.circular(70),
        ),
        child: _buildCenter(),
      ),
    );
  }

  Center _buildCenter() {
    return Center(
      child: Icon(
        icon,
        size: 30,
        color: colorIcon ?? Colors.white,
      ),
    );
  }
}
