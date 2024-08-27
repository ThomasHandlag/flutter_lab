import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MiApp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: "MiApp"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 1, 130, 87),
        body: Center(
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
          ]),
        ));
  }
}
