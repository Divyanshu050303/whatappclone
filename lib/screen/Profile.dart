import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(500, 5, 130, 107),
        title: Row(
          children: [
            const Text(
              "You",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              width: mediaQueryData.size.width * 0.55,
            ),
            const Icon(
              Icons.search,
              color: Colors.white,
            )
          ],
        ),
      ),
      body: SizedBox(
        width: mediaQueryData.size.width,
        height: mediaQueryData.size.height,
        child: SingleChildScrollView(
          child: Stack(children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: mediaQueryData.size.height * 0.08,
                    ),
                    child: Container(
                      width: mediaQueryData.size.width * 0.25,
                      height: mediaQueryData.size.height * 0.12,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey, // Customize the ring color
                            width: 2.0, // Customize the ring width
                          ),
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(100)),
                      child: const Padding(
                        padding: EdgeInsets.only(top: 25.0),
                        child: Icon(Icons.person, color: Colors.white, size: 90),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: mediaQueryData.size.height * 0.05,
                    ),
                    child: const Column(
                      children: [
                        Text(
                          "divyanshu singh",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "busy",
                          style: TextStyle(color: Colors.black45, fontSize: 18),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: mediaQueryData.size.height * 0.02),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // SizedBox(width: mediaQueryData.size.width*0.1,),
                        Icon(
                          Icons.account_circle_outlined,
                          color: Color.fromARGB(500, 5, 130, 107),
                        ),
                        // SizedBox(width: mediaQueryData.size.width*0.2,),
                        Icon(
                          Icons.lock,
                          color: Color.fromARGB(500, 5, 130, 107),
                        ),
                        // SizedBox(width: mediaQueryData.size.width*0.2,),
                        Icon(
                          Icons.contacts_rounded,
                          color: Color.fromARGB(500, 5, 130, 107),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: mediaQueryData.size.height * 0.02,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: mediaQueryData.size.width * 0.05),
                          child: const Text(
                            "Profile",
                            style: TextStyle(
                                color: Color.fromARGB(500, 5, 130, 107),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        // SizedBox(width: mediaQueryData.size.width*0.15,),
                        const Text(
                          "Privacy",
                          style: TextStyle(
                              color: Color.fromARGB(500, 5, 130, 107),
                              fontWeight: FontWeight.bold),
                        ),
                        // SizedBox(width: mediaQueryData.size.width*0.13,),
                        const Text(
                          "Contacts",
                          style: TextStyle(
                              color: Color.fromARGB(500, 5, 130, 107),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                      width: mediaQueryData.size.width,
                      height: mediaQueryData.size.height * 0.07,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: mediaQueryData.size.width * 0.1,
                            top: mediaQueryData.size.height * 0.02),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star_border,
                              color: Colors.black45,
                            ),
                            SizedBox(
                              width: mediaQueryData.size.width * 0.1,
                            ),
                            Text(
                              "Stared Message",
                              style: const TextStyle(fontSize: 18),
                            )
                          ],
                        ),
                      )),
                  SizedBox(
                      width: mediaQueryData.size.width,
                      height: mediaQueryData.size.height * 0.07,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: mediaQueryData.size.width * 0.1,
                            top: mediaQueryData.size.height * 0.02),
                        child: Row(
                          children: [
                            Icon(
                              Icons.devices,
                              color: Colors.black45,
                            ),
                            SizedBox(
                              width: mediaQueryData.size.width * 0.1,
                            ),
                            Text(
                              "Linked devices",
                              style: const TextStyle(fontSize: 18),
                            )
                          ],
                        ),
                      )),
                  SizedBox(
                      width: mediaQueryData.size.width,
                      height: mediaQueryData.size.height * 0.07,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: mediaQueryData.size.width * 0.1,
                            top: mediaQueryData.size.height * 0.02),
                        child: Row(
                          children: [
                            Icon(
                              Icons.currency_rupee,
                              color: Colors.black45,
                            ),
                            SizedBox(
                              width: mediaQueryData.size.width * 0.1,
                            ),
                            Text(
                              "Payments",
                              style: const TextStyle(fontSize: 18),
                            )
                          ],
                        ),
                      )),
                  Padding(
                    padding:
                        EdgeInsets.only(top: mediaQueryData.size.height * 0.02),
                    child: Container(
                      width: mediaQueryData.size.width,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey, // Customize the ring color
                          width: 0.5, // Customize the ring width
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                      width: mediaQueryData.size.width,
                      height: mediaQueryData.size.height * 0.07,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: mediaQueryData.size.width * 0.1,
                            top: mediaQueryData.size.height * 0.02),
                        child: Row(
                          children: [
                            Icon(
                              Icons.key,
                              color: Colors.black45,
                            ),
                            SizedBox(
                              width: mediaQueryData.size.width * 0.1,
                            ),
                            Text(
                              "Account",
                              style: const TextStyle(fontSize: 18),
                            )
                          ],
                        ),
                      )),
                  SizedBox(
                      width: mediaQueryData.size.width,
                      height: mediaQueryData.size.height * 0.07,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: mediaQueryData.size.width * 0.1,
                            top: mediaQueryData.size.height * 0.02),
                        child: Row(
                          children: [
                            Icon(
                              Icons.chat,
                              color: Colors.black45,
                            ),
                            SizedBox(
                              width: mediaQueryData.size.width * 0.1,
                            ),
                            Text(
                              "Avatar",
                              style: const TextStyle(fontSize: 18),
                            )
                          ],
                        ),
                      )),
                  SizedBox(
                      width: mediaQueryData.size.width,
                      height: mediaQueryData.size.height * 0.07,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: mediaQueryData.size.width * 0.1,
                            top: mediaQueryData.size.height * 0.02),
                        child: Row(
                          children: [
                            Icon(
                              Icons.chat,
                              color: Colors.black45,
                            ),
                            SizedBox(
                              width: mediaQueryData.size.width * 0.1,
                            ),
                            Text(
                              "chats",
                              style: const TextStyle(fontSize: 18),
                            )
                          ],
                        ),
                      )),
                  SizedBox(
                      width: mediaQueryData.size.width,
                      height: mediaQueryData.size.height * 0.07,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: mediaQueryData.size.width * 0.1,
                            top: mediaQueryData.size.height * 0.02),
                        child: Row(
                          children: [
                            Icon(
                              Icons.notifications,
                              color: Colors.black45,
                            ),
                            SizedBox(
                              width: mediaQueryData.size.width * 0.1,
                            ),
                            Text(
                              "Notification",
                              style: const TextStyle(fontSize: 18),
                            )
                          ],
                        ),
                      )),
                  SizedBox(
                      width: mediaQueryData.size.width,
                      height: mediaQueryData.size.height * 0.07,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: mediaQueryData.size.width * 0.1,
                            top: mediaQueryData.size.height * 0.02),
                        child: Row(
                          children: [
                            Icon(
                              Icons.circle_outlined,
                              color: Colors.black45,
                            ),
                            SizedBox(
                              width: mediaQueryData.size.width * 0.1,
                            ),
                            Text(
                              "Storage and data",
                              style: const TextStyle(fontSize: 18),
                            )
                          ],
                        ),
                      )),
                  SizedBox(
                      width: mediaQueryData.size.width,
                      height: mediaQueryData.size.height * 0.07,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: mediaQueryData.size.width * 0.1,
                            top: mediaQueryData.size.height * 0.02),
                        child: Row(
                          children: [
                            Icon(
                              Icons.language,
                              color: Colors.black45,
                            ),
                            SizedBox(
                              width: mediaQueryData.size.width * 0.1,
                            ),
                            Text(
                              "App language",
                              style: const TextStyle(fontSize: 18),
                            )
                          ],
                        ),
                      )),
                  SizedBox(
                      width: mediaQueryData.size.width,
                      height: mediaQueryData.size.height * 0.07,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: mediaQueryData.size.width * 0.1,
                            top: mediaQueryData.size.height * 0.02),
                        child: Row(
                          children: [
                            Icon(
                              Icons.help_outline_sharp,
                              color: Colors.black45,
                            ),
                            SizedBox(
                              width: mediaQueryData.size.width * 0.1,
                            ),
                            Text(
                              "Help",
                              style: const TextStyle(fontSize: 18),
                            )
                          ],
                        ),
                      )),
                  SizedBox(
                      width: mediaQueryData.size.width,
                      height: mediaQueryData.size.height * 0.07,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: mediaQueryData.size.width * 0.1,
                            top: mediaQueryData.size.height * 0.02),
                        child: Row(
                          children: [
                            Icon(
                              Icons.group,
                              color: Colors.black45,
                            ),
                            SizedBox(
                              width: mediaQueryData.size.width * 0.1,
                            ),
                            Text(
                              "Invite a friend",
                              style: const TextStyle(fontSize: 18),
                            )
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Text(
                        "from",
                        style: TextStyle(color: Colors.black45, fontSize: 16),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: mediaQueryData.size.width * 0.4, bottom: 40),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/meta.png",
                              width: 20,
                              height: 20,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Meta",
                              style: TextStyle(fontSize: 18, color: Colors.black),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: mediaQueryData.size.height * 0.165,
                left: mediaQueryData.size.width * 0.527,
              ),
              child: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(500, 5, 130, 107),
                ),
                child: const Icon(
                  Icons.qr_code_outlined,
                  color: Colors.white,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
