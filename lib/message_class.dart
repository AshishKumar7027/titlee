class Message{
  String msg;
  String time;
  String otherperson;
  bool isSend;
  String? image;


  Message({
    required this.msg,
    required this.time,
    required this.otherperson,

     this.image,
    this.isSend=false,
});
}