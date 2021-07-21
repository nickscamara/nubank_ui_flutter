import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Key? key;

  final double? width;
  final double? height;

  final Widget? label;
  final Color? color;

  final Function()? onTap;
  final ShapeBorder? shape;

  final Widget? icon;
  final AlignmentGeometry? alignment;
  final double? borderRadius;

  CustomButton({
    this.key,
    required this.label,
    this.width,
    this.height,
    this.color,
    this.onTap,
    this.shape,
    this.icon,
    this.alignment,
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: width ?? 88.0,
      height: height ?? 50.0,
      child: ElevatedButton.icon(
        label: label!,
        icon: icon ??
            Container(
              width: 0,
            ),
        style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            alignment: alignment ?? Alignment.center,
            padding: MaterialStateProperty.all(EdgeInsets.only(left:12.5,right: 15,top: 12.5,bottom: 12.5)),
            backgroundColor: MaterialStateProperty.all(color),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius ?? 25)),
            )),
        onPressed: onTap,
      ),
    );
  }
}
