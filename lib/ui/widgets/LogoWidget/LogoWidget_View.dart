import 'package:flutter/material.dart';

class LogoWidgetView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      padding: EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Image.asset('assets/logo_bg.png'),
          Positioned(
            top: 64.0,
            bottom: 0.0,
            left: 48.0,
            right: 32.0,
            child: Image.asset('assets/logo.png'),
          ),
        ],
      ),
    );
  }
}
