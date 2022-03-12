//*************************************************************
// GDSC Flutter course - session 01 - Thursday, March 10, 2022
// Task 01 - Profile page
// by\ Wael Ramzy Mohamed, waelramzymohamed@gmail.com
//*************************************************************
import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Profile App",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My Profile"),
          centerTitle: true,
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.lightGreenAccent,
            size: 40,
          ),
          actions: const [
            Icon(
              Icons.edit,
              color: Colors.red,
              size: 40,
            )
          ],
        ),
        backgroundColor: Colors.white70,
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset("assets/images/Photo_Oudy.jpeg",
                height: 200, width: 150),
            const Center(
              child: Text.rich(TextSpan(
                  text: "Joudy",
                  style: TextStyle(
                      color: Colors.deepPurpleAccent,
                      fontSize: 30,
                      fontStyle: FontStyle.italic),
                  children: [
                    TextSpan(
                      text: " Wael Ramzy",
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 25,
                          fontStyle: FontStyle.italic),
                    )
                  ])),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                ListTile(
                  title: Text("")
                ),
                ListTile(
                  title: Text(
                    "December 09, 2015",
                    style: TextStyle(color: Colors.orange),
                  ),
                  subtitle: Text("Date of Birth"),
                  leading: Icon(Icons.date_range, color: Colors.indigoAccent,),
                ),
                ListTile(
                  title: Text(
                    "Joudy.Wael9122015@gmail.com",
                    style: TextStyle(color: Colors.teal),
                  ),
                  subtitle: Text("E-Mail"),
                  leading: Icon(Icons.alternate_email_outlined, color: Colors.indigoAccent,),
                  trailing: Icon(Icons.email),
                ),
                ListTile(
                  title: Text(
                    "Modern Narmer language School",
                    style: TextStyle(color: Colors.pinkAccent),
                  ),
                  subtitle: Text("School"),
                  leading: Icon(Icons.school, color: Colors.indigoAccent,),
                  trailing: Icon(Icons.map),
                ),
                ListTile(
                  title: Text(
                    "+2-01008897814",
                    style: TextStyle(color: Colors.blue),
                  ),
                  subtitle: Text("Mobile Number"),
                  leading: Icon(Icons.phone_android, color: Colors.indigoAccent,),
                  trailing: Icon(Icons.phone),
                ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: const Text(
          "Not verified yet, Please check your email.",
          style: TextStyle(
            color: Colors.red,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
