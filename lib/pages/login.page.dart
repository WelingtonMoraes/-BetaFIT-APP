// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginInPage createState() => _LoginInPage();
}

class _LoginInPage extends State<Login>{
  //late FirebaseFirestore db;
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background/background4.gif"),
            fit: BoxFit.cover,
            colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.8), BlendMode.darken), 
          ),
        ),
        
        child: ListView(
          padding: EdgeInsets.only(
            top: 100,
            left: 40,
            right: 40,
          ),
          children: <Widget>[
            SizedBox(
              width: 128,
              height: 128,
              child: Image.asset("assets/logo/logo.png"),
            ),

            SizedBox(
              height: 50,
            ),

            TextFormField(
              autofocus: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Email",
                labelStyle: TextStyle(
                  color: Color(0xffffffff),
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ), 
              ),
              style: TextStyle(
                fontSize: 20,
                color: Color(0xff86C423),
              ),
              onChanged: (text){
                email = text;
              },
            ),

            SizedBox(
              height: 20,
            ),

            TextFormField(
              autofocus: false,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(
                  color: Color(0xffffffff),
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ), 
              ),
              style: TextStyle(
                fontSize: 20,
                color: Color(0xff86C423),
              ),
              onChanged: (text){
                password = text;
              },
            ),

            Container(
              height: 40,
              alignment: Alignment.centerRight,

              child: TextButton(
                child: Text(
                  "Recuperar senha",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xffffffff),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/home');
                }
              ),
            ),

            SizedBox(
              height: 50,
            ),

            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: [0.3, 1],
                  colors: [
                    Color(0xff86C423),
                    Color(0xff1F1F1F),
                  ]
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5)
                ),
              ),

              child: SizedBox.expand(
                child: TextButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/home');
                  }
                ),
              ),
            ),

            SizedBox(
              height: 20,
            ),

            Container(
              height: 40,
              alignment: Alignment.center,

              child: TextButton(
                child: Text(
                  "Ainda não tenho uma conta",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xffffffff),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/register');
                }
              ),

              // onPressed: () {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(builder: (context) => ResetPassworPage)
              //   ),
              // };

            ),
            
          ],
        ),
      ),
    );
  }
}