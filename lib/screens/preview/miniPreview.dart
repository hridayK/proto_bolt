import 'package:flutter/material.dart';
import 'package:proto_bolt/screens/preview/mainPreview.dart';

class minPreview extends StatefulWidget {
  minPreview(
      {Key? key, required this.render, this.backgroundColor = Colors.white})
      : super(key: key);
  final Widget render;
  Color backgroundColor;
  @override
  State<minPreview> createState() => _minPreviewState();
}

class _minPreviewState extends State<minPreview> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.2,
      color: widget.backgroundColor,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => mainPreview(
                              render: widget.render,
                              backgroundColor: widget.backgroundColor)),
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.fullscreen,
                      color: widget.backgroundColor != Colors.white
                          ? Colors.white
                          : Colors.black,
                      size: 30,
                    ),
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [widget.render],
            )
          ],
        ),
      ),
    );
  }
}
