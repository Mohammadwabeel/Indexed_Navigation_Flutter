import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Text('page 2'),
              TextField(),
            ],
          ),
        )
    );
  }
}
