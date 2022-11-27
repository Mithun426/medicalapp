import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:medicalapp/home.dart';





void main() {
  runApp(MaterialApp(home: MyApp()
  ,debugShowCheckedModeBanner: false,));
}

class MyApp extends StatelessWidget {
  final _form = GlobalKey<FormState>(); //for storing form state.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(30),
      ),
    ),
        
        backgroundColor:Colors.lightBlue,
        title: Text("Login"),
        centerTitle: true,
      ),
  
      body:
    
      
       Center(
         child: Form(
          key: _form, //assigning key to form
          
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Container(
                padding: EdgeInsets.all(20),
                
                  child: TextFormField(
                    decoration: const InputDecoration(
                      
                        labelText: 'Email',
                        
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color:Colors.blueAccent,width:2.0),
                          borderRadius:BorderRadius.all(Radius.circular(4.0))
                        )),

                    validator: (text) {
                      if (text == null || !(text.contains('@')) || text.isEmpty) {
                        return "Enter a valid email address!";
                      }
                      return null;
                    },
                  ),
                
              ),

              Container(
                padding: EdgeInsets.all(20),
             
                  child: TextFormField(
                    keyboardType:TextInputType.visiblePassword ,
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(20),
                        labelText: 'Password', 
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color:Colors.blueAccent,width:2.0),
                          borderRadius:BorderRadius.all(Radius.circular(4.0))
                          
                        )),
                    validator: (text) {
                      if (text == null || !(text.length >= 6) || text.isEmpty) {
                        return "Enter valid password atmost 5 characters!";
                      }
                      return null;
                    },
                  ),
                
              ),
            
              
                
                  
                 SizedBox(height: 30,),
            

             
                    Container(
                      child: Column(
                        children: [
                          ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            textStyle: TextStyle(fontStyle:FontStyle.italic,),
        //background color of button
       side: BorderSide(width:3, color:Colors.blueGrey), //border width and color
       elevation: 3, //elevation of button
       shape: RoundedRectangleBorder( //to set border radius to button
                            borderRadius: BorderRadius.circular(30)
            ),
        padding: EdgeInsets.symmetric(horizontal:30,vertical: 20)//content padding inside button
   ),
                          
                            child: const Text("Sign In",),
                           
                              
                                  onPressed: () {
                                    
                                    final isValid = _form.currentState!.validate();
                                    if (isValid) {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => Home()));
                                    } else {
                                      Fluttertoast.showToast(
                                          msg: "Username / Password is Incorrect",
                                          gravity: ToastGravity.BOTTOM,
                                          fontSize: 16.0,
                                          backgroundColor:Colors.white,
                                          textColor: Colors.black,
                                          webPosition: "center",
                                          );
                                    }
                                  }),
                        ],
                      ),
                    ),
                  
                
              
                
              
              
              
            ],
          ),
      ),
       ),
    );
  }
}