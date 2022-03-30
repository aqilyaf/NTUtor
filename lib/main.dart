import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

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
        home: const MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  get child => null;

  @override
  Widget build(BuildContext context) {
    Scaffold(
      appBar: AppBar(
        title: const Text('NTUtor'),
      ),
    );
    return Stack(
      clipBehavior: Clip.none,
      children: <Widget>[
        Expanded(
          child: Container(
            height: 370,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        Positioned(
          bottom: 570,
          left: 0,
          right: 0,
          child: Center(
            child: TextButton(
              style: TextButton.styleFrom(
                alignment: Alignment.center,
                minimumSize: const Size(40, 60),
                padding: const EdgeInsets.all(16.0),
                primary: Color.fromARGB(255, 12, 127, 228),
                backgroundColor: Colors.transparent,
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BeTutor()));
              },
              child: const Text("Be a Tutor"),
            ),
          ),
        ),
        /*const Divider(
            height: 0,
            thickness: 0,
            indent: 0,
            endIndent: 0,
            color: Colors.white,
          ),
          // Subheader example from Material spec.
          // https://material.io/components/dividers#types*/
        Positioned(
          bottom: 370,
          left: 0,
          right: 0,
          //top: 20,
          child: Container(
            alignment: Alignment.center,
            height: 20,
            width: 1000,
            color: Color.fromARGB(255, 54, 194, 87),
          ),
        ),
        Align(
          alignment: AlignmentDirectional.center,
          child: Text(
            'Do you want to be a tutor or tutee?',
            style: Theme.of(context).textTheme.labelLarge,
            textAlign: TextAlign.center,
          ),
        ),
        //Expanded(
        Positioned(
          bottom: 0,
          child: Container(
            alignment: Alignment.center,
            height: 370,
            width: 1000,
            color: Theme.of(context).colorScheme.primary,
            child: const Center(),
          ),
        ),
        Positioned(
          bottom: 190,
          left: 0,
          right: 0,
          child: Center(
            child: TextButton(
              style: TextButton.styleFrom(
                alignment: Alignment.center,
                minimumSize: const Size(40, 60),
                padding: const EdgeInsets.all(16.0),
                primary: Color.fromARGB(255, 249, 250, 250),
                backgroundColor: Colors.transparent,
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BeTutee()));
              },
              child: const Text("Be a Tutee"),
            ),
          ),
        )
        //),
      ],
    );
  }
}

/*class MyHomePage extends StatelessWidget {
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
*/

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
