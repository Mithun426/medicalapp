// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:medicalapp/login.dart';
import 'package:medicalapp/picker.dart';
 void main(List<String> args) {
  runApp(MaterialApp(home: Home(),
  debugShowCheckedModeBanner: false
   ) );
  
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          toolbarHeight: 90,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            children: [
              SizedBox(width: 5),
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Container(
                  margin: EdgeInsets.all(0.0),
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT591QYtFoi70o7HL6x0-gMjAGy2JAgaTJ9kQ&usqp=CAU"),
                        fit: BoxFit.cover,
                        scale: 1.2),
                  ),
                ),
              ),
              SizedBox(width: 25),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: "PoppinsMedium"),
                  ),
                  Text(
                    "User",
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.7),
                        fontSize: 14,
                        fontFamily: "PoppinsMedium"),
                  ),
                ],
              )
            ],
          ),
          actions: [
          
            IconButton(
              icon: Icon(Icons.search),onPressed: (){},
              tooltip: "Search",
              
              color: Colors.black.withOpacity(0.75),
              
            ),

            
            SizedBox(
              width: 28,
            ),
           PopupMenuButton<int>(
            icon:Icon(Icons.menu,color: Colors.black,),
            color: Colors.white,
            
              itemBuilder: (context) => [
                // PopupMenuItem 1
                PopupMenuItem( 
                  value: 1,
                  // row with 2 children
                  child: Row(
                    children: [
                      Icon(Icons.person_add_alt_1_outlined,color:Colors.blueGrey,),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Your account")
                    ],
                  ),
                ),

PopupMenuItem( 
                  value: 2,
                  // row with 2 children
                  child: Row(
                    children: [
                      Icon(Icons.history,color: Colors.blueGrey,),
                      SizedBox(
                        width: 10,
                      ),
                      Text("History")
                    ],
                  ),
                ),

                // PopupMenuItem 2
                PopupMenuItem(
                  value: 3,
                  // row with two children
                  child: Row(  
                    children: [
                      Icon(Icons.chrome_reader_mode,color: Colors.blueGrey),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Feed back")
                    ],
                  )
                  ),

                   PopupMenuItem(
                  value: 4,
                  // row with two children
                  child: Row(  
                    children: [
                      IconButton(onPressed: (){
                         Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => MyApp()));
                      }, icon:Icon(Icons.logout),
                      color:Colors.blueGrey,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Sign out")
                    ],
                  )
                  ),
              ]
                  ),
          
          ],
        ),
        body: ListView(
          children: [
            CarouselSlider(
              items: [
                //1st Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://images.pexels.com/photos/356040/pexels-photo-356040.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //2nd Image of Slider
                Container(
                  margin: EdgeInsets.all(0.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://images.yourstory.com/cs/wordpress/2018/09/Healthcare-IT.jpg?w=752&fm=auto&ar=2:1&mode=crop&crop=faces"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //3rd Image of Slider
                Container(
                  margin: EdgeInsets.all(0.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://images.pexels.com/photos/4226769/pexels-photo-4226769.jpeg?auto=compress&cs=tinysrgb&w=400"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //4th Image of Slider
                Container(
                  margin: EdgeInsets.all(0.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://images.pexels.com/photos/139398/thermometer-headache-pain-pills-139398.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //5th Image of Slider
                Container(
                  margin: EdgeInsets.all(0.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://images.pexels.com/photos/3259629/pexels-photo-3259629.jpeg?auto=compress&cs=tinysrgb&w=400"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],

              //Slider Container properties
              options: CarouselOptions(
                height: 190.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 500),
                viewportFraction: 0.82,
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top doctors",
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    "View all",
                    style: TextStyle(fontSize: 15, color: Colors.indigo),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 80,
                    height: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://media.istockphoto.com/id/1192129265/photo/male-east-indian-doctor-portrait-stock-photo.jpg?s=612x612&w=0&k=20&c=r7XQlqRLDPnz3_dO88_oN_vrEL5Ys8ihehfEM4EFKq4="),
                            fit: BoxFit.cover)),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dr.Shaun",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Pediatrics.",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow[800],
                          ),
                          SizedBox(width: 2),
                          Icon(
                            Icons.star,
                            color: Colors.yellow[800],
                          ),
                          SizedBox(width: 2),
                          Icon(
                            Icons.star,
                            color: Colors.yellow[800],
                          ),
                          SizedBox(width: 2),
                          Icon(
                            Icons.star,
                            color: Colors.yellow[800],
                          ),
                        ],
                      )
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "open",
                      style: TextStyle(color: Colors.black),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.grey.withOpacity(0.2),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 80,
                    height: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFTuo-sts7dwqLlG6WJ4p_Zz4wSZnWILthORSgIaiZh86H0cXjNxwMxU6JtDpWkt1xajk&usqp=CAU"),
                            fit: BoxFit.cover)),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dr.Micheal",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Ophthalmologist",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow[800],
                          ),
                          SizedBox(width: 2),
                          Icon(
                            Icons.star,
                            color: Colors.yellow[800],
                          ),
                          SizedBox(width: 2),
                          Icon(
                            Icons.star,
                            color: Colors.yellow[800],
                          ),
                          SizedBox(width: 2),
                          Icon(
                            Icons.star,
                            color: Colors.yellow[800],
                          ),
                        ],
                      )
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "open",
                      style: TextStyle(color: Colors.black),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.grey.withOpacity(0.2),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 80,
                    height: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRK0hQBAs0uUoC7rbP1M-jTTpJNC9lNmS-QPQ&usqp=CAU "),
                            fit: BoxFit.cover)),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dr.John",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 8),
                      Text(
                        " cardiologist",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow[800],
                          ),
                          SizedBox(width: 2),
                          Icon(
                            Icons.star,
                            color: Colors.yellow[800],
                          ),
                          SizedBox(width: 2),
                          Icon(
                            Icons.star,
                            color: Colors.yellow[800],
                          ),
                          SizedBox(width: 2),
                          Icon(
                            Icons.star,
                            color: Colors.yellow[800],
                          ),
                        ],
                      )
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "open",
                      style: TextStyle(color: Colors.black),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.grey.withOpacity(0.2),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 80,
                    height: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_1xQ39ioxDWXJzK287InexrLVffPwscxjKkh5Lv4iOFbjSInjyzB-LiqnTILY8Z6DJls&usqp=CAU"),
                            fit: BoxFit.cover)),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dr.Daisy",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 8),
                      Text(
                        " orthopedic",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow[800],
                          ),
                          SizedBox(width: 2),
                          Icon(
                            Icons.star,
                            color: Colors.yellow[800],
                          ),
                          SizedBox(width: 2),
                          Icon(
                            Icons.star,
                            color: Colors.yellow[800],
                          ),
                          SizedBox(width: 2),
                          Icon(
                            Icons.star,
                            color: Colors.yellow[800],
                          ),
                        ],
                      )
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "open",
                      style: TextStyle(color: Colors.black),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.grey.withOpacity(0.2),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 80,
                    height: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtmkU4_uLqrbFpHYVg2yGWuQ91mWSTpmYinw&usqp=CAU"),
                            fit: BoxFit.cover)),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dr.Zenya",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 8),
                      Text(
                        " Cardiologist",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow[800],
                          ),
                          SizedBox(width: 2),
                          Icon(
                            Icons.star,
                            color: Colors.yellow[800],
                          ),
                          SizedBox(width: 2),
                          Icon(
                            Icons.star,
                            color: Colors.yellow[800],
                          ),
                          SizedBox(width: 2),
                          Icon(
                            Icons.star,
                            color: Colors.yellow[800],
                          ),
                        ],
                      )
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "open",
                      style: TextStyle(color: Colors.black),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.grey.withOpacity(0.2),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          
        selectedItemColor: Colors.lightBlueAccent,
        unselectedItemColor: Colors.blueGrey,
        currentIndex: 5,
      
         
      
        items: [
          BottomNavigationBarItem(
            label:" Consultation",
            icon: IconButton(onPressed:(){
              Navigator.push(context,
                              MaterialPageRoute(builder: (context) => HomePage()));
            }, icon:Icon(Icons.book))
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_pharmacy_outlined),
            label: "Pharmacy",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.child_care_rounded), label: "Child Care"),

               BottomNavigationBarItem(
            icon: Icon(Icons.health_and_safety_outlined),
            label: "Nursing care",),

             BottomNavigationBarItem(
            icon: Icon(Icons.monitor_heart),
            label: "Infrastructure",),
             BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",)


        ],
      ),
      );
    
  }
}
