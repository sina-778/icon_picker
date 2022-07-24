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

            Stack(
              children:<Widget> [
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.deepPurple,
                ),
                Positioned(
                    top: 30,
                    left: 100,
                    child: Container(
                      height: 100,
                      width: 50,
                      color: Colors.red,
                    )
                ),

              ],
            ),
              Container(
                height: 40,
                width: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
