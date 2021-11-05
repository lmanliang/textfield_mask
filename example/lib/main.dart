import 'package:flutter/material.dart';
import 'package:textfield_mask/textfield_mask.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController tc = TextEditingController();
  TextFieldMask textmask = TextFieldMask();
  @override
  initState(){
    tc.text = 'default value';
    textmask.setField(TextField(controller:tc));
    textmask.setDir('left');
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
          actions: [
            IconButton(icon: Icon(Icons.eleven_mp),onPressed: (){setState(() {
              print(tc.text);
            });})
          ],
        ),
        body: Center(
          child: textmask,
        ),
      ),
    );
  }
}
