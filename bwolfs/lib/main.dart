import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bwolf',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Bwolf'),
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
                painter: Bwolf(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Bwolf extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint wolfblue = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4;

    Path wolf1 = Path();
    wolf1.moveTo(size.width * 0.25, size.height * 0.2);
    wolf1.lineTo(size.width * 0.250, size.height * 0.5);
    wolf1.lineTo(size.width * 0.2, size.height * 0.5625);
    wolf1.lineTo(size.width * 0.2375, size.height * 0.625);
    wolf1.lineTo(size.width * 0.350, size.height * 0.6625);
    wolf1.lineTo(size.width * 0.4, size.height * 0.8);
    wolf1.lineTo(size.width * 0.5, size.height * 0.8);
    wolf1.lineTo(size.width * 0.5, size.height * 0.2875);
    wolf1.lineTo(size.width * 0.425, size.height * 0.3125);
    wolf1.lineTo(size.width * 0.250, size.height * 0.2);
    wolf1.close();

    canvas.drawPath(wolf1, wolfblue);

    Paint wolfblack = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4;

    Path wolf2 = Path();
    wolf2.moveTo(size.width * 0.750, size.height * 0.2);
    wolf2.lineTo(size.width * 0.750, size.height * 0.5);
    wolf2.lineTo(size.width * 0.8, size.height * 0.5625);
    wolf2.lineTo(size.width * 0.7625, size.height * 0.625);
    wolf2.lineTo(size.width * 0.650, size.height * 0.6625);
    wolf2.lineTo(size.width * 0.6, size.height * 0.8);
    wolf2.lineTo(size.width * 0.5, size.height * 0.8);
    wolf2.lineTo(size.width * 0.5, size.height * 0.2875);
    wolf2.lineTo(size.width * 0.575, size.height * 0.3125);
    wolf2.lineTo(size.width * 0.750, size.height * 0.2);
    wolf2.close();

    canvas.drawPath(wolf2, wolfblack);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
