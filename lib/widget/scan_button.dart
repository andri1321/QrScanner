// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class ScanButton extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0,
      child: const Icon(Icons.filter_center_focus),
      onPressed: (){}
    );
  }
}