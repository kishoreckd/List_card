import 'package:flutter/material.dart';

class MyBottom extends StatefulWidget {
  const MyBottom({super.key});

  @override
  State<MyBottom> createState() => _MyBottomState();
}

class _MyBottomState extends State<MyBottom> {
  var scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: scaffoldkey,
        appBar: AppBar(
          title: const Text(' New Demo'),
          backgroundColor: Colors.red,
        ),
        body: Center(
            child: ElevatedButton(
          child: const Text('Show bottom sheet'),
          onPressed: () {
            scaffoldkey.currentState?.showBottomSheet(
              (context) => Container(
                  height: 300.0,
                  color: Colors.amber,
                  child: Container(
                    height: 200.0,
                    width: 500.00,
                    child: ElevatedButton(
                      child: Text('Close button'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red[300]),
                    ),
                  )),
            );
          },
        )),
      ),
    );
  }
}
