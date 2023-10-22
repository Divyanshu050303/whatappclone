import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> with TickerProviderStateMixin {
  late TabController tabController;
  int selectedIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
    tabController.addListener(() {
      setState(() {
        selectedIndex = tabController.index;
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      height: mediaQueryData.size.height,
      width: mediaQueryData.size.width,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            width: mediaQueryData.size.width,
            height: mediaQueryData.size.height * 0.2,
            color: const Color.fromARGB(500, 5, 130, 107),
            child: Padding(
              padding: EdgeInsets.only(top: mediaQueryData.size.height * 0.02),
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: mediaQueryData.size.height * 0.05,
                        left: mediaQueryData.size.width * 0.08,
                        right: mediaQueryData.size.width * 0.06),
                    child: Row(
                      children: [
                        const Text(
                          "WhatsApp",
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              decoration: TextDecoration.none,
                              fontFamily: 'Roboto'),
                        ),
                        SizedBox(
                          width: mediaQueryData.size.width * 0.2,
                        ),
                        const Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.white,
                          size: 27,
                        ),
                        SizedBox(
                          width: mediaQueryData.size.width * 0.05,
                        ),
                        const Icon(
                          Icons.search_outlined,
                          color: Colors.white,
                          size: 27,
                        ),
                        SizedBox(
                          width: mediaQueryData.size.width * 0.04,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.grey.shade400,
                          child: const Icon(
                            Icons.person_2_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: mediaQueryData.size.height * 0.12),
                    child: Container(
                      width: mediaQueryData.size.width,
                      height: mediaQueryData.size.height,
                      color: const Color.fromARGB(500, 5, 130, 107),
                      child: DefaultTabController(
                          length: 4,
                          child: Scaffold(
                            bottomNavigationBar: Container(
                              height: mediaQueryData.size.height * 0.085,
                              width: mediaQueryData.size.width,
                              color: const Color.fromARGB(500, 5, 130, 107),
                              child:   const TabBar(
                                tabs: [
                                  Tab(
                                      icon: Icon(
                                    Icons.group,
                                  )),
                                  Tab(
                                   child: Text("Home", style: TextStyle(color: Colors.white, fontSize: 20),),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 8.0),
                                    child: Tab( child: Text("Updates", style: TextStyle(color: Colors.white, fontSize: 20),),),
                                  ),
                                  Tab(
                                    child: Text("Calls", style: TextStyle(color: Colors.white, fontSize: 20),),
                                  ),
                                ],
                              ),
                            ),
                          )),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
