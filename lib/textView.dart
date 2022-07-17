import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import './screens/preview/miniPreview.dart';
import 'themes.dart';

class textViewProto extends StatefulWidget {
  textViewProto({Key? key}) : super(key: key);
  String content = "A line of text";
  double fontSize = 24.0;
  Color textColor = Colors.black;
  Color backgroundColor = Colors.white;

  @override
  State<textViewProto> createState() => _textViewProtoState();
}

class _textViewProtoState extends State<textViewProto> {
  final myController = TextEditingController(text: "A line of text");

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

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
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              minPreview(
                render: textView(),
                backgroundColor: widget.backgroundColor,
              ),
              /*
                Content of the preview:
              */
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                child: TextFormField(
                  onChanged: (text) {
                    setState(() {
                      widget.content = myController.text;
                    });
                  },
                  controller: myController,
                  style: const TextStyle(fontSize: 18.0),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Content",
                  ),
                ),
              ),
              /*
                Font Size of the preview
              */
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                child: Column(
                  children: [
                    label(content: "Font Size:"),
                    Slider(
                      label: "${widget.fontSize}",
                      value: widget.fontSize,
                      onChanged: (double value) {
                        setState(() {
                          widget.fontSize = value;
                        });
                      },
                      min: 0.0,
                      max: 72.0,
                      divisions: 72,
                    ),
                  ],
                ),
              ),
              /*
                Font Color of the preview
              */
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(height: 12.0),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.cyan,
                        textStyle: const TextStyle(fontSize: 24)),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text("Choose a colour:"),
                              content: SingleChildScrollView(
                                child: ColorPicker(
                                  pickerColor: widget.textColor,
                                  onColorChanged: ((value) {
                                    setState(() {
                                      widget.textColor = value;
                                    });
                                  }),
                                ),
                              ),
                            );
                          });
                    },
                    child: const Text("Font Color"),
                  ),
                  /*
                    Preview Background Color
                  */
                  const SizedBox(height: 12.0),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.cyan,
                        textStyle: const TextStyle(fontSize: 24)),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text("Choose a colour:"),
                              content: SingleChildScrollView(
                                child: ColorPicker(
                                  pickerColor: widget.backgroundColor,
                                  onColorChanged: ((value) {
                                    setState(() {
                                      widget.backgroundColor = value;
                                    });
                                  }),
                                ),
                              ),
                            );
                          });
                    },
                    child: const Text("Background Color"),
                  ),
                  /*
                    Font Styles
                  */
                ],
              )
            ],
          ),
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

  Widget label({required String content}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            content,
            style: const TextStyle(
              fontSize: 18.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
