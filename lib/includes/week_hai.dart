import 'package:flutter/material.dart';

class WeekHai extends StatelessWidget {
  const WeekHai({super.key});

  @override
  Widget build(BuildContext context) => Container(
      color: Color.fromARGB(255, 1, 130, 87),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          height: 100,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: Image.asset("images/diamond.png").image),
              color: Colors.blue,
              shape: BoxShape.circle),
        ),
        const Text("angela wu",
            style: TextStyle(
                fontSize: 40, fontFamily: "Pacifico", color: Colors.white)),
        const Text("FLUTTER DEVELOPER",
            style: TextStyle(
                fontSize: 20,
                color: Colors.white54,
                fontWeight: FontWeight.bold)),
        const Divider(
          indent: 140,
          endIndent: 140,
          color: Colors.white54,
        ),
        Card(
          margin: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 25,
          ),
          color: Colors.white,
          child: ListTile(
            leading: Icon(
              Icons.phone,
              color: Colors.green[500],
            ),
            title: const Text('(123) 456-7890'),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Card(
            margin: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 25,
            ),
            color: Colors.white,
            child: ListTile(
              leading: Icon(
                Icons.email,
                color: Colors.green[500],
              ),
              title: const Text('5RyZ8@example.com'),
            ))
      ]));
}
