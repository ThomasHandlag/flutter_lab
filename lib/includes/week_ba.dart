import 'dart:math';

import 'package:flutter/material.dart';

class WeekBa extends StatefulWidget {
  const WeekBa({super.key});
  @override
  State<StatefulWidget> createState() => WeekBaState();
}

class WeekBaState extends State<WeekBa> {
  int _dice1 = 1;
  int _dice0 = 1;

  void _onTap(int id) {
    Random random = Random();
    setState(() {
      id == 1 ? _dice1 = random.nextInt(6) + 1 : _dice0 = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) => Container(
      color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Dice(
            id: 0,
            onTap: (ind) {
              _onTap(ind);
            },
            dice: _dice0,
          ),
          const SizedBox(width: 20),
          Dice(
            id: 1,
            onTap: (ind) {
              _onTap(ind);
            },
            dice: _dice1,
          )
        ],
      ));
}

class Dice extends StatelessWidget {
  const Dice({super.key, this.dice = 1, required this.onTap, required this.id});

  final int? dice;
  final Function(int id) onTap;
  final int id;

  @override
  Widget build(BuildContext context) => Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white, width: 5),
      ),
      child: Material(
          color: Colors.red,
          borderRadius: BorderRadius.circular(20),
          child: InkWell(
              borderRadius: BorderRadius.circular(20),
              focusColor: Colors.red.shade100,
              onTap: () {
                onTap(id);
              },
              child: CustomPaint(
                painter: DicePainter(dice!),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: MediaQuery.of(context).size.width * 0.3,
                ),
              ))));
}

class DicePainter extends CustomPainter {
  DicePainter(this.dice);
  final int dice;

  @override
  void paint(Canvas canvas, Size size) {
    double centerX = size.width / 2;
    double centerY = size.height / 2;
    double offset = size.width / 4;

    List<Offset> dotPositions = [];

    switch (dice) {
      case 1:
        dotPositions = [Offset(centerX, centerY)];
        break;
      case 2:
        dotPositions = [
          Offset(centerX - offset, centerY - offset),
          Offset(centerX + offset, centerY + offset),
        ];
        break;
      case 3:
        dotPositions = [
          Offset(centerX, centerY),
          Offset(centerX - offset, centerY - offset),
          Offset(centerX + offset, centerY + offset),
        ];
        break;
      case 4:
        dotPositions = [
          Offset(centerX - offset, centerY - offset),
          Offset(centerX + offset, centerY + offset),
          Offset(centerX - offset, centerY + offset),
          Offset(centerX + offset, centerY - offset),
        ];
        break;
      case 5:
        dotPositions = [
          Offset(centerX, centerY),
          Offset(centerX - offset, centerY - offset),
          Offset(centerX + offset, centerY + offset),
          Offset(centerX - offset, centerY + offset),
          Offset(centerX + offset, centerY - offset),
        ];
        break;
      case 6:
        dotPositions = [
          Offset(centerX - offset, centerY - offset),
          Offset(centerX + offset, centerY + offset),
          Offset(centerX - offset, centerY + offset),
          Offset(centerX + offset, centerY - offset),
          Offset(centerX - offset, centerY),
          Offset(centerX + offset, centerY),
        ];
        break;
    }

    // Draw the dots
    Paint dotPaint = Paint()..color = Colors.white;

    for (var position in dotPositions) {
      canvas.drawCircle(position, size.width / 10, dotPaint); // Dot size
    }
  } // paint

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
