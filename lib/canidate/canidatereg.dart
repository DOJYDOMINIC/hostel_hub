
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Canidatereg extends StatelessWidget {
  const Canidatereg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top:150),
        child: Form(
          child: ListView(
            children: [
              InkWell(
                onTap: ()=> pickImage(ImageSource.camera), // check here
                child: CircleAvatar(
                  radius: 60,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:20,right: 20,top: 20),
                child: TextFormField(
                    decoration:InputDecoration(
                        hintText: "Name",
                        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)))
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:20,right: 20,top: 20),
                child: TextFormField(
                    decoration:InputDecoration(
                        hintText: "Email",
                        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)))
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:20,right: 20,top: 20),
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

