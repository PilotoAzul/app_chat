import 'package:flutter/material.dart';
class YouResult extends StatelessWidget {
  const YouResult({super.key});

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
              'Respuesta de ella',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        SizedBox(height: 5,),
        _ImageB()
        ,SizedBox(height: 15,),
      ],
    );
  }
}

class _ImageB extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.network(
        'https://cdn.storyboardthat.com/site-images/gifs/bunny-planet-animated-gif.gif',
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
