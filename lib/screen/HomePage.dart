import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData=MediaQuery.of(context);
    // Color color=Color(#08846c);
    return Container(
      height: mediaQueryData.size.height,
      width: mediaQueryData.size.width,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            width: mediaQueryData.size.width,
            height: mediaQueryData.size.height*0.2,
            color: Color.fromARGB(500, 5,130,107),
            child: Padding(
              padding:  EdgeInsets.only(top: mediaQueryData.size.width*0.12),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("WhatsApp", style: TextStyle(fontSize: 24, color: Colors.white, decoration: TextDecoration.none,   ),),
                      Icon(Icons.camera_alt_outlined, color: Colors.white,size: 30,),
                      Icon(Icons.search_outlined, color: Colors.white, size: 30,),
                      CircleAvatar()
                    ],
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
