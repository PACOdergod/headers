import 'package:flutter/material.dart';

class HeaderCuadrado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Color(0xff615AAB),
    );
  }
}

class HeaderBordRedon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        decoration: BoxDecoration(
            color: Color(0xff615AAB),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(80.0),
                bottomRight: Radius.circular(40.0))));
  }
}

class HeaderDiagonal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Color(0xff615AAB),
    );
  }
}
