import 'package:flutter/material.dart';
import 'package:sdgp_ui/createacc.dart';
import 'package:flutter/material.dart';
import 'package:sdgp_ui/arms.dart';
import 'package:sdgp_ui/legs.dart';
import 'package:sdgp_ui/shoulders.dart';
import 'package:sdgp_ui/female.dart';
import 'package:sdgp_ui/main.dart';
import 'package:sdgp_ui/choosegender.dart';

void main() => runApp(MaterialApp(
  home: Male(),
  routes: {
    '/create' : (context) => CreateAccount(),
  },
));

class Male extends StatelessWidget {
  const Male({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enter Details'),
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
            padding: const EdgeInsets.fromLTRB(0.0,60.0, 0.0, 0.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/2548/2548492.png'),
                      radius: 80.0,
                    ),
                  ],
                ),
                const SizedBox(height: 20.0,),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Name',
                    fillColor: Colors.white,
                    filled: true,
                    border: UnderlineInputBorder(),
                  ),
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 15.0,),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Age',
                    fillColor: Colors.white,
                    filled: true,
                    border: UnderlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 15.0,),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Height',
                    fillColor: Colors.white,
                    filled: true,
                    border: UnderlineInputBorder(),
                  ),
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 15.0,),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Weight',
                    fillColor: Colors.white,
                    filled: true,
                    border: UnderlineInputBorder(),
                  ),
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 20.0,),
                FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/create');
                  },
                  color: Colors.grey[900],
                  child: const Text(
                    'Next',
                     style: TextStyle(
                     fontSize: 20.0,
                     color: Colors.white,
                     fontWeight: FontWeight.bold,
                     fontFamily: 'Oswald',
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
