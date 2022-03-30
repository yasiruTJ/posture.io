import 'package:flutter/material.dart';
import 'package:sdgp_ui/legs.dart';
import 'package:sdgp_ui/arms.dart';

void main() => runApp(MaterialApp(
  home: Shoulders(),
  routes: {
    '/legs' : (context) => Legs(),
    '/arms' : (context) => Arms(),
    '/shoulders' : (context) => Shoulders(),
  },
));

class Shoulders extends StatelessWidget {
  const Shoulders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shoulder Exercises'),
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
                  backgroundImage: NetworkImage('https://t3.ftcdn.net/jpg/03/56/09/28/240_F_356092882_K03IG9cM2YZJKOlVltkmAbbj7FqHlamv.jpg'),
                  radius: 50.0,
                ),
                const SizedBox(height: 5.0,),
                FlatButton(
                  onPressed: () {  },
                  color: Colors.white,
                  child: const Text(
                    'DUMBBELL FRONT RAISE',
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
                  backgroundImage: NetworkImage('https://t3.ftcdn.net/jpg/04/85/12/32/240_F_485123239_FTcqQ7Ej1xvelQwgrH3C6Td0dP5tiUOM.jpg'),
                  radius: 50.0,
                ),
                const SizedBox(height: 5.0,),
                FlatButton(
                  onPressed: () {  },
                  color: Colors.white,
                  child: const Text(
                    'DUMBBELL LATERAL RAISE',
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
                  backgroundImage: NetworkImage('https://t3.ftcdn.net/jpg/01/22/03/10/240_F_122031082_JSKcuKpwxZU9AipvKYoTGFSdXX9aJxOS.jpg'),
                  radius: 50.0,
                ),
                const SizedBox(height: 5.0,),
                FlatButton(
                  onPressed: () {  },
                  color: Colors.white,
                  child: const Text(
                    'SHOULDER PRESS',
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

