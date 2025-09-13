import 'package:flutter/material.dart';
import 'package:variables/Domain/entities/message_entitie.dart' show FromWho, Message;
import 'package:variables/config/helpers/get_yes_no_answer.dart';

class ChatProvider extends ChangeNotifier {

  final ScrollController chatScrollController = ScrollController();
  final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer();

  List<Message> messageList = [
    Message(text: 'Bienvenido a chat', fromWho: FromWho.mys),
    Message(text:  'Te encuentras bien?', fromWho: FromWho.mys)

  ];

  Future<void> SendMenssge(String text) async{// enviar mensaje
  if (text.isEmpty) return;
    final newMesagge = Message(text: text, fromWho: FromWho.mys);
    messageList.add(newMesagge);

     if (text.endsWith('?')) {// me valida si la pregunta termina con ?
     await herReply();
    }
    notifyListeners();//estoy notificando el mensaje
    moveScrollToEnd();
  }



  Future<void> herReply() async {// se cumple la condicion de la api si el mensaje termine con ?
    final herMenssage = await getYesNoAnswer.getAnswer();
    messageList.add(herMenssage);
    notifyListeners();//estoy notificando el mensaje 
  }

  Future<void>moveScrollToEnd()async{// mover el scroll hacia arriba o abajo
    await Future.delayed(const Duration(milliseconds: 100));
    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeOut
    );

  }

}
