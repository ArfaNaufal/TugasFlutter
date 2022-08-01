import 'package:aplikasi_percobaan/second.dart';
import 'package:flutter/material.dart';

class formRegistrasi extends StatefulWidget {
  const formRegistrasi({Key? key}) : super(key: key);

  @override
  State<formRegistrasi> createState() => _formRegistrasiState();
}

class _formRegistrasiState extends State<formRegistrasi> {
  TextEditingController ctrUsername = new TextEditingController();
  TextEditingController ctrPassword = new TextEditingController();
  TextEditingController ctrhasil = new TextEditingController();
  String NomerHangpong="-";
  int id = 1;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Form Registrasi'),),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: ctrUsername,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                ),
              ),
              Container(height: 20,),
              TextField(
                controller: ctrPassword,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
              SizedBox(height: 20,),
              Text("pilih jenis kelamin", style: TextStyle(fontSize: 15),),
              SizedBox(height: 10,),
              Row(
                children: [
                  Radio(
                    value: 1, 
                    groupValue: id, 
                    onChanged: (val) {
                      setState(() {
                        id= 1;
                      });
                      
      
                    }
                  ),
                  Text("male")
                ],
              ),
               Row(
                children: [
                  Radio(
                    value: 2, 
                    groupValue: id, 
                    onChanged: (val) {
                      setState(() {
                        id= 2;
                      });
      
                    }
                  ),
                  Text("female")
                ],
               ),
               Text("phone :"+ NomerHangpong),
               ElevatedButton(
                onPressed:() async{
                  final result = await
                  Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => const SecondScreen()),
                    );
                    setState(() {
                      NomerHangpong = result.toString();
                    });
               },child: Text("Phone Number")),
               
               SizedBox(height: 30,),
              
            
      
              
              Center(
                child: Container(
                  width: 200,
                  child: ElevatedButton(onPressed: (){
                    
                  }, child: Text("Submit")),
                ),
              )
            ],
            
            
            
          ),
        ),
      ),
    );
  }
}
