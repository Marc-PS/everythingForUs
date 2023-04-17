import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              backgroundColor: Colors.indigo[900],
              child: const Text('MP')
            ),
          )
        ],
      ),
      body: const Center(
         child: CircleAvatar(
          maxRadius: 110,
          backgroundImage: NetworkImage('https://fastly.picsum.photos/id/1062/200/300.jpg?hmac=e6D9R3lyQ0AtilxM2LGviSrodxvroxcpCRm2FdfNwZg'),
         ),
      ),
    );
  }
}