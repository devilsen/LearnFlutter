import 'package:flutter/material.dart';
import 'package:learn_flutter/widget/keys/stateless_colorful_tile.dart';

class SwapColorDemo1 extends StatefulWidget {
  @override
  _SwapColorDemo1State createState() => _SwapColorDemo1State();
}

class _SwapColorDemo1State extends State<SwapColorDemo1> {
  List<Widget> widgets;

  @override
  void initState() {
    super.initState();
    widgets = [
      StatelessColorfulTile(),
      StatelessColorfulTile()
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateless'),
      ),
      body: SafeArea(
        child: Row(
          children: widgets,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.account_box),
        onPressed: swapTile,
      ),
    );
  }

  swapTile() {
    setState(() {
      widgets.insert(1, widgets.removeAt(0));
    });
  }
}
