import 'package:flutter/material.dart';
import 'package:proto_bolt/textView.dart';
import 'themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Proto-Bolt",
      theme: darkThemeHome(),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Proto-Bolt"),
        centerTitle: true,
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(8.0),
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(primary: Colors.red),
            child: const Text("Button", style: TextStyle(fontSize: 30)),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => textViewProto(),
                  fullscreenDialog: true,
                ),
              );
            },
            style: ElevatedButton.styleFrom(primary: Colors.blueAccent),
            child: const Text("Label", style: TextStyle(fontSize: 30)),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(primary: Colors.green),
            child: const Text(
              "EditText",
              style: TextStyle(fontSize: 30),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(primary: Colors.pinkAccent),
            child: const Text(
              "Form",
              style: TextStyle(fontSize: 30),
            ),
          )
        ],
      ),
    );
  }
}
