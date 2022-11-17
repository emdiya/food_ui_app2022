import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final Widget? icon;
  final void Function()? onPressed;
  final Color? bacgroundColor;
  final double? radius;
  final Color? borderColor;
  final EdgeInsets? margin;
  final double? elevation;
  const CustomIconButton({
    Key? key,
    @required this.icon,
    @required this.onPressed,
    this.bacgroundColor = Colors.white70,
    this.radius = 8,
    this.borderColor = Colors.transparent,
    this.margin,
    this.elevation = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: bacgroundColor,
      elevation: elevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(width: 0.2, color: bacgroundColor!),
      ),
      child: InkWell(
        onTap: onPressed ?? () {},
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: icon,
        ),
      ),
    );
  }
}
