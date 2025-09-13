
enum FromWho { mys, her }

class Message {
  final String text;
  final String? imageUrl;// esto indica que puede ser nulo
  final FromWho fromWho;

  Message({
    required this.text,
    this.imageUrl,
    required this.fromWho,
  });

  
}