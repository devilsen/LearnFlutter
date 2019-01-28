import 'package:flutter/material.dart';
import 'package:learn_flutter/widget/keys/stateful_colorful_tile.dart';

class SwapColorDemo3 extends StatefulWidget {
  @override
  _SwapColorDemo1State createState() => _SwapColorDemo1State();
}

class _SwapColorDemo1State extends State<SwapColorDemo3> {
  List<Widget> widgets;

  @override
  void initState() {
    super.initState();
    widgets = [
      StatefulColorfulTile(key: UniqueKey()),
      StatefulColorfulTile(key: UniqueKey()),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful_with_key'),
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
