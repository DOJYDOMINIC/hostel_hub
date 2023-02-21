import 'package:flutter/material.dart';
import 'ownerpage.dart';
import 'ownerreg.dart';

class OwnerLogin extends StatefulWidget {
  const OwnerLogin({Key? key}) : super(key: key);

  @override
  State<OwnerLogin> createState() => _OwnerLoginState();
}

class _OwnerLoginState extends State<OwnerLogin> {
var formkey = GlobalKey<FormState>();
bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 200),
                child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.zero),
                            borderSide: BorderSide(color: Colors.black)),
                        hintText: "User Name"),
                    validator: (username) {
                      if (username!.isEmpty || username.length <10) {
                        return 'enter a valid username';
                      } else
                        return null;
                    }),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 30,left: 10,right: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.zero),
                          borderSide: BorderSide(color: Colors.black)),
                      hintText: "Passworrd"),
                  obscureText: showpass,
                  validator: (password){
                    if (password !.isEmpty || password.length <4){
                      return 'Enter a valid password';
                    }else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30,left: 50,right: 50),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.height / 15,
                    child:
                        ElevatedButton(onPressed: (){
                          final valid = formkey.currentState!.validate();
                          if (valid) {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Ownerpage(),));
                          }else{
                            return null;
                          }
                        },child: Text("Login"))),
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
                              builder: (context) => Ownerreg(),
                            ));
                      },
                      child: Text("Create Account"))
                ],
              ),
            ],
          ),
        ),
    );
  }
}
