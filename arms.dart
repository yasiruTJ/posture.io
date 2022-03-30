import 'package:flutter/material.dart';
import 'package:sdgp_ui/shoulders.dart';
import 'package:sdgp_ui/legs.dart';

void main() => runApp(MaterialApp(
  home: Arms(),
  routes: {
    '/legs' : (context) => Legs(),
    '/arms' : (context) => Arms(),
    '/shoulders' : (context) => Shoulders(),
  },
));

class Arms extends StatelessWidget {
  const Arms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arm Exercises'),
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
                  backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/1421/1421269.png'),
                  radius: 50.0,
                ),
                const SizedBox(height: 5.0,),
                FlatButton(
                  onPressed: () {  },
                  color: Colors.white,
                  child: const Text(
                    'BICEP CURL',
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
                  backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/2446/2446353.png'),
                  radius: 50.0,
                ),
                const SizedBox(height: 5.0,),
                FlatButton(
                  onPressed: () {  },
                  color: Colors.white,
                  child: const Text(
                    'DUMBBELL ROW',
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
                  backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/6672/6672712.png'),
                  radius: 50.0,
                ),
                const SizedBox(height: 5.0,),
                FlatButton(
                  onPressed: () {  },
                  color: Colors.white,
                  child: const Text(
                    'LATERAL RAISE',
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

