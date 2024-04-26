import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hovering/hovering.dart';

import '../config/constants.dart';

class CustomHoverButton extends ConsumerWidget {
  CustomHoverButton(
      {required this.title,
      required this.function,
      required this.color,
      required this.hoverColor,
      this.width,
      this.height,
      this.hoverFontWeight,
      this.borderColor,
      this.hoverTextColor});
  String title;
  Function function;
  Color color;
  Color hoverColor;
  Color? borderColor;
  double? width;
  double? height;
  FontWeight? hoverFontWeight;
  Color? hoverTextColor;
  @override
  Widget build(BuildContext context, WidgetRef widgetRef) {
    return InkWell(
      onTap: () {
        function();
      },
      child: HoverWidget(
        hoverChild: Container(
          height: height ?? 80,
          width: width ?? (screenWidth / 2) / 4,
          color: hoverColor,
          alignment: Alignment.center,
          child: Text(
              title,
              style: TextStyle(
                  color: hoverTextColor ?? Colors.black,
                  fontWeight: hoverFontWeight),
            ),

        ),
        onHover: (event) {},
        child: Container(
          height: height ?? 80,
          width: width ?? (screenWidth / 2) / 4,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: color,
              border: Border.all(
                  color: borderColor ?? Colors.transparent, width: 1)),
          child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
              ),
          ),
        ),
      ),
    );
  }
}
