import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors, must_be_immutable
class BackgroundWidget extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  BackgroundWidget(this.design);
  // ignore: prefer_typing_uninitialized_variables
  var design;
  @override
  _BackgroundWidgetState createState() => _BackgroundWidgetState();
}

class _BackgroundWidgetState extends State<BackgroundWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/background.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: widget.design,
    );
  }
}
