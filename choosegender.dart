import 'package:flutter/material.dart';
import 'package:sdgp_ui/female.dart';
import 'package:sdgp_ui/male.dart';
import 'package:flutter/material.dart';
import 'package:sdgp_ui/arms.dart';
import 'package:sdgp_ui/legs.dart';
import 'package:sdgp_ui/shoulders.dart';
import 'package:sdgp_ui/main.dart';

void main() => runApp(MaterialApp(
  home: ChooseGender(),
  routes: {
    '/male' : (context) => Male(),
    '/female' : (context) => Female(),
  },
));

class ChooseGender extends StatelessWidget {
  const ChooseGender({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gender'),
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
          padding: const EdgeInsets.fromLTRB(0.0,150.0, 0.0, 0.0),
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                    Text(
                      'Choose Your Gender',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 5.0,
                        fontFamily: 'Serif',
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 60.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/2548/2548519.png'),
                      radius: 60.0,
                    ),
                    SizedBox(width: 80.0,),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/2548/2548492.png'),
                      radius: 60.0,
                    ),
                  ],
                ),
                const SizedBox(height: 30.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/female');
                      },
                      color: Colors.grey[900],
                      child: const Text(
                        'FEMALE',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 2.0,
                        ),
                      ),
                    ),
                    const SizedBox(width: 85.0,),
                    FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/male');
                      },
                      color: Colors.grey[900],
                      child: const Text(
                        'MALE',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 2.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
