import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {

  final options = const ['Marc','Miriam', 'Marina','Judith'];
   
  const ListView2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Tipo 2'),
      ),
      body: ListView.separated(
        itemBuilder: (context, i) => ListTile(
              trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.indigo),
              title: Text(options[i]),
              onTap: () {
                final game = options[i];
                print(game);
              },
        
        ), 
        separatorBuilder: (_, __) => const Divider(), 
        itemCount: options.length
      )
    );
  }
}