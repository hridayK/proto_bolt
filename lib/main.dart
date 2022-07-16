import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
      title: "proto-bolt",
      theme: ThemeData(
        colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: Colors.amber,
          onPrimary: Colors.white,
          secondary: Colors.deepPurple,
          onSecondary: Colors.white,
          background: Colors.black,
          onBackground: Colors.white,
          surface: Colors.deepPurpleAccent,
          onSurface: Colors.white,
          error: Colors.amber,
          onError: Colors.white,
        ),
      ),
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
            onPressed: () {},
            style: ElevatedButton.styleFrom(primary: Colors.blueAccent),
            child: const Text("TextView", style: TextStyle(fontSize: 30)),
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
