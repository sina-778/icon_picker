import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  late String zemail;
  String xpassword = "";
  TextEditingController userController = TextEditingController();
  TextEditingController passController = TextEditingController();
  bool _obsecureText = true;
  bool isChecked = false;
  
  void toggle() {
    setState(() {
      _obsecureText = !_obsecureText;
    });
  }

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
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child: TextFormField(
                    controller: userController,
                    style: const TextStyle(
                      //fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                    onChanged: (input) {
                      zemail = input;
                    },
                    validator: (input) {
                      if (input!.isEmpty) {
                        return "Empty";
                      }
                    },
                    scrollPadding: EdgeInsets.all(20),
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(
                          left: 20), // add padding to adjust text
                      isDense: false,
                      hintStyle: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                      labelText: "User Name",
                      labelStyle: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.deepPurple,
                      ),
                      border: OutlineInputBorder(),
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(
                            top: 8), // add padding to adjust icon
                        child: Icon(Icons.person),
                      ),
                  ),
                )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: TextFormField(
                    controller: passController,
                    onChanged: (input){
                      xpassword=input;
                    },
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.deepPurple,
                    ),
                    validator: (input){
                      if(input!.isEmpty){
                        return "Empty";
                      }
                    },
                    scrollPadding: EdgeInsets.all(20),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(left: 20),
                      isDense: true,
                      hintStyle: const TextStyle(
                        fontSize: 18,
                        color: Colors.deepPurple,
                      ),
                      labelText: "Password",
                      labelStyle: const TextStyle(
                        fontSize: 18,
                        color: Colors.deepPurple,

                      ),
                      border: OutlineInputBorder(),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: IconButton(
                          icon: Icon(
                              _obsecureText    ? FontAwesomeIcons.solidEye
                                  : FontAwesomeIcons.solidEyeSlash,
                          ),
                          onPressed: () {
                            toggle();
                          },
                        ),
                      )
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SizedBox(
                  height: 50,
                  width: 120,
                  child: OutlinedButton(
                    onPressed: null,

                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.only(left: 10,right: 10)) ,

                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0))),
                      backgroundColor: MaterialStateProperty.all(Colors.deepPurple) ,
                    ),
                    child: const Text("Log In",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                      ),
                    ),
                  ),
                ),
              ),

              // Container(
              //   color: Colors.deepPurple,
              //
              //   // child: FlatButton(
              //   //     shape: RoundedRectangleBorder(
              //   //       borderRadius: BorderRadius.circular(20)
              //   //     ),
              //   //     onPressed: () async {
              //   //
              //   //     },
              //   //     child: Text(
              //   //       "Log In",
              //   //       style: TextStyle(
              //   //         color: Colors.white,
              //   //         fontSize: 18,
              //   //       ),
              //   //       textAlign: TextAlign.center,
              //   //     )),
              //   child: OutlinedButton(
              //     onPressed: null,
              //     style: ButtonStyle(
              //       shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
              //     ),
              //     child: const Text("Log In"),
              //   ),
              // )


            ],

          ),
        ),
      ),
    );
  }
}
