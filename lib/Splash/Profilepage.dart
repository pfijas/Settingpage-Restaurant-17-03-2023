import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile_1 extends StatefulWidget {
  const Profile_1({Key? key}) : super(key: key);

  @override
  State<Profile_1> createState() => _Profile_1State();
}

class _Profile_1State extends State<Profile_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.black,
            )),
        title: Text("Edit Profile", style: GoogleFonts.notoSerifLao()),
        backgroundColor: Colors.white10,
        elevation: 100,
      ),
      body: Container(
        color: Colors.white24,
        height: 800,
        child: SingleChildScrollView(
          child: Column(children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 55,
                  backgroundImage: AssetImage("assets/images/profile.jpg"),
                ),
              ],
            ),
            TextButton(
              onPressed: null,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("Edit profile photo"), Icon(Icons.edit)],
              ),
            ),
            SizedBox(
              height: 50,
              child: Column(
                children: [
                  Text(
                    " PALAKKKAL Fijas ",
                    style: GoogleFonts.lora(),
                  ),
                ],
              ),
            ),
            // Card(
            //   child: Row(
            //     children:[
            //       ListTile(
            //         leading: Icon(Icons.favorite,
            //         ),
            //       )
            //     ],),
            // ),

            Container(
              color: Colors.white24,
              child: Card(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                elevation: 50,
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.library_books_outlined),
                      title: Text("My Orders"),
                      trailing: Icon(Icons.chevron_right_outlined),
                    ),
                    ListTile(
                      leading: Icon(Icons.payment),
                      title: Text("Payments"),
                      trailing: Icon(Icons.chevron_right_outlined),
                    ),
                    ListTile(
                      leading: Icon(Icons.location_history),
                      title: Text("Address Book"),
                      trailing: Icon(Icons.chevron_right_outlined),
                    ),
                    ListTile(

                      leading: Icon(Icons.settings),
                      title: Text("Settings"),
                      trailing: Icon(Icons.chevron_right_outlined),
                    ),
                    ListTile(
                      leading: Icon(Icons.logout),
                      title: Text("Log out"),
                      trailing: Icon(Icons.chevron_right_outlined),
                    ),
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
