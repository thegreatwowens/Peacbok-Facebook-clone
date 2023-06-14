import 'package:flutter/material.dart';

Widget Story({story}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 200,
      width: 120,
      color: Colors.black54,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image(
            image: AssetImage(story),
            fit: BoxFit.cover,
          )
        ],
      ),
    ),
  );
}
