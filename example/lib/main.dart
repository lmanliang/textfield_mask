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
  TextEditingController tcLeft = TextEditingController();
  TextEditingController tcRight = TextEditingController();
  TextEditingController tcLeftAndDelete = TextEditingController();
  TextEditingController tcRightAndDelete = TextEditingController();
  TextFieldMask textmaskLeft = TextFieldMask();
  TextFieldMask textmaskRight = TextFieldMask();
  TextFieldMask textmaskLeftAndDelete = TextFieldMask();
  TextFieldMask textmaskRightAndDelete = TextFieldMask();
  @override
  initState(){
    tcLeft.text = 'default value';
    tcRight.text = 'default value';
    tcLeftAndDelete.text = 'default value';
    tcRightAndDelete.text = 'default value';

    textmaskLeft.setField(TextField(controller:tcLeft));
    textmaskLeft.setDir('left');
    textmaskLeft.setValueMethod(false);
    textmaskRight.setField(TextField(controller:tcRight));
    textmaskRight.setDir('right');
    textmaskRight.setValueMethod(false);
    textmaskLeftAndDelete.setField(TextField(controller:tcLeftAndDelete));
    textmaskLeftAndDelete.setDir('left');
    textmaskLeftAndDelete.setValueMethod(false);
    textmaskLeftAndDelete.setValueMethod(true);
    textmaskRightAndDelete.setField(TextField(controller:tcRightAndDelete));
    textmaskRightAndDelete.setDir('right');
    textmaskRightAndDelete.setValueMethod(false);
    textmaskRightAndDelete.setValueMethod(true);
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
          actions: [
            IconButton(icon: Icon(Icons.eleven_mp),onPressed: (){setState(() {
              print(tcLeft.text);
              print(tcRight.text);
              print(tcLeft.text);
              print(tcLeftAndDelete.text);
            });})
          ],
        ),
        body: Column(
          children: [
            Container(child:Text('mask left, click display text')),
            Center(
              child: Container( width: 200 , child:Card(child:textmaskLeft)),
            ),
            Container(child:Text('mask right, click display text')),
            Center(
              child: Container( width: 200 , child:Card(child:textmaskRight)),
            ),
            Container(child:Text('mask right, click delete text')),
            Center(
              child: Container( width: 200 , child:Card(child:textmaskLeftAndDelete)),
            ),
            Container(child:Text('mask right, click delete text')),
            Center(
              child: Container( width: 200 , child:Card(child:textmaskRightAndDelete)),
            )
          ],
        ),
      ),
    );
  }
}
