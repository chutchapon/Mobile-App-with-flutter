import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key key}) : super(key: key);

  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                // cover photo
                Container(
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                    /* borderRadius: BorderRadius.circular(0),
                    border: Border.all(width: 2.0, color: Colors.green), */
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://bn02pap001files.storage.live.com/y4mG1xPu3pvhvyQ8tVAkU_HjCQPkSerf32qiKn2J5nSavXm2yKQOngkksOXc0uyDxu4jc-rSDbWLeoCFR2p8Bya7DN8EGLe391riM1c2lvntFmh8M4ffJCsrSI1dK5LwF8yCOrM6OjSzH9m2xEE7OEPewBW8Ob9Bbm34VyPsWdCK1E7Cx_bGzaoHyQo7jIgqiBG?width=3840&height=2400&cropmode=none"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                //profile photo
                Positioned(
                  left: 10.0,
                  bottom: -50.0,
                  child: Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.0),
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://bn02pap001files.storage.live.com/y4mahxg-CGQsdjoXL8oddwzu0Pp-KjBAgrBKGJHnIrt8R1kiqSK1yJonlxzm31TyPdoV-qSUNQ4ZEeHkCs0oauuDrHd7-IhnDRZn8Lnrsxe0CK9EqsJauqCxEUdMm2WjYlBj8hcZHq3jcaG72UE6plhEvripxOnM00sVMk0EUZn-t9QdYbA58TZk8MjIQhiIxvz?width=640&height=960&cropmode=none"),
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(
                        color: Colors.white60,
                        width: 4.0,
                      ),
                    ),
                  ),
                ),
                //edit profile button
                Positioned(
                  right: 20.0,
                  bottom: -55.0,
                  child: Container(
                      /* decoration: BoxDecoration(
                        border: Border.all(color: Colors.red),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            5,
                          ),
                        ),
                      ), */
                      width: 90,
                      height: 30,
                      child: ElevatedButton(
                        child: Text("Edit Profile"),
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue.shade300,
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      )),
                ),
                //profile
                Positioned(
                  left: 10.0,
                  right: 10.0,
                  bottom: -250.0,
                  child: Container(
                    /*  decoration: BoxDecoration(
                      border: Border.all(color: Colors.yellow),
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          5,
                        ),
                      ),
                    ), */
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 250,
                          width: 385,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 50),
                                        child: Text(
                                          "Chutchapon Soyklum",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Text(
                                                "@Chutchapon",
                                                style: TextStyle(
                                                  color: Colors.white60,
                                                  fontSize: 15,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 25),
                                              child: Text(
                                                "My Profile Create by Dart&Flutter\n This Profile Version is 0.1 beta",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              child: Row(
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        top: 25),
                                                    padding: EdgeInsets.only(
                                                        left: 5),
                                                    child: Icon(
                                                        Icons
                                                            .location_on_outlined,
                                                        color: Colors.white60,
                                                        size: 15),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        top: 25),
                                                    padding: EdgeInsets.only(
                                                        left: 5),
                                                    child: Text(
                                                      "Chiang Mai,Thailand",
                                                      style: TextStyle(
                                                        color: Colors.white60,
                                                        fontSize: 15,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        top: 25),
                                                    padding: EdgeInsets.only(
                                                        left: 5),
                                                    child: Icon(Icons.link,
                                                        color: Colors.white60,
                                                        size: 15),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        top: 25),
                                                    padding: EdgeInsets.only(
                                                        left: 5),
                                                    child: Text(
                                                      "github : chutchapon",
                                                      style: TextStyle(
                                                        color: Colors.white60,
                                                        fontSize: 15,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 5),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                        left: 5),
                                                    child: Icon(Icons.cake,
                                                        color: Colors.white60,
                                                        size: 15),
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                        left: 5),
                                                    child: Text(
                                                      "Born : 22 September",
                                                      style: TextStyle(
                                                        color: Colors.white60,
                                                        fontSize: 15,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                        left: 5),
                                                    child: Icon(
                                                        Icons
                                                            .calendar_today_rounded,
                                                        color: Colors.white60,
                                                        size: 15),
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                        left: 5),
                                                    child: Text(
                                                      "Joined : 6 March 2021",
                                                      style: TextStyle(
                                                        color: Colors.white60,
                                                        fontSize: 15,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //navigationbar profile
                Positioned(
                  left: 10.0,
                  right: 10.0,
                  bottom: -280.0,
                  child: Container(
                    /* decoration: BoxDecoration(
                      border: Border.all(color: Colors.red),
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          5,
                        ),
                      ),
                    ), */
                    width: double.infinity,
                    height: 30,
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 5),
                          child: PopupMenuItem(
                            value: 1,
                            child: Text(
                              "Button 1",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        // this contianer is button for change infoscreen follow the button
                        // need help and update
                        Container(
                          padding: EdgeInsets.only(left: 5),
                          child: PopupMenuItem(
                            value: 2,
                            child: Text(
                              "Button 2",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 5),
                          child: PopupMenuItem(
                            value: 3,
                            child: Text(
                              "Button 3",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    /* child: ElevatedButton(
                      child: Text("for profile"),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ), */
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
