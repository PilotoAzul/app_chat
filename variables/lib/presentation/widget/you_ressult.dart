import 'package:flutter/material.dart';
import 'package:variables/Domain/entities/message_entitie.dart';
class YouResult extends StatelessWidget {
final Message messageHer;

  const YouResult({
    super.key,
    required this.messageHer
  });

  @override
  Widget build(BuildContext context) {
    //final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [  
        Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 230, 83, 38),   
            borderRadius: BorderRadius.circular(10)
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10
            ),
            child:  Text(
              messageHer.text,
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        SizedBox(height: 5,),
        _ImageB(messageHer.imageUrl!),// el signo de admiracion es para decir que si o si recibe una imagen
        SizedBox(height: 15,),
      ],
    );
  }
}

class _ImageB extends StatelessWidget {

  final String urlImage;
  const _ImageB(this.urlImage);

  @override
  Widget build(BuildContext context) {
    

    final size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.network(
        urlImage,
        width:  size.width * 0.7,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Container(
            width: size.width * 0.7,
            height:150,
            padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3),
            child: Text('Cargando...'),
          );
        },
      ),
    );
  }
}
