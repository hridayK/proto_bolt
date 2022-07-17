import 'dart:ffi';

import 'package:flutter/material.dart';
import './screens/preview/miniPreview.dart';
import 'themes.dart';

class textViewProto extends StatefulWidget {
  textViewProto({Key? key}) : super(key: key);
  String content = "lorem ipsum";
  double fontSize = 24.0;
  Color textColor = Colors.black;

  @override
  State<textViewProto> createState() => _textViewProtoState();
}

class _textViewProtoState extends State<textViewProto> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Proto-Bolt TextView",
      theme: darkThemeHome(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("TextView Prototype"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            minPreview(render: textView()),
          ],
        ),
      ),
    );
  }

  Widget textView() {
    return Text(
      widget.content,
      style: TextStyle(color: widget.textColor, fontSize: widget.fontSize),
    );
  }
}
