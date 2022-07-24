import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Scaffold(
        // appBar: AppBar(
        //
        //   title: Text(
        //     "Icon Picker",
        //     style: TextStyle(
        //       //color: Colors.deepPurpleAccent
        //     ),
        //   ),
        //   actions: [
        //     IconButton(
        //         onPressed: (){
        //
        //         },
        //         icon: Icon(Icons.logout)),
        //   ],
        //   centerTitle: true,
        //   backgroundColor: Colors.deepPurpleAccent,
        // ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(70),
                child: Text(
                  "Icon Picker",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,

                  ),
                ),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}
