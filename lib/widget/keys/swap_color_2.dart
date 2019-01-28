import 'package:flutter/material.dart';
import 'package:learn_flutter/widget/keys/stateful_colorful_tile.dart';

class SwapColorDemo2 extends StatefulWidget {
  @override
  _SwapColorDemo1State createState() => _SwapColorDemo1State();
}

class _SwapColorDemo1State extends State<SwapColorDemo2> {
  List<Widget> widgets;

  @override
  void initState() {
    super.initState();
    widgets = [
      StatefulColorfulTile(),
      StatefulColorfulTile(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful_without_key'),
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
      print("swap");
      widgets.insert(1, widgets.removeAt(0));
    });
  }
}
