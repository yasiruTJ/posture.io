import 'package:flutter/material.dart';
import 'package:sdgp_ui/arms.dart';
import 'package:sdgp_ui/legs.dart';
import 'package:sdgp_ui/shoulders.dart';
import 'package:sdgp_ui/main.dart';

void main() => runApp(MaterialApp(
  home: Muscle(),
  routes: {
    '/legs' : (context) => Legs(),
    '/arms' : (context) => Arms(),
    '/shoulders' : (context) => Shoulders(),
  },
));

class Muscle extends StatelessWidget {
  const Muscle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Muscle Group'),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
        foregroundColor: Colors.white,
      ),
        body: Center(
        child: Container(
        height: 1000,
        width: double.infinity,
        decoration: const BoxDecoration(
        image: DecorationImage(
        image: NetworkImage("https://wallpapercave.com/wp/wp5412909.jpg"),
        fit: BoxFit.cover),
          ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0.0,50.0, 0.0, 0.0),
          child: Column(
            children: [
              const CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/4760/4760876.png'),
                radius: 50.0,
              ),
              const SizedBox(height: 5.0,),
              FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/legs');
                },
                color: Colors.grey[900],
                child: const Text(
                  'LEGS',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 2.0,
                  ),
                ),
              ),
              const SizedBox(height: 20.0,),
              const CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/2690/2690150.png'),
                radius: 50.0,
              ),
              const SizedBox(height: 5.0,),
              FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/arms');
                },
                color: Colors.grey[900],
                child: const Text(
                  'ARMS',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 2.0,
                  ),
                ),
              ),
              const SizedBox(height: 20.0,),
              const CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/2324/2324333.png'),
                radius: 50.0,
              ),
              const SizedBox(height: 5.0,),
              FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/shoulders');
                },
                color: Colors.grey[900],
                child: const Text(
                  'SHOULDERS',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 2.0,
                  ),
                ),
              ),
            ],
          ),
         ),
        ),
      ),
    );
  }
}

