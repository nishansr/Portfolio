//ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:portfolio/components/card.dart';
import '../components/tabs_web.dart';
import '../components/text.dart';
import '../components/text_input.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;
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

          //! About Page
          Container(
            height: heightDevice / 1.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  "web.jpg",
                  height: heightDevice / 1.7,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SansBold("About me", 40),
                    SizedBox(height: 15),
                    Sans(
                        "Hello! I'm Nishan Bishwokarma. I specialize in flutter development.",
                        20),
                    Sans(
                        "I strive to ensure astounding performance with state of ",
                        20),
                    Sans(
                        "the art security for Android, IOS, Web, Mac, Linux and Windows.",
                        20),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color.fromARGB(255, 245, 200, 235),
                              style: BorderStyle.solid,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: EdgeInsets.all(7),
                          child: Sans("Flutter", 20),
                        ),
                        SizedBox(width: 7),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color.fromARGB(255, 245, 200, 235),
                              style: BorderStyle.solid,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: EdgeInsets.all(7),
                          child: Sans("Firebase", 20),
                        ),
                        SizedBox(width: 7),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color.fromARGB(255, 245, 200, 235),
                              style: BorderStyle.solid,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: EdgeInsets.all(7),
                          child: Sans("Android", 20),
                        ),
                        SizedBox(width: 7),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color.fromARGB(255, 245, 200, 235),
                              style: BorderStyle.solid,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: EdgeInsets.all(7),
                          child: Sans("IOS", 20),
                        ),
                        SizedBox(width: 7),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color.fromARGB(255, 245, 200, 235),
                              style: BorderStyle.solid,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: EdgeInsets.all(7),
                          child: Sans("Linux", 20),
                        ),
                        SizedBox(width: 7),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),

          //! Works Page
          Container(
            height: heightDevice / 1.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SansBold("What I do?", 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AnimatedCard(
                      imagePath: "webL.png",
                      text: "Web Development",
                      reverse: true,
                    ),
                    AnimatedCard(imagePath: "app.png", text: "App Development"),
                    AnimatedCard(
                        imagePath: "firebase.png", text: "Backend Development"),
                  ],
                ),
              ],
            ),
          ),

          //! Contact page
          Container(
            height: heightDevice,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SansBold("Contact me", 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        TextForm(
                            heading: "First Name",
                            width: widthDevice / 4,
                            hintText: "Enter your first name!"),
                        SizedBox(height: 15),
                        TextForm(
                            heading: "E-mail",
                            width: widthDevice / 4,
                            hintText: "Enter your email address!"),
                      ],
                    ),
                    Column(
                      children: [
                        TextForm(
                            heading: "Last Name",
                            width: widthDevice / 4,
                            hintText: "Enter your last name!"),
                        SizedBox(height: 15),
                        TextForm(
                            heading: "Phone Number",
                            width: widthDevice / 4,
                            hintText: "Enter your phone number!"),
                      ],
                    ),
                  ],
                ),
                TextForm(
                  heading: "Message",
                  width: widthDevice / 1.5,
                  hintText: "Enter your message!",
                  maxLine: 6,
                ),
                MaterialButton(
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 60,
                  minWidth: 200,
                  color: Color.fromARGB(255, 245, 200, 235),
                  child: Sans("Submit", 20),
                  onPressed: () {},
                ),
                SizedBox(height: 25)
              ],
            ),
          )
        ],
      ),
    );
  }
}
