class ChatMessage{
  String text;
  String? imageUrl;
  String id;
  int timeStamp;
  Author author;
  ChatMessage({
    required this.text,
    required this.id,
    required this.timeStamp,
    this.imageUrl,
    required this.author
  });
}

class Author{
  String userName;
  Author({required this.userName});
}