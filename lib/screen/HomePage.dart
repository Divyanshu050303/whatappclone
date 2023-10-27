import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, String>> chatList = [
    {"name": "Hinata😍😍", "image": "assets/hinata.jpeg","chat":"You want to go out with me tonight","time":"4:30 pm"},
    {"name": "Sasuke", "image": "assets/sasuke.jfif","chat":"Naruto... it's too late","time":"3:00 pm"},
    {"name": "Tsunade", "image": "assets/tsunade.jpeg","chat":"Lets Play some card","time":"2:00 pm"},
    {"name": "Jiraya", "image": "assets/Jiraya.jpg","chat":"I Have some research work today","time":"11:00 am"},
    {"name": "Sakura", "image": "assets/sakura.jpg","chat":"You have to learn them by experiencing them yourself.","time":"10:12 am"},
    {"name": "Gara", "image": "assets/gara.jpg","chat":"You have to forge a new path with your own power","time":"9:00 am"},
    {"name": "Ino", "image": "assets/ino.jfif","chat":"There's No Meaning To A Flower Unless It Blooms","time":"8:30 am"},
    {"name": "Kakashi", "image": "assets/kakashi.jfif","chat":" Those Who Abandon Their Friends Are Worse Than Scum.","time":"7:00 am"},
    {"name": "Lee", "image": "assets/lee.jpg","chat":"My motto is to be stronger than yesterday","time":"Yesterday"},
    {"name": "Might guy", "image": "assets/MightGuy.jpg","chat":"A master of taijutsu","time":"Yesterday"},
    {"name": "Orochimaru", "image": "assets/orochimaru.jfif","chat":"If I take an interest in something, I research it quite thoroughly","time":"24/10/23"},
    {"name": "Nine Tail", "image": "assets/ninetail.jfif","chat":"As long as I'm around, the wind belongs to you","time":"21/10/23"},
    {"name": "Shikamaru", "image": "assets/shikamaru.png","chat":"What a drag","time":"4/10/23"},
    {"name": "Tmari", "image": "assets/tmari.jpg","chat":"Thankyou for saving gaara","time":"4/8/23"},
  ];

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    // Color color=Color(#08846c);
    return Scaffold(
      body: ListView.builder(
        itemCount: chatList.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: SizedBox(
              width: mediaQueryData.size.width,
              height: mediaQueryData.size.height * 0.1,
              child: Padding(
                padding:   EdgeInsets.only(left: mediaQueryData.size.width*0.05),
                child: Row(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: SizedBox(
                            width: 55,
                            height: 55,
                            child: Image.asset(
                              chatList[index]['image']!,
                              fit: BoxFit.fill,
                            ))),
                    SizedBox(width: mediaQueryData.size.width*0.05,),
                    SizedBox(
                      width: mediaQueryData.size.width*0.55,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 88.0, top: 20),
                        child: Stack(
                          children: [
                            Text(chatList[index]['name']!,style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                            Padding(
                              padding:   const EdgeInsets.only(left: 9.0, top: 20),
                              child: Text(chatList[index]['chat']!, style: const TextStyle(fontSize: 14, overflow: TextOverflow.ellipsis,),maxLines: 1,),
                            )
                          ],
                        ),
                      ),
                    ),
                       Text(chatList[index]['time']!)
                  ],
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(500, 5, 130, 107),
        tooltip: 'Increment',
        onPressed: () {},
        child: const Icon(
          Icons.message_rounded,
          color: Colors.white,
        ),
      ),
    );
  }
}
