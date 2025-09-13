import 'package:flutter/material.dart';
import 'package:variables/Domain/entities/message_entitie.dart';
class MyMessage extends StatelessWidget {

  final Message menssageText;
  
  const MyMessage({
    super.key,
    required this.menssageText
    });


  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.primary,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10
            ),
            child:  Text(
              menssageText.text,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        SizedBox(height: 10,)
      ],
    );
  }
}
