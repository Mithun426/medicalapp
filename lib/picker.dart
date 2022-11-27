import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:medicalapp/home.dart';

void main() {
  runApp(const MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late AnimationController loadingController;

  File? _file;
  PlatformFile? _platformFile;

  selectFile() async {
    final file = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['png', 'jpg', 'jpeg']
    );

    if (file != null) {
      setState(() {
        _file = File(file.files.single.path!);
        _platformFile = file.files.first;
      });
    }

    loadingController.forward();
  }

  @override
  void initState() {
    loadingController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..addListener(() { setState(() {}); });
    
    super.initState();
  }

  //////////////////////////////////

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(30),
      ),
    ),
        title: Text("Appointment",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        
        actions: [IconButton(onPressed: (){
           Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));

        }, icon:Icon(Icons.home))],
        backgroundColor:Colors.lightBlueAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
              width: 10,
            ),
        SizedBox( 
          width: 450,
          child: TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'Name',
                          hoverColor: Colors.black,
                          contentPadding: EdgeInsets.all(8),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 0.0),
                          ),
                          border: OutlineInputBorder()),),
        ),
            SizedBox( height: 20,
            width: 5,

            ),
             SizedBox(
              width: 450,
               child: TextFormField(
                      decoration: const InputDecoration(
                          labelText: ' Age',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 0.0),
                          ),
                          border: OutlineInputBorder()),),
             ),
                         const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 450,
                    child: DropdownButtonFormField(
                        decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 0.0),
                            ),
                            border: OutlineInputBorder()),
                        items: [
                          const DropdownMenuItem(
                            child: Text("Ophthalmology"),
                            value: 1,
                          ),
                          const DropdownMenuItem(
                            child: Text("Pediatrics"),
                            value: 2,
                          ),
                          const DropdownMenuItem(
                            child: Text("Obstetrics and Gynecology"),
                            value: 3,
                          ),
                           const DropdownMenuItem(
                            child: Text("Dermatology"),
                            value: 4,
                          ),

                        ],
                        hint: const Text("Select your specialization"),
                        onChanged: (value) {
                          setState(() {
                            var measure = value;
                            // measureList.add(measure);
                          });
                        },
                        onSaved: (value) {
                          setState(() {
                            var measure = value;
                          });
                        }),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox( 
          width: 450,
          child: TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'Enter date and Time',
                          hoverColor: Colors.black,
                          contentPadding: EdgeInsets.all(8),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 0.0),
                          ),
                          border: OutlineInputBorder()),),
        ),
            
            SizedBox(height: 50,),
            Text('Upload your id', style: TextStyle(fontSize: 15, color: Colors.grey.shade800, fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Text('File should be jpg, png', style: TextStyle(fontSize: 15, color: Colors.grey.shade500),),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: selectFile,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                child: SizedBox(
                  height: 100,
                  child: DottedBorder(
                    borderType: BorderType.RRect,
                    radius: Radius.circular(5),
                    dashPattern: [5, 4],
                    strokeCap: StrokeCap.round,
                    color: Colors.blue.shade400,
                    child: Container(
                      width: double.infinity,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade50.withOpacity(.3),
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Iconsax.folder_open, color: Colors.blue, size: 30,),
                          SizedBox(height: 15,),
                          Text('Select your file', style: TextStyle(fontSize: 15, color: Colors.grey.shade400),),
                        ],
                      ),
                    ),
                  ),
                )
              ),
            ),
            _platformFile != null
              ? Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Selected File', 
                      style: TextStyle(color: Colors.grey.shade400, fontSize: 15, ),),
                    SizedBox(height: 10,),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200,
                            offset: Offset(0, 1),
                            blurRadius: 3,
                            spreadRadius: 2,
                          )
                        ]
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.file(_file!, width: 70,)
                          ),
                          SizedBox(width: 10,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(_platformFile!.name, 
                                  style: TextStyle(fontSize: 13, color: Colors.black),),
                                SizedBox(height: 5,),
                                Text('${(_platformFile!.size / 1024).ceil()} KB', 
                                  style: TextStyle(fontSize: 13, color: Colors.grey.shade500),
                                ),
                                SizedBox(height: 5,),
                                Container(
                                  height: 5,
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.blue.shade50,
                                  ),
                                  child: LinearProgressIndicator(
                                    value: loadingController.value,
                                  )
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10,),
                        ],
                      )
                    ),
                    SizedBox(height: 20,),
                    // MaterialButton(
                    //   minWidth: double.infinity,
                    //   height: 45,
                    //   onPressed: () {},
                    //   color: Colors.black,
                    //   child: Text('Upload', style: TextStyle(color: Colors.white),),
                    // )
                  ],
                ))
              : Container(),
              SizedBox(height: 50,),
              ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(fontStyle:FontStyle.italic,),
        //background color of button
       side: BorderSide(width:3, color:Colors.black), //border width and color
       elevation: 3, //elevation of button
       shape: RoundedRectangleBorder( //to set border radius to button
                borderRadius: BorderRadius.circular(30)
            ),
        padding: EdgeInsets.all(20) //content padding inside button
   ),
               child: 
               const Text("Submit",),
               
                  ),
               
               
          ],
        ),
      ),
    );
  }
}