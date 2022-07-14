import 'package:flutter/material.dart';

class BorderIcon extends StatelessWidget{
  final Widget child;
  final EdgeInsets padding;
  final double width,height;

  const BorderIcon(
  { Key ? Key,
    required this.padding,
    required this.width,
    required this.height,
    required this.child }) : super(key : Key);
  @override
  Widget build(BuildContext context){
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(150)),
        border: Border.all(width: 2,color: Colors.grey.shade400),
      ),
      padding: padding,
      child: Center(
        child: child,
      ),
    );
  }

}