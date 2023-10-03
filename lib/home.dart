// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<int> listItem = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(' New Demo'),
          backgroundColor: Colors.red,
        ),
        body: SizedBox(
            width: double.infinity,
            child: ListView.builder(
                padding: const EdgeInsets.all(10.0),
                itemCount: listItem.length,
                itemBuilder: (BuildContext context, int index) {
                  return Dismissible(
                    key: const ValueKey(123),
                    onDismissed: (direction) {
                      print(direction);
                    },
                    
                    child: Card(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 4.0),
                      child: ListTile(
                        title: Text('Count =>${listItem[index]}'),
                        subtitle: const Text('New TAsk'),
                        leading: const Icon(Icons.done),
                        trailing: const Icon(Icons.close),
                      ),
                    ),
                  );
                })),
      ),
      // body: Center(
      //   child: IconButton(
      //     icon: Icon(Icons.add),
      //     color: Colors.amber,
      //     splashColor: Colors.red,
      //     onPressed: () => {},
      //   ),
      // ),
      // body: Center(
      //   child: ElevatedButton(
      //     style: ElevatedButton.styleFrom(
      //         primary: Colors.red, onPrimary: Colors.amber, elevation: 10),
      //     onPressed: () => {},
      //     child: Icon(Icons.add),
      //   ),
      // ),
      // body: Center(
      //   child: Text(
      //     'Programming Language\n'
      //     'Programming Language\n'
      //     'Programming Language\n'
      //     'Programming Language\n'
      //     'Programming Language\n',
      //     maxLines: 3,
      //   ),
      //   // child: Row(
      //   //   mainAxisAlignment: MainAxisAlignment.center,
      //   //   children: [
      //   //     const Text('Kishore kumar'),
      //   //     TextButton(
      //   //         style:
      //   //             TextButton.styleFrom(textStyle: TextStyle(fontSize: 20)),
      //   //         onPressed: () => Toast.show('welcome',
      //   //             duration: Toast.lengthLong, gravity: Toast.top),
      //   //         child: Text('Click me'))
      //   //   ],
      //   // ),
      // ),
    );
  }
}
