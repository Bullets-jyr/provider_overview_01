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
      title: 'Counter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;

  void increment() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.blue[100],
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'MyHomePage',
                style: TextStyle(fontSize: 24.0),
              ),
            ),
            SizedBox(height: 20.0),
            CounterA(),
            SizedBox(height: 20.0),
            Middle(),
          ],
        ),
      ),
    );
  }
}

class CounterA extends StatelessWidget {
  const CounterA({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red[100],
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text(
            '0',
            style: TextStyle(fontSize: 48.0),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Increment',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        ],
      ),
    );
  }
}

class Middle extends StatelessWidget {
  const Middle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CounterB(),
          SizedBox(width: 20.0),
          Sibling(),
        ],
      ),
    );
  }
}

class CounterB extends StatelessWidget {
  const CounterB({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow[100],
      padding: const EdgeInsets.all(20.0),
      child: Text(
        '0',
        style: TextStyle(fontSize: 24.0),
      ),
    );
  }
}

class Sibling extends StatelessWidget {
  const Sibling({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange[100],
      padding: const EdgeInsets.all(20.0),
      child: Text(
        'Sibling',
        style: TextStyle(fontSize: 24.0),
      ),
    );;
  }
}


