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
          primarySwatch: Colors.blue,
          textTheme: const TextTheme(
            headlineLarge: TextStyle(fontSize: 50.0, color: Colors.white),
          )),
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
  var selectedDate = DateTime.now();
  _selectDate(context) async {
    //function implementation
    final DateTime? picked = await showDatePicker(
        context: context,
        firstDate: DateTime(2000),
        lastDate: DateTime(2500),
        initialEntryMode: DatePickerEntryMode.input, //input datetime
        // helpText: 'Select booking date',
        // cancelText: 'Not now',
        // confirmText: 'Book'
        fieldLabelText: "Booking date",
        fieldHintText: "Month/Date/Year");
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Example",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        backgroundColor: Colors.blue,
        titleTextStyle: TextStyle(color: Colors.white),
      ),

      //date picker
      // body: TextButton(
      //     onPressed: () {
      //       showDatePicker(
      //           context: context,
      //           initialDate: DateTime.now(),
      //           firstDate: DateTime(2000),
      //           lastDate: DateTime(2500));
      //     },
      //     child: Text("Shows Date", style: TextStyle(color: Colors.red)))
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            "${selectedDate.toLocal()}".split(' ')[0],
            style: const TextStyle(fontSize: 55, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20.0,
          ),
          TextButton(
            onPressed: () => _selectDate(context), //function call
            child: const Text(
              'Select date',
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
