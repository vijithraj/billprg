import 'package:billprg/secondpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  )
      );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
       Scaffold(
        backgroundColor: Colors.black,
          body: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Never forget to pay ",style: TextStyle(
                  fontSize: 40,color: Colors.white,
                ),),
                Text("a bill again",style: TextStyle(
                  fontSize: 30,color: Colors.white
                ),),
                SizedBox(height: 30,),
                ElevatedButton(onPressed: (){
                  Navigator.pushReplacement(
                      context,
                      new MaterialPageRoute(
                          builder: (BuildContext context) => new bill()));
                }, child: Text('sign up'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    shape: RoundedRectangleBorder(borderRadius:
                    BorderRadius.circular(10),),

                  ),
                ),
                 SizedBox(height: 20,),
                 Card(
                   child: TextField(
                     decoration: InputDecoration(
                       hintText: ("Continue with Google"),
                       icon: Icon(Icons.camera_outlined),enabledBorder:
                         OutlineInputBorder(borderSide: BorderSide(width: 2,
                         color: Colors.white),
                         borderRadius: BorderRadius.circular(30))
                     )

                   ),
                 ),
                SizedBox(height: 20,),
                Card(
                  child: TextField(
                      decoration: InputDecoration(
                          hintText: ("Continue with Apple"),
                          icon: Icon(Icons.apple,),enabledBorder:
                      OutlineInputBorder(borderSide: BorderSide(width: 2,
                          color: Colors.white),
                          borderRadius: BorderRadius.circular(30))
                      )

                  ),
                ),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: (){}, child: Text('Log in'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(borderRadius:
                    BorderRadius.circular(10),),

                  ),
                ),





              ],
            ),
          ),


        );


  }
}
