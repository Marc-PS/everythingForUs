import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Card Widget"),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            
            CustomCardType1(),
            SizedBox(height: 10),
            CustomCardType2(imageUrl: 'https://picsum.photos/2000/3000', name: 'Un bonito paisaje',),
            SizedBox(height: 20),
            CustomCardType2(imageUrl: 'https://picsum.photos/2000/2000',),
            SizedBox(height: 20),
            CustomCardType2(imageUrl: 'https://picsum.photos/2300/3500',),
            SizedBox(height: 100)
            
            ],
        ));
  }
}
