import 'package:flutter/material.dart';

import 'canaftrlog.dart';
import 'canidatereg.dart';



class canlogin extends StatefulWidget {
  const canlogin({Key? key}) : super(key: key);

  @override
  State<canlogin> createState() => _canloginState();
}

class _canloginState extends State<canlogin> {
  var cankey = GlobalKey<FormState>();
  bool canpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            Text("Change Password")
          ],
        ),
      ),
      body: Form(
        key: cankey,
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20,top: 200),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.zero),
                            borderSide: BorderSide(color: Colors.black)),
                        hintText: "Phone Number"),
                    validator: (username) {
                      if (username!.isEmpty || username.length < 10) {
                        return 'enter a valid username';
                      } else
                        return null;
                    }),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,bottom: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.zero),
                          borderSide: BorderSide(color: Colors.black)),
                      hintText: "Password"),
                  obscuringCharacter: '*',
                  obscureText: canpass,
                  validator: (password) {
                    if (password!.isEmpty || password.length < 4) {
                      return 'Enter a valid password';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30, left: 50, right: 50),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.height / 15,
                    child: ElevatedButton(
                        onPressed: () {
                          final valid = cankey.currentState!.validate();
                          if (valid) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CanafterLog(),
                                ));
                          } else {
                            return null;
                          }
                        },
                        child: Text("Login"))),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have Account ?"),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Canidatereg(),
                            ));
                      },
                      child: Text("Create Account"))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
