//contiene todos lo elementos
import 'package:flutter/material.dart';
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
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child:Column(
          children:[
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index){
                  return (index % 2 == 0) ?
                     Column(
                       children: [
                         YouResult()
                       ],
                     ) : MyMessage();

                },
              ),
            ),
            //widget caja de texto
            MessageBox(),
          ],
        ),
      ),
    );
  }
}


