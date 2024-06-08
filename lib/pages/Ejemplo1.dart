import 'package:flutter/material.dart';
import 'package:lab_universal/main.dart';

class Ejemplo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login con Material'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                    width: 200,
                    height: 150,
                    child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJEPNjE4fcpR6j0iknnAPjE8cVJh98wi-1i3XeluqYi7fbjPYLMmfcNVR2QDS6jzTG7jQ&usqp=CAU')),
              ),
            ),
             SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                    hintText: 'Enter valid email id as abc@gmail.com'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: TextField(

                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: 360,
              
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 100, 33, 255), borderRadius: BorderRadius.circular(20)),
              child: FloatingActionButton(
                backgroundColor: Color.fromARGB(255, 100, 33, 255),
                heroTag: null,
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => MainPage()));
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
                'Forgot Password?',
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 15),
              ),
             SizedBox(
              height: 100,
            ),
            Text('Sign Up here')
          ],
        ),
      ),
    );
  }
}