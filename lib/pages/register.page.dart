import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background/background6.gif"),
            colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.darken),
            fit: BoxFit.cover,
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
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                labelText: "Nome",
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
            ),

            SizedBox(
              height: 20,
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
                        "Cadastrar",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  onPressed: () => {},
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
                  "Já tenho uma conta",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xffffffff),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/');
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