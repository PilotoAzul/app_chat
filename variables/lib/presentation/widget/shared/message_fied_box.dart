import 'package:flutter/material.dart';

class MessageBox extends StatelessWidget {
  const MessageBox({super.key});

  @override
  Widget build(BuildContext context) {
    //elemento que me permite tener control sobre input {valor, limpiar}
    final textController = TextEditingController();
    final focusNode = FocusNode();
    final outlineInput = UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.redAccent),
          borderRadius: BorderRadius.circular(40)
        );
    return TextFormField(
      focusNode: focusNode,
      controller: textController,

      decoration: InputDecoration(
        hintText: 'Escribe tu mensaje',
        filled: true,
        focusedBorder: outlineInput,
        enabledBorder: outlineInput,
        suffixIcon: IconButton(
          onPressed: () {
            final textValue = textController.value.text;
            print('mesaje $textValue');
            textController.clear();
          },
          icon: Icon(Icons.send_outlined),
        ),
      ),
      onFieldSubmitted: (value){
        textController.clear();
      }
    );
  }
}