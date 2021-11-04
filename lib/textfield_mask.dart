import 'package:flutter/material.dart';
class TextFieldMask extends StatefulWidget {
  TextField inputField = TextField();
  String defaultText = '';
  TextFieldMask({Key? key}): super(key: key);
  @override
  State<TextFieldMask> createState() => _TextFieldMaskState();
  set(TextField tc) {
    inputField = tc;
    tc.controller!.text == null ? defaultText = '' : defaultText = tc.controller!.text ;
    print('this is here default value' + tc.controller!.text + ':' + defaultText );
  }
}

class _TextFieldMaskState extends State<TextFieldMask> {
  TextEditingController tc = TextEditingController();

  @override
  void initState() {
    super.initState();
    }

  @override
  Widget build(BuildContext context) {
    return widget.inputField ;
  }
}
