import 'package:flutter/material.dart';

class MessagePages extends StatefulWidget {
  const MessagePages({ Key? key }) : super(key: key);

  @override
  State<MessagePages> createState() => _MessagePagesState();
}

class _MessagePagesState extends State<MessagePages> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("MessagePages"),
    );
  }
}