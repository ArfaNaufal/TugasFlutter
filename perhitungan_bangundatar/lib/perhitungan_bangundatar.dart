import 'dart:ffi';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:flutter/material.dart';

class perhitungan_bangundatar extends StatefulWidget {
  const perhitungan_bangundatar({Key? key}) : super(key: key);

  @override
  State<perhitungan_bangundatar> createState() => _perhitungan_bangundatarState();
}

class _perhitungan_bangundatarState extends State<perhitungan_bangundatar> {
  TextEditingController ctrdiagonal1 = new TextEditingController();
  TextEditingController ctrdiagonal2 = new TextEditingController();
  TextEditingController ctrHasil = new TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Luas Belah Ketupat'),),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: ctrdiagonal1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Diagonal 1',
              ),
            ),
            Container(height: 20,),
            TextField(
              controller: ctrdiagonal2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Diagonal 2',
              ),
            ),
             
             SizedBox(height: 30,),
           Center(
              child: Container(
                width: 200,
                child: 
                  ElevatedButton(
                    onPressed: () {
                      
                      setState(() {
                        if (ctrdiagonal1.text.isNotEmpty && ctrdiagonal2.text.isNotEmpty){
                          ctrHasil.text = (double.parse(ctrdiagonal1.text) * double.parse(ctrdiagonal2.text)/ 2).toString() ;
                          
                        } else{
                          
                          Alert(
                      context: context,
                      type: AlertType.error,
                      title: "Masukan Angka ke Kolom yang kosong",
                      //desc: "Selamat anda berhasil login",
                      buttons: [
                        DialogButton(
                          child: Text(
                            "Selanjutnya",
                           
                          ),
                          onPressed: () => Navigator.pop(context),
                        )
                      ],
                    ).show();
                    return;
                  }
                  });
                  },
                child: Text("Submit")),
                                                
                     
              
                     
                  ),
              ),
          
            SizedBox(height: 10,),
            Align(alignment: Alignment.center,
            child: Text ("hasil ${ctrHasil.text} cm", 
            style: TextStyle(fontSize: 20
            ),
            )
          

            )
          ],
          
          
          
        ),
      ),
    );
  }
}