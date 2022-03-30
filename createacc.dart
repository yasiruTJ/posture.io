import 'package:flutter/material.dart';
import 'package:sdgp_ui/main.dart';
import 'package:sdgp_ui/female.dart';
import 'package:sdgp_ui/male.dart';

void main() => runApp(MaterialApp(
  home: CreateAccount(),
  routes: {
    '/login' : (context) => Login(),
  },
));


class CreateAccount extends StatelessWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Account'),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
        foregroundColor: Colors.white,
      ),
      body: Container(
        height: 1000,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage("https://wallpapercave.com/wp/wp5412909.jpg"),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0.0,200.0, 0.0, 0.0),
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
                  'CREATE MY ACCOUNT',
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
    );
  }
}