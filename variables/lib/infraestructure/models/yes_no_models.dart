import 'package:variables/Domain/entities/message_entitie.dart';

class YesNoModels {
  final String answer;// si o no
  final bool forced;// true o false
  final String image;// url de la imagen

  YesNoModels({
    required this.answer,
    required this.forced,
    required this.image,
  });

  factory YesNoModels.fromJsonMap(Map<String, dynamic> json) => YesNoModels(// asignando variables al json
        answer: json['answer'],
        forced: json['forced'],
        image: json['image'],
      );


  Map<String, dynamic> toJson() => {// instanciando una funcion tipo json
        'answer': answer,
        'forced': forced,
        'image': image,
      };


//operador ternario
  Message toMessageEntity() => Message(
    text: answer == 'yes' ? 'Si' : 'No',
    fromWho: FromWho.her,
    imageUrl: image
  );
      
  

}