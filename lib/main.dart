import 'package:flutter/material.dart';
import 'chat_item.dart';

void main() {
  runApp(MyPage());
}

class MyPage extends StatelessWidget {
  MyPage({super.key});

  final data = [
    {
      "nama": "Patryc Ananta Seravin",
      "pesan": "siap!",
      "bulan": "Januari",
      "avatar": "images/avatar.jpg"
    },
    {
      "nama": "Bos",
      "pesan": "deadline bsk",
      "bulan": "Februari",
      "avatar": "images/avatar.jpg"
    },
    {
      "nama": "charlene",
      "pesan": "bsk jadi?",
      "bulan": "januari",
      "avatar": "images/avatar.jpg"
    },
    {
      "nama": "Tuna",
      "pesan": "okee",
      "bulan": "April",
      "avatar": "images/avatar.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Chat item"),
          backgroundColor: Colors.blue,
        ),
         body: ListView.separated(
            separatorBuilder: (context, index) {
              return Container(                               
              ); // Container
            },
            itemCount: data.length,
            itemBuilder: (context, index) {
            return ChatItem(
              nama: data[index]['nama']!,
              pesan: data[index]['pesan']!,
              bulan: data[index]['bulan']!,
              avatar: data[index]['avatar']!,
            );
          },
        ),
      ),
    );
  }
}