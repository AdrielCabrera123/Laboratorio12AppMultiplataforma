import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab_universal/main.dart'; 

class Ejemplo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: Colors.white,
        middle: Text('Login con Cupertino'),
        leading: CupertinoNavigationBarBackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16.0), 
        child: Column(
        
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 60),
            Center(
              child: Container(
                width: 200,
                height: 150,
                child: Image.network('https://cdn.icon-icons.com/icons2/3398/PNG/512/flutter_logo_icon_214732.png'),
              ),
            ),
            SizedBox(height: 30), 
            CupertinoTextField(
              placeholder: 'Username',
              padding: EdgeInsets.all(16.0), 
              decoration: BoxDecoration(
                border: Border.all(color: const Color.fromARGB(255, 184, 184, 184)),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            SizedBox(height: 15),
            CupertinoTextField(
              placeholder: 'Passphrase',
              obscureText: true,
              padding: EdgeInsets.all(16.0), 
              decoration: BoxDecoration(
                border: Border.all(color: const Color.fromARGB(255, 184, 184, 184)),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            SizedBox(height: 15),
            CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                
              },
              child: Text(
                'Reset your passphrase?',
                style: TextStyle(color: const Color.fromARGB(255, 159, 162, 160), fontSize: 15),
              ),
            ),
            SizedBox(height: 30), 
            Container(
              height: 50,
              width: double.infinity, 
              decoration: BoxDecoration(
                color: Color.fromRGBO(0, 136, 255, 1),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: CupertinoButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(builder: (_) => MainPage()),
                  );
                },
                child: Text(
                  'Sign In',
                  style: TextStyle(color: CupertinoColors.white, fontSize: 18),
                ),
              ),
            ),
            SizedBox(height: 110),
            CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () {
 
              },
              child: Text(
                '',
                style: TextStyle(color: CupertinoColors.activeGreen, fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}