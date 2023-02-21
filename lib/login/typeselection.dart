

import 'package:flutter/material.dart';

import 'ownerlogin.dart';

class Hostel_hub extends StatelessWidget {
  const Hostel_hub({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/shobhit-sharma-8TrcnRMap90-unsplash.jpg"))
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height:MediaQuery.of(context).size.height/6,
                width: MediaQuery.of(context).size.width/2,
                child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => OwnerLogin(),));
                },style: ElevatedButton.styleFrom(side: BorderSide(color: Colors.white),
                    backgroundColor: Colors.transparent,elevation:1),child: Text("OWNER",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height:MediaQuery.of(context).size.height/6,
                width: MediaQuery.of(context).size.width/2,
                child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(side: BorderSide(color: Colors.white),
                    backgroundColor: Colors.transparent),child: Text("CANIDATE",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height:MediaQuery.of(context).size.height/6,
                width: MediaQuery.of(context).size.width/2,
                child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(side: BorderSide(color: Colors.white),
                    backgroundColor: Colors.transparent),child: Text("OTHER"
                    "",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
