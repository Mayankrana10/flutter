import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget buildButton() {
    return Expanded(
      child: OutlinedButton(
        child: Text('1'),
        onPressed: () {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                buildButton(),
                buildButton(),
                buildButton(),
                buildButton()
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                buildButton(),
                buildButton(),
                buildButton(),
                buildButton()
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                buildButton(),
                buildButton(),
                buildButton(),
                buildButton()
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                buildButton(),
                buildButton(),
                buildButton(),
                buildButton()
              ]),
            ],
          ),
        ));
  }
}
