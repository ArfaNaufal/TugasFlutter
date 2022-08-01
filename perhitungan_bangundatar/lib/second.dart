import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  TextEditingController ctrPhone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Screen"),),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              controller: ctrPhone,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'input phone number', 
              ),
            ),
            Center(
              child: Container(
                width: 200,
                child: ElevatedButton(onPressed: (){
                  Navigator.pop(context,ctrPhone.text);
                }, child: Text("Submit")),
              ),
            )
          ],
        ),
      ),
    );
  }
}