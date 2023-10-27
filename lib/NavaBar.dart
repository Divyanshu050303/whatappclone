import 'package:flutter/material.dart';
import 'package:whatappclone/screen/Calls.dart';
import 'package:whatappclone/screen/Groups.dart';
import 'package:whatappclone/screen/HomePage.dart';
import 'package:whatappclone/screen/Profile.dart';
import 'package:whatappclone/screen/Updates.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> with TickerProviderStateMixin {
  late TabController tabController;
  int selectedIndex = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
    tabController.addListener(() {
      setState(() {
        selectedIndex = tabController.index;
        print(selectedIndex);
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
                         selectedIndex!=0? Icon(
                          Icons.search_outlined,
                          color: Colors.white,
                          size: 25,
                        ):Text(""),
                        SizedBox(
                          width: mediaQueryData.size.width * 0.04,
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
                          },
                        child:CircleAvatar(
                          backgroundColor: Colors.grey.shade400,
                          child:ClipRRect(borderRadius:BorderRadius.circular(20),child: Image.asset("assets/naruto.jpg", height: 80,fit: BoxFit.fitHeight,))
                        )),
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
                              height: mediaQueryData.size.height * 0.2,
                              width: mediaQueryData.size.width,
                              color: const Color.fromARGB(500, 5, 130, 107),
                              child:     TabBar(
                                indicatorSize: TabBarIndicatorSize.label,
                                controller: tabController,
                                indicatorColor: Colors.white,
                                 labelPadding: const EdgeInsets.symmetric(),
                                tabs:   [
                                  Tab(
                                      icon: Icon(
                                    Icons.groups,
                                        color: selectedIndex==0?Colors.white:Colors.grey,
                                        size: 25,
                                  )),
                                  Tab(
                                   child: Text("Home", style: TextStyle(color: selectedIndex==1?Colors.white:Colors.grey, fontSize: 18),),
                                  ),
                                  Tab( child: Text("Updates", style: TextStyle(color: selectedIndex==2?Colors.white:Colors.grey, fontSize: 18),),),
                                  Tab(
                                    child: Text("Calls", style: TextStyle(color: selectedIndex==3?Colors.white:Colors.grey, fontSize: 18),),
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
          ),
          SizedBox(
            width: mediaQueryData.size.width,
            height: mediaQueryData.size.height*0.8,
            child: TabBarView(
              controller: tabController,
              children: const [
                Groups(),
                HomePage(),
                Updates(),
                Calls()
              ],
            ),
          )
        ],
      ),
    );
  }
}
