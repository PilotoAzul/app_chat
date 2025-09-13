//contiene todos lo elementos
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:variables/Domain/entities/message_entitie.dart';
import 'package:variables/presentation/providers/chat_provider.dart';
import 'package:variables/presentation/widget/my_message.dart';
import 'package:variables/presentation/widget/shared/message_fied_box.dart';
import 'package:variables/presentation/widget/you_ressult.dart';
class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.all(5.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://ichef.bbci.co.uk/ace/ws/640/cpsprodpb/4fef/live/26f28080-6ad1-11ee-8073-5b93bd1aa7db.jpg.webp'),
          ),
        ),
        title: Text('Chat del usuario'),
        centerTitle: true,
      ),
      body: _ChatView()// separo la vista del chat en otro widget  
    );
  }

}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();// estoy escuchando el provider y nos permite saber cuando hay un cambio en el provider
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child:Column(
          children:[
            Expanded(
              child: ListView.builder(
                controller: chatProvider.chatScrollController,// para darel control a mi scroll
                itemCount: chatProvider.messageList.length,
                itemBuilder:(context, index) {
                final Message message = chatProvider.messageList[index]; 
                  return (message.fromWho == FromWho.her)
                  ?   YouResult(messageHer: message,)
                  :  MyMessage(menssageText: message);
                })),
            //widget caja de texto
             MessageBox(
              onValue:(value) => chatProvider.SendMenssage(value) ,
              ),
          ],
        ),
      ),
    );
  }
}


