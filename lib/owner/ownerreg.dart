import 'package:flutter/material.dart';

class Ownerreg extends StatelessWidget {
  const Ownerreg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top:150),
        child: Form(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration:InputDecoration(
                      hintText: "Name",
                      border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)))
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                    decoration:InputDecoration(
                      hintText: "Mail",
                        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)))
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(keyboardType: TextInputType.number,
                    decoration:InputDecoration(
                        hintText: "Phone Number",
                        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)))
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(75, 20, 75,0),
                child: SizedBox(
                    height:50,
                    child: ElevatedButton(onPressed: (){}, child: Text("Register"))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
