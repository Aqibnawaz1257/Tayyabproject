import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';

class Registration_page extends StatefulWidget {
  const Registration_page({Key? key}) : super(key: key);

  @override
  State<Registration_page> createState() => _Registration_pageState();
}

class _Registration_pageState extends State<Registration_page> {

  TextEditingController textEditingControlleremail = TextEditingController();
  TextEditingController textEditingControllerpassword = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  bool value = false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(41, 218, 204,1),
        title: Text("Water Testing App"),
        centerTitle: true,
      ),

      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[



            Container(
              width: 150.0,
              child: Lottie.asset("assets/a.json"),

            ),

            SizedBox(
              height: 20,
            ),

            Padding(
              padding: EdgeInsets.only(top:10 , right: 10, left: 10),
              child: TextFormField(
                controller: textEditingControlleremail,
                keyboardType: TextInputType.text,
                style: TextStyle(fontSize: 14),
                autofocus: false,
                decoration: InputDecoration(
                  labelText: "Name",
                  hintText: "Full name",
                  hintStyle:TextStyle(fontSize: 14),

                  labelStyle: TextStyle(fontSize: 14) ,
                  border: OutlineInputBorder(),
                  errorStyle: TextStyle(fontSize: 14 , color: Colors.redAccent) ,
                ),


                validator: (value){

                  if(value == null || value.isEmpty){

                    return "PLease Enter the Email";
                  }
                  else {
                    return null;
                  }
                },
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top:10 , right: 10, left: 10),
              child: TextFormField(
                controller: textEditingControlleremail,
                keyboardType: TextInputType.text,
                style: TextStyle(fontSize: 14),
                autofocus: false,
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "email@gmail.com",
                  hintStyle:TextStyle(fontSize: 14),

                  labelStyle: TextStyle(fontSize: 14) ,
                  border: OutlineInputBorder(),
                  errorStyle: TextStyle(fontSize: 14 , color: Colors.redAccent) ,
                ),


                validator: (value){

                  if(value == null || value.isEmpty){

                    return "PLease Enter the Email";
                  }
                  else {
                    return null;
                  }
                },
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top:10 , right: 10, left: 10),
              child: TextFormField(
                controller: textEditingControlleremail,
                keyboardType: TextInputType.text,
                style: TextStyle(fontSize: 14),
                autofocus: false,
                decoration: InputDecoration(
                  labelText: "Phone",
                  hintText: "0312-********",
                  hintStyle:TextStyle(fontSize: 14),

                  labelStyle: TextStyle(fontSize: 14) ,
                  border: OutlineInputBorder(),
                  errorStyle: TextStyle(fontSize: 14 , color: Colors.redAccent) ,
                ),


                validator: (value){

                  if(value == null || value.isEmpty){

                    return "PLease Enter the Email";
                  }
                  else {
                    return null;
                  }
                },
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top:10 , right: 10, left: 10),
              child: TextFormField(
                controller: textEditingControlleremail,
                keyboardType: TextInputType.text,
                style: TextStyle(fontSize: 14),
                autofocus: false,
                decoration: InputDecoration(
                  labelText: "Address",
                  hintText: "Address",
                  hintStyle:TextStyle(fontSize: 14),

                  labelStyle: TextStyle(fontSize: 14) ,
                  border: OutlineInputBorder(),
                  errorStyle: TextStyle(fontSize: 14 , color: Colors.redAccent) ,
                ),


                validator: (value){

                  if(value == null || value.isEmpty){

                    return "PLease Enter the Email";
                  }
                  else {
                    return null;
                  }
                },
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top:10 , right: 10 , left: 10),

              child: TextFormField(
                controller: textEditingControllerpassword,
                style: TextStyle(fontSize: 14),
                keyboardType: TextInputType.number,
                autofocus: false,
                decoration: InputDecoration(
                  hintText: "********",
                  hintStyle:TextStyle(fontSize: 14),
                  labelText: "Password",
                  labelStyle: TextStyle(fontSize: 14) ,
                  border: OutlineInputBorder(),
                  errorStyle: TextStyle(fontSize: 14 , color: Colors.redAccent) ,
                ),

                validator: (value){

                  if(value == null || value.isEmpty){

                    return "PLease Enter the Password";
                  }
                  else {
                    return null;
                  }
                },
              ),
            ),



            SizedBox(
              height: 20.0,
            ),


            GestureDetector(
              onTap: (){

                if(_formKey.currentState!.validate()){

                }

              },
              child: Container(
                width: 300,
                height: 45,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(41, 218, 204,1),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Center(child: Text("Register" , style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),)),
              ),
            ),

          ],
        ),
      ),

    );;
  }
}
