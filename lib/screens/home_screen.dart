import 'package:flutter/material.dart';
import 'button_screen.dart';
import '../widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);

   final List<Map<String, String>> pianoTypes = [
     {'label': 'Classic Piano', 'imagePath': 'images/71j2gYvGgTL.png'},
     {'label': 'Electric Piano', 'imagePath': 'images/unnamed.jpg'},
     {'label': 'Jazz Piano', 'imagePath': 'images/200x200bb.jpg'},
     {'label': 'Grand Piano', 'imagePath': 'images/unnamed.webp'},
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      appBar: AppBar(
        title: Row(
          children: const [
            Icon(
              Icons.music_note,
              color: Color(0xFFDCDEE2),
              size: 18,
            ),
            SizedBox(width: 8),
            Text(
              'Piano App',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFFDCDEE2),
              ),
            ),
          ],
        ),
        backgroundColor: Color(0xFF293D56),
      )

      ,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Select what kind of piano you want',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Color(0xFF37639D)),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: pianoTypes.length,
              itemBuilder: (context, index) {
                return CustomButton(   label: pianoTypes[index]['label']!,
                  imagePath: pianoTypes[index]['imagePath']!,
                  onTap: () => _navigateToButtonScreen(context, pianoTypes[index]['label']!),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _navigateToButtonScreen(BuildContext context, String pianoType) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ButtonScreen(pianoType: pianoType),
      ),
    );
  }
}
