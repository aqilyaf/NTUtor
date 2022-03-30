import 'package:flutter/material.dart';
import 'package:multi_split_view/multi_split_view.dart';

//import './screen/home_screen.dart';
//import './ntu_tutoring_app/home_widget.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(body: const MyStatelessWidget()),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Color.fromARGB(255, 54, 235, 244),
              child: const Center(
                  //child: Text('Above'),
                  ),
            ),
          ),
          const Divider(
            height: 0,
            thickness: 0,
            indent: 0,
            endIndent: 0,
            color: Colors.white,
          ),
          // Subheader example from Material spec.
          // https://material.io/components/dividers#types
          Container(
            //padding: const EdgeInsets.only(left: 20),
            child: Align(
              alignment: AlignmentDirectional.center,
              child: Text(
                'Do you want to be a tutor or tutee?',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Theme.of(context).colorScheme.primary,
              child: const Center(
                  //
                  //child: Text('Below'),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).textScaleFactor;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("NTUtor"),
      ), //AppBar
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(240, 80),
              //padding: EdgeInsets.symmetric(horizontal: 32, vertical: 32),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => BeTutor()));
            },
            child: const Text("Be a tutor"),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(240, 80),
              //padding: EdgeInsets.symmetric(horizontal: 32, vertical: 32),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => BeTutee()));
            },
            child: const Text("Be a tutee"),
          ),
        ],
      )),
    );
  }
}

class BeTutor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Tutor"),
      ),
      //body: Center(
      //child: ElevatedButton(
      //  onPressed: () {
      //   Navigator.pop(context);
      //},
      //child: const Text("Home page")),
      //),
    );
  }
}

class BeTutee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Tutee"),
      ),
      //body: Center(
      //child: ElevatedButton(
      //  onPressed: () {
      //  Navigator.pop(context);
      //},
      //child: const Text("Home Page")),
      // );
    );
  }
}
