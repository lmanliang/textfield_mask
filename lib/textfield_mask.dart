import 'package:flutter/material.dart';

class TextFieldMask extends StatefulWidget {
  TextField inputField = TextField();
  String defaultText = '';
  String text = '';
  late String directionality;


  TextFieldMask({Key? key}){
     //super(key: key);
  }

  @override
  State<TextFieldMask> createState() => _TextFieldMaskState();

  setField(TextField tc) {
    inputField = tc;
    tc.controller!.text == null
        ? defaultText = ''
        : defaultText = tc.controller!.text;
    tc.controller!.text == null ? text = '' : text = tc.controller!.text;
    print(
        'this is here default value' + tc.controller!.text + ':' + defaultText);
  }
  setDir(String directionality){
    this.directionality = directionality;
  }
}

class _TextFieldMaskState extends State<TextFieldMask> {
  //TextEditingController tc = TextEditingController();
  TextField fakeTextField = TextField();
  TextEditingController fakeTc = TextEditingController();
  FocusNode _commentFocus = FocusNode();
  bool ontap = false;

  maskedString(String text) {
    var rev = text.split('').reversed.toList();
    switch(widget.directionality) {
      case 'right':
        for (int i = 0; i < (rev.length / 2).toInt(); i++) {
          rev[i] = '*';
        }
        break;
      case 'left':
        for (int i = rev.length -1; i > (rev.length / 2).toInt(); i--) {
          rev[i] = '*';
        }
        break;
    }
    return rev.reversed.toList().join();

  }

  @override
  void initState() {
    print(widget.directionality);
    fakeTextField = TextField(
        controller: fakeTc,
        focusNode: widget.inputField.focusNode,
        decoration: widget.inputField.decoration,
        keyboardType: widget.inputField.keyboardType,
        textInputAction: widget.inputField.textInputAction,
        textCapitalization: widget.inputField.textCapitalization,
        style: widget.inputField.style,
        strutStyle: widget.inputField.strutStyle,
        textAlign: widget.inputField.textAlign,
        textAlignVertical: widget.inputField.textAlignVertical,
        textDirection: widget.inputField.textDirection,
        readOnly: widget.inputField.readOnly,
        toolbarOptions: widget.inputField.toolbarOptions,
        showCursor: widget.inputField.showCursor,
        autofocus: widget.inputField.autofocus,
        obscuringCharacter: widget.inputField.obscuringCharacter,
        obscureText: widget.inputField.obscureText,
        autocorrect: widget.inputField.autocorrect,
        smartDashesType: widget.inputField.smartDashesType,
        smartQuotesType: widget.inputField.smartQuotesType,
        enableSuggestions: widget.inputField.enableSuggestions,
        maxLines: widget.inputField.maxLines,
        minLines: widget.inputField.minLines,
        expands: widget.inputField.expands,
        maxLength: widget.inputField.maxLength,
        maxLengthEnforcement: widget.inputField.maxLengthEnforcement,
        onChanged: widget.inputField.onChanged,
        onEditingComplete: widget.inputField.onEditingComplete,
        onSubmitted: widget.inputField.onSubmitted,
        onAppPrivateCommand: widget.inputField.onAppPrivateCommand,
        inputFormatters: widget.inputField.inputFormatters,
        enabled: false,
        cursorWidth: widget.inputField.cursorWidth,
        cursorHeight: widget.inputField.cursorHeight,
        cursorRadius: widget.inputField.cursorRadius,
        cursorColor: widget.inputField.cursorColor,
        selectionHeightStyle: widget.inputField.selectionHeightStyle,
        selectionWidthStyle: widget.inputField.selectionWidthStyle,
        keyboardAppearance: widget.inputField.keyboardAppearance,
        scrollPadding: widget.inputField.scrollPadding,
        dragStartBehavior: widget.inputField.dragStartBehavior,
        enableInteractiveSelection:
            widget.inputField.enableInteractiveSelection,
        selectionControls: widget.inputField.selectionControls,
        onTap: widget.inputField.onTap,
        mouseCursor: widget.inputField.mouseCursor,
        buildCounter: widget.inputField.buildCounter,
        scrollController: widget.inputField.scrollController,
        scrollPhysics: widget.inputField.scrollPhysics,
        autofillHints: widget.inputField.autofillHints,
        restorationId: widget.inputField.restorationId,
        enableIMEPersonalizedLearning:
            widget.inputField.enableIMEPersonalizedLearning);
    fakeTc.text = maskedString(widget.inputField.controller!.text.toString());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ontap == false
        ? GestureDetector(
            child: (fakeTextField),
            onTap: () {
              ontap = true;

              setState(() {});
            },
          )
        : widget.inputField;
  }
}
