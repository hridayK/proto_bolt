import 'package:flutter/material.dart';
import 'package:proto_bolt/textView.dart';

class mainPreview extends StatefulWidget {
  const mainPreview(
      {Key? key, required this.render, required this.backgroundColor})
      : super(key: key);

  final Widget render;
  final Color backgroundColor;

  @override
  State<mainPreview> createState() => _mainPreviewState();
}

class _mainPreviewState extends State<mainPreview> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.backgroundColor,
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.arrow_back_rounded,
                    color: widget.backgroundColor != Colors.white
                        ? Colors.white
                        : Colors.black,
                    size: 34,
                  ),
                ),
              )
            ],
          ),
          Center(
            child: widget.render,
          ),
        ],
      ),
    );
  }
}
