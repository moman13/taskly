import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage();
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  late double _deviceHeight, _deviceWidth;
  _HomePageState();
  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: _deviceHeight * 0.15,
        title: const Text(
          "Taskly !",
          textAlign: TextAlign.right,
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: _tasksList(),
      floatingActionButton: _addTaskButton(),
    );
  }

  Widget _tasksList() {
    return ListView(
      children: [
        ListTile(
          title: const Text(
            "Go To Gym",
            style: TextStyle(decoration: TextDecoration.lineThrough),
          ),
          subtitle: Text(DateTime.now().toString()),
          trailing: const Icon(
            Icons.check_box_outline_blank,
            color: Colors.red,
          ),
        ),
        ListTile(
          title: const Text(
            "Make Flutter App",
            style: TextStyle(decoration: TextDecoration.lineThrough),
          ),
          subtitle: Text(DateTime.now().toString()),
          trailing: const Icon(
            Icons.check_box_outline_blank,
            color: Colors.red,
          ),
        ),
      ],
    );
  }

  Widget _addTaskButton() {
    return FloatingActionButton(child: const Icon(Icons.add), onPressed: () {});
  }
}
