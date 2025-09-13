import 'package:dio/dio.dart';
import 'package:variables/Domain/entities/message_entitie.dart';
import 'package:variables/infraestructure/models/yes_no_models.dart';

class GetYesNoAnswer {
  final _dio = Dio();//_ significa que es privado

  Future<Message> getAnswer () async{// espendo algo para usar algo adelante
    final response = await _dio.get('https://yesno.wtf/api');

    final yesNoModels = YesNoModels.fromJsonMap(response.data);// llamando al modelo

    return yesNoModels.toMessageEntity();// retornando el modelo como entidad
 }
}