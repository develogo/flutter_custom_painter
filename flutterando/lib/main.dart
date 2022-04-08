import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutterando',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutterando'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: size.width,
              height: size.width,
              child: CustomPaint(
                painter: Flutterando(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Flutterando extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path0 = Path();
    path0.moveTo(size.width * 0.0375, size.height * 0.5);
    path0.lineTo(size.width * 0.1625, size.height * 0.625);
    path0.lineTo(size.width * 0.65, size.height * 0.15);
    path0.lineTo(size.width * 0.525, size.height * 0.025);
    path0.lineTo(size.width * 0.0375, size.height * 0.5);
    path0.close();

    canvas.drawPath(path0, paint0);

    Paint paint1 = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path1 = Path();
    path1.moveTo(size.width * 0.8578125, size.height * 0.3974945);
    path1.cubicTo(
        size.width * 0.8982, size.height * 0.3978125, size.width * 0.9600875, size.height * 0.426, size.width * 0.960318, size.height * 0.5);
    path1.cubicTo(
        size.width * 0.9600875, size.height * 0.540425, size.width * 0.9299, size.height * 0.602275, size.width * 0.8578125, size.height * 0.6025055);
    path1.cubicTo(
        size.width * 0.8173875, size.height * 0.602275, size.width * 0.755525, size.height * 0.5720875, size.width * 0.755307, size.height * 0.5);
    path1.cubicTo(size.width * 0.755525, size.height * 0.4595625, size.width * 0.7858, size.height * 0.3978125, size.width * 0.8578125,
        size.height * 0.3974945);
    path1.close();

    canvas.drawPath(path1, paint1);

    Paint paint2 = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path2 = Path();
    path2.moveTo(size.width * 0.2375, size.height * 0.7);
    path2.lineTo(size.width * 0.375, size.height * 0.8375);
    path2.lineTo(size.width * 0.6875, size.height * 0.5125);
    path2.lineTo(size.width * 0.5625, size.height * 0.385);
    path2.lineTo(size.width * 0.2375, size.height * 0.7);
    path2.close();

    canvas.drawPath(path2, paint2);

    Paint paint3 = Paint()
      ..color = Colors.blue.shade900
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path3 = Path();
    path3.moveTo(size.width * 0.375, size.height * 0.8375);
    path3.lineTo(size.width * 0.525, size.height * 0.9875);
    path3.lineTo(size.width * 0.7125, size.height * 0.7875);
    path3.lineTo(size.width * 0.565, size.height * 0.64);
    path3.lineTo(size.width * 0.375, size.height * 0.8375);
    path3.close();

    canvas.drawPath(path3, paint3);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
