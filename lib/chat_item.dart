import 'package:flutter/material.dart';
import 'login_page.dart';

class ChatItem extends StatelessWidget {
  final String nama;
  final String pesan;
  final String bulan;
  final String avatar;

 const ChatItem({Key? key, 
    required this.nama,
    required this.pesan,
    required this.bulan,
    required this.avatar,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LoginPage(nama: nama),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.lightBlue.shade100,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.red, width: 2),
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(avatar),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nama,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(Icons.check, size: 16),
                      const SizedBox(width: 4),
                      Text(pesan),
                    ],
                  ),
                ],
              ),
            ),
            Text(
              bulan,
              style: const TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}