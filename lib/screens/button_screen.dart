import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  final String pianoType;

  const ButtonScreen({Key? key, required this.pianoType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pianoType)
        ,backgroundColor: Color(0xFF37639D),
    ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/${pianoType.toLowerCase().replaceAll("71j2gYvGgTL ", "71j2gYvGgTL")}.png', // تأكد من أن اسم الصورة يتوافق مع اسم البيانو
              height: 100,
            ),
            const SizedBox(height: 16),
            Text(
              'This is $pianoType',
              style: const TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
