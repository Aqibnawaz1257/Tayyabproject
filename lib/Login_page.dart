import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:tayyab_fyp_testing/Home_page.dart';
import 'package:tayyab_fyp_testing/Registration_page.dart';

class Login_page extends StatefulWidget {

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {


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
              width: 300.0,
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


            Padding(
              padding: EdgeInsets.only(top:10 , right: 10, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[

                      Checkbox(
                        value: this.value,
                        onChanged: (bool? value1) {
                          setState(() {
                            this.value = value1!;
                          });
                        },
                      ),

                      Text("Remeber Me")


                    ],


                  ),

                  Text("Forget Password ?"),

                ],
              ),
            ),



            Padding(
              padding: EdgeInsets.only(right: 10, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[

                  GestureDetector(

                    onTap: (){

                      Route route = MaterialPageRoute(builder: (_)=> Registration_page());
                      Navigator.pushReplacement(context, route);

                    },
                    child: Text("Account !" , style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.green,
                      letterSpacing: 2
                    ),),
                  )

                ],
              ),
            ),

            SizedBox(
              height: 20.0,
            ),


            GestureDetector(
              onTap: (){

                if(_formKey.currentState!.validate()){

                  Route route = MaterialPageRoute(builder: (_)=> Home_page());
                  Navigator.pushReplacement(context, route);

                }

              },
              child: Container(
                width: 300,
                height: 45,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(41, 218, 204,1),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Center(child: Text("Login" , style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),)),
              ),
            ),






            SizedBox(
              height: 20.0,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[


                Container(
                  width: 100,
                  child: Divider(
                    thickness: 1,
                    color: Color(0xf27d7d7d),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text("OR Connect With:"),
                SizedBox(
                  width: 10.0,
                ),
                Container(
                  width: 100,
                  child: Divider(
                    thickness: 1,
                    color: Color(0xf27d7d7d),
                  ),
                ),

              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Container(
                  width: 150.0,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[


                        Icon(
                          FontAwesomeIcons.facebookF,
                          color: Colors.white,
                        ),

                        SizedBox(
                          width: 10.0,
                        ),
                        Text("Facebook" , style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold, fontSize: 18),)

                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                GestureDetector(
                  onTap: (){

                  },
                  child: Container(
                    width: 150.0,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[


                          Icon(
                            FontAwesomeIcons.google,
                            color: Colors.white,
                          ),

                          SizedBox(
                            width: 10.0,
                          ),
                          Text("Google" , style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold, fontSize: 18),)

                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),


          ],
        ),
      ),

    );
  }
}
