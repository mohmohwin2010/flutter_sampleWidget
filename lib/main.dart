import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // primarySwatch: Colors.red,
          primarySwatch: Colors.blue,
          textTheme: const TextTheme(
              headlineLarge:
                  TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
              headlineSmall:
                  TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
              bodyLarge: TextStyle(
                  fontSize: 40.0,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.bold),
              bodySmall: TextStyle(
                fontSize: 10.0,
                fontFamily: 'Hind',
              ))),
      home: const ExampleWidget(),
    );
  }
}

class ExampleWidget extends StatefulWidget {
  const ExampleWidget({super.key});

  @override
  State<ExampleWidget> createState() => _ExampleWidgetState();
}

class _ExampleWidgetState extends State<ExampleWidget> {
  var selected = false;
  var items = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20
  ];
  final List<String> entries = <String>['A', 'B', 'C'];
  // final List<String> entries = <String>[];
  final List<int> colorCodes = <int>[600, 500, 100];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Example")),

      //pure container start
      // body: Container(
      //   padding: const EdgeInsets.only(top: 8, left: 8),
      //   margin: const EdgeInsets.all(12),
      //   decoration: const BoxDecoration(
      //       color: Colors.green,
      //       border: Border(
      //         top: BorderSide(
      //             width: 1.0, color: Color.fromARGB(255, 18, 156, 71)),
      //         left: BorderSide(width: 1.0, color: Color((0xFF000000))),
      //         right: BorderSide(width: 1.0, color: Color((0xFF000000))),
      //         bottom: BorderSide(width: 1.0, color: Color((0xFF000000))),
      //       )),
      //   width: 120,
      //   height: 120,
      //   child: const Text("HELLO"),
      // ), //pure container

//Animated Container start
      // body: Column(
      //   children: [
      //     Center(
      //       child: AnimatedContainer(
      //         width: selected ? 200.0 : 100.0,
      //         height: selected ? 100.0 : 200.0,
      //         color: selected ? Colors.red : Colors.blue,
      //         alignment:
      //             selected ? Alignment.center : AlignmentDirectional.topCenter,
      //         // duration: const Duration(seconds: 2),
      //         duration: const Duration(seconds: 1),
      //         // curve: Curves.fastOutSlowIn,
      //         curve: Curves.bounceIn,
      //         child: const Text("HELLO WORLD"),
      //       ),
      //     ),
      //     TextButton(
      //         onPressed: () {
      //           setState(() {
      //             selected = !selected;
      //           });
      //         },
      //         child: Text("Click Me"))
      //   ],
      // ),//Animated Container

      // body: Card(
      //   child: Text("Hi"),
      // ),// Card

//SizedBox the same with container start
      // body: const SizedBox(
      //   width: 200.0,
      //   height: 300.0,
      //   child: Card(
      //     //   child: Column(
      //     // children: [Text("Image"), Text("Title")],
      //     child: Padding(
      //       padding: EdgeInsets.all(20.0),
      //       child: Text("Hello World!"),
      //     ),
      //   ),
      // ), //SizedBox the same with container

// normal list view and map list view start
      // body: ListView(
      //   padding: const EdgeInsets.all(8),
      //   // children: <Widget>[
      //   //   Container(
      //   //     height: 50,
      //   //     color: Colors.amber[600],
      //   //     child: const Center(child: Text("Entry A")),
      //   //   ),
      //   //   Container(
      //   //     height: 50,
      //   //     color: Colors.amber[500],
      //   //     child: const Center(child: Text("Entry B")),
      //   //   ),
      //   // ], // list view sample

      //   // children: items
      //   //     .map((val) => Container(
      //   //           height: 50,
      //   //           color: val % 2 == 0 ? Colors.amber[500] : Colors.amber[600],
      //   //           child: Center(child: Text("$val")),
      //   //         ))
      //   //     .toList(), // list view with map

      // ), // normal list view and map list view

      //list view builder start
      // body: ListView.builder(
      //   // scrollDirection: Axis.horizontal, //default က တော့ vertical
      //   padding: const EdgeInsets.all(8),
      //   itemCount: entries.length,
      //   itemBuilder: (BuildContext context, int index) {
      //     return Container(
      //       height: 50,
      //       // width: 350,
      //       color: Colors.amber[colorCodes[index]],
      //       child: Center(child: Text('Entry ${entries[index]}')),
      //     );
      //   },
      // ), //dynamic list view //sever side က နေ product list တွေကို ပေးလိုက်တဲ့အခါ ဒီဘက်မာ ပြန်ပြပေးတဲ့ အခြေနေမျိုးတွေမာသုံးတယ်

      backgroundColor: Theme.of(context).colorScheme.secondary,

      //list view seperater start
      body: entries.isNotEmpty
          ? ListView.separated(
              padding: const EdgeInsets.all(8),
              itemBuilder: (BuildContext context, int index) {
                //return container start
                // return Container(
                //   height: 50,
                //   // width: 350,
                //   color: Colors.amber[colorCodes[index]],
                //   child: Center(child: Text('Entry ${entries[index]}')),
                // );

                //return list title start
                return ListTile(
                  tileColor: Colors.blue,
                  title: Text(
                    'Item ${index + 1}',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  subtitle: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
                  isThreeLine: true,
                  leading: Icon(Icons.person),
                  trailing: Icon(Icons.arrow_forward_ios),
                  textColor: Colors.white,
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
              itemCount: entries.length)
          : Text("Wating Data"), // line spaceing လေးပါလာတယ်
    );
  }
}
