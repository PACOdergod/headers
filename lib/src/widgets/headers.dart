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
      height: double.infinity,
      width: double.infinity,
      //color: Color(0xff615AAB),
      child: CustomPaint(
        painter: _HeaderDiagonalPainter(),
      ),
    );
  }
}

class _HeaderDiagonalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    //propiedades

    paint.color = Color(0xff615AAB);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 2;

    final path = new Path();

    // dibujar con el path y el lapiz
    path.moveTo(0, size.height * 0.35);
    path.lineTo(size.width, size.height * 0.3);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.lineTo(0, size.height * 0.5);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderTriangular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: Color(0xff615AAB),
      child: CustomPaint(
        painter: _HeaderTriangularPainter(),
      ),
    );
  }
}

class _HeaderTriangularPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    //propiedades

    paint.color = Color(0xff615AAB);
    paint.style = PaintingStyle.fill; // .stroke  .fill
    paint.strokeWidth = 2;

    final path = new Path();

    // dibujar con el path y el lapiz
    //path.moveTo(0, size.height * 0.35);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    //path.lineTo(0, size.height * 0.5);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderPico extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: Color(0xff615AAB),
      child: CustomPaint(
        painter: _HeaderPicoPainter(),
      ),
    );
  }
}

class _HeaderPicoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    //propiedades

    paint.color = Color(0xff615AAB);
    paint.style = PaintingStyle.fill; // .stroke  .fill
    paint.strokeWidth = 2;

    final path = new Path();

    // dibujar con el path y el lapiz
    //path.moveTo(0, size.height * 0.35);
    path.lineTo(0, size.height * 0.3);
    path.lineTo(size.width * 0.5, size.height * 0.4);
    path.lineTo(size.width, size.height * 0.3);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    //path.lineTo(0, size.height * 0.5);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderCircular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: Color(0xff615AAB),
      child: CustomPaint(
        painter: _HeaderCircularPainter(),
      ),
    );
  }
}

class _HeaderCircularPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    //propiedades

    paint.color = Color(0xff615AAB);
    paint.style = PaintingStyle.fill; // .stroke  .fill
    paint.strokeWidth = 10;

    final path = new Path();

    // dibujar con el path y el lapiz
    //path.moveTo(0, size.height * 0.35);
    path.lineTo(0, size.height * 0.3);
    path.quadraticBezierTo(
        size.width * 0.5, size.height * 0.5, size.width, size.height * 0.3);
    path.lineTo(size.width, 0);
    // path.lineTo(size.width, size.height * 0.3);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderCircular2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: Color(0xff615AAB),
      child: CustomPaint(
        painter: _HeaderCircular2Painter(),
      ),
    );
  }
}

class _HeaderCircular2Painter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    //propiedades

    paint.color = Color(0xff615AAB);
    paint.style = PaintingStyle.fill; // .stroke  .fill
    paint.strokeWidth = 2;

    final path = new Path();

    // dibujar con el path y el lapiz
    //path.moveTo(0, size.height * 0.35);
    path.lineTo(0, size.height * 0.4);

    path.quadraticBezierTo(
        //punto a atravezar
        size.width * 0.25,
        size.height * 0.5,
        //punto final
        size.width * 0.5,
        size.height * 0.4);

    path.quadraticBezierTo(
        //punto a atravezar
        size.width * 0.75,
        size.height * 0.3,
        //punto final
        size.width,
        size.height * 0.4);

    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderCircularGradiente extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: Color(0xff615AAB),
      child: CustomPaint(
        painter: _HeaderCircularGradientePainter(),
      ),
    );
  }
}

class _HeaderCircularGradientePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect = Rect.fromCircle(
      center: Offset(150.0, 130),
      radius: 180.0
    );

    final gradiente = new LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: <Color>[
        Color(0xff6D05E8),
        Color(0xffC012FF),
        Color(0xff6D05F4),
      ],
      stops: [
        0.2,
        0.5,
        1.0
      ]
    );

    final paint = Paint()..shader = gradiente.createShader(rect);
    //propiedades

    //paint.color = Color(0xff615AAB);
    //paint.color = Colors.red;
    paint.style = PaintingStyle.fill; // .stroke  .fill
    paint.strokeWidth = 2;

    final path = new Path();

    // dibujar con el path y el lapiz
    //path.moveTo(0, size.height * 0.35);
    path.lineTo(0, size.height * 0.4);

    path.quadraticBezierTo(
        //punto a atravezar
        size.width * 0.25,
        size.height * 0.5,
        //punto final
        size.width * 0.5,
        size.height * 0.4);

    path.quadraticBezierTo(
        //punto a atravezar
        size.width * 0.75,
        size.height * 0.3,
        //punto final
        size.width,
        size.height * 0.4);

    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
