import 'package:flutter/material.dart';
import 'package:sdgp_ui/shoulders.dart';
import 'package:sdgp_ui/arms.dart';

void main() => runApp(MaterialApp(
  home: Legs(),
  routes: {
    '/legs' : (context) => Legs(),
    '/arms' : (context) => Arms(),
    '/shoulders' : (context) => Shoulders(),
  },
));

class Legs extends StatelessWidget {
  const Legs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Leg Exercises'),
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
                  backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/3043/3043290.png'),
                  radius: 50.0,
                ),
                const SizedBox(height: 5.0,),
                FlatButton(
                  onPressed: () {  },
                  color: Colors.white,
                  child: const Text(
                    'SQUATS',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      letterSpacing: 2.0,
                    ),
                  ),
                ),
                const SizedBox(height: 20.0,),
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/3043/3043245.png'),
                  radius: 50.0,
                ),
                const SizedBox(height: 5.0,),
                FlatButton(
                  onPressed: () {  },
                  color: Colors.white,
                  child: const Text(
                    'LUNGES',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      letterSpacing: 2.0,
                    ),
                  ),
                ),
                const SizedBox(height: 20.0,),
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/5746/5746001.png'),
                  radius: 50.0,
                ),
                const SizedBox(height: 5.0,),
                FlatButton(
                  onPressed: () {  },
                  color: Colors.white,
                  child: const Text(
                    'CALF RAISE',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
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

