import 'package:flutter/material.dart';
import 'package:sdgp_ui/choosegender.dart';
import 'package:sdgp_ui/musclegroup.dart';
import 'package:sdgp_ui/createacc.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
    '/home' : (context) => Login(),
    '/choose': (context) => ChooseGender(),
    '/login' : (context) => Muscle(),
  },
));


class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'Username',
                      fillColor: Colors.white,
                      filled: true,
                      border: UnderlineInputBorder(),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 10.0,),
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Password',
                        fillColor: Colors.white,
                        filled: true,
                        border: const UnderlineInputBorder(),
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.security),
                          onPressed: () {  },
                        )
                    ),
                    keyboardType: TextInputType.number,
                    obscureText: true,
                    maxLength: 5,
                  ),
                  const SizedBox(height: 10.0,),
                  FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    color: Colors.grey[900],
                    child: const Text(
                      'SIGN-IN',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Oswald',
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0,),
                  const Text(
                    "Don't have an account? Create a one now.",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 2.0,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  const SizedBox(height: 10.0,),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ChooseGender()));
                    },
                    color: Colors.grey[900],
                    child: const Text(
                      'CREATE A NEW ACCOUNT',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Oswald',
                      ),
                    ),
                  ),
                ],
              )
          ),
        ),
      ),
    );
  }
}