//ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import '../components.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: Drawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black,
          size: 25,
        ),
        backgroundColor: Colors.white,
        title: Row(
          children: const [
            Spacer(
              flex: 5,
            ),
            TabsWeb("Home"),
            Spacer(),
            TabsWeb("Works"),
            Spacer(),
            TabsWeb("Blog"),
            Spacer(),
            TabsWeb("About"),
            Spacer(),
            TabsWeb("Contact"),
            Spacer(),
          ],
        ),
      ),
      body: ListView(
        children: [
          //! Landing Page
          Container(
            height: heightDevice - 56,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 245, 200, 235),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          )),
                      child: Sans("Hello, I'm", 20),
                    ),
                    SizedBox(height: 15),
                    SansBold("Nishan Bishwokarma", 50),
                    Sans("A young Learner", 35),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Icon(Icons.mail),
                        SizedBox(width: 20),
                        Sans("nishanbishokarma98@gmail.com", 20)
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.call),
                        SizedBox(width: 20),
                        Sans("+977 9806673945", 20)
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.location_pin),
                        SizedBox(width: 20),
                        Sans("Pokhara - 29, Bhandardhik", 20)
                      ],
                    )
                  ],
                ),
                CircleAvatar(
                  radius: 173,
                  backgroundColor: Color.fromARGB(255, 238, 192, 228),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/profile.png"),
                    radius: 170,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
