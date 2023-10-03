// ignore_for_file: avoid_print, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class Mycalc extends StatefulWidget {
  const Mycalc({super.key});

  @override
  State<Mycalc> createState() => _MycalcState();
}

class _MycalcState extends State<Mycalc> {
   List<int> listItem = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];
  var count = 0;

  var textController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    textController = TextEditingController();
    textController.text = '2';
  }

  @override
  void dispose() {
    // TODO: implement dispose
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text(' New Demo'),
            backgroundColor: Colors.red,
          ),
          body: Column(children: [
            TextField(
              autofocus: true,
              controller: textController,
              decoration: InputDecoration(hintText: 'Tabels'),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) => ListTile(
                  title:
                      Text('${(index + 1) * int.parse(textController.text)}'),
                ),
              ),
            )
          ]),
          floatingActionButton: IconButton(
            icon: Icon(Icons.done),
            onPressed: () {
              setState(() {});
              print(textController.text);
            },
          )
          /***Input Field Decorated */
          // body: Center(
          //   child: TextField(
          //     autofocus: true,
          //     controller: textController,
          //     enabled: true,
          //     enableInteractiveSelection: false,
          //     enableSuggestions: false,
          //     keyboardType: TextInputType.emailAddress,
          //     // obscureText: true,
          //     decoration: InputDecoration(
          //         contentPadding: EdgeInsets.all(30.0),
          //         hintText: 'Your name',
          //         // errorText: 'Error',
          //         border: OutlineInputBorder(),
          //         icon: Icon(Icons.person),
          //         labelText: 'Your Name'),
          //   ),
          // ),
          // floatingActionButton: IconButton(
          //   icon: Icon(Icons.add),
          //   onPressed: () {
          //     print(textController.text);
          //   },
          // ),

          /**Set state implemented and Floating action button */
          // body: Center(
          //   child: Text(
          //     '$count',
          //     style: TextStyle(fontSize: 40.0),
          //   ),
          // ),
          // floatingActionButton: FloatingActionButton.extended(
          //   onPressed: () => {
          //     print('pressed'),
          //     /***It targets only when the button pressed */
          //     setState(() {
          //       count++;
          //     })
          //   },
          //   label: Text('Add'),
          //   icon: Icon(Icons.add),
          //   backgroundColor: Colors.red[400],
          //   tooltip: 'Tooltip',
          // )

          /***List card shown using dismissible method */
          //   body: SizedBox(
          //       width: double.infinity,
          //       child: ListView.builder(
          //           padding: const EdgeInsets.all(10.0),
          //           itemCount: listItem.length,
          //           itemBuilder: (BuildContext context, int index) {
          //             return Dismissible(
          //               key: const ValueKey(123),
          //               onDismissed: (direction) {
          //                 print(direction);
          //               },
          //               background: Container(
          //                 color: Colors.red,
          //                 alignment: Alignment.centerRight,
          //                 padding: EdgeInsets.only(right: 20.0),
          //                 child: Icon(
          //                   Icons.delete,
          //                   color: Colors.white,
          //                   size: 40.0,
          //                 ),
          //               ),
          //               child: Card(
          //                 margin: const EdgeInsets.symmetric(
          //                     horizontal: 15.0, vertical: 4.0),
          //                 child: ListTile(
          //                   title: Text('Count =>${listItem[index]}'),
          //                   subtitle: const Text('New TAsk'),
          //                   leading: const Icon(Icons.done),
          //                   trailing: const Icon(Icons.close),
          //                 ),
          //               ),
          //             );
          //           })),
          // ),

          /***Icon button */
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
          ),
    );
  }
}
