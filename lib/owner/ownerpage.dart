import 'package:flutter/material.dart';

class Ownerpage extends StatelessWidget {
  const Ownerpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(3.0),
            child: SizedBox(
              height: 100,
              child: ListTile(
                leading: CircleAvatar(),
                title:Text("Name"),
                subtitle: Text("9072176204"),
                trailing: Icon(Icons.call),
              ),
            ),
          );
        },itemCount: 50,
      ),
    );
  }
}
