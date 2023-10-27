import 'package:flutter/material.dart';

class Updates extends StatefulWidget {
  const Updates({super.key});

  @override
  State<Updates> createState() => _UpdatesState();
}

class _UpdatesState extends State<Updates> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData=MediaQuery.of(context);
    return  Scaffold(
      body:   Stack(
        children: [
          Positioned(
            top: 20,
            left: 15,
            child: Row(
              children: [
                const Text("Status", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color:Colors.black),),
                SizedBox(width:mediaQueryData.size.width*0.65 ,),
                const Icon(Icons.more_vert,color: Colors.black45,)
              ],
            ),
          ),
          Positioned(
            top: 70,
            left: 15,
            child: Row(children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                color: Colors.grey,
                  borderRadius: BorderRadius.circular(50)
                ),
                child: const Icon(Icons.person, color: Colors.white,
                  size: 50,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 13.0),
                child: Stack(
                  children: [
                    Text("My Status", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 20 ),),
                    Padding(
                      padding: EdgeInsets.only(top:30),
                      child: Text("Tap to add status updates",style: TextStyle(color: Colors.black45, fontSize: 17),),
                    )
                  ],
                ),
              )

            ],),
          ),
          Positioned(
            left: 52,
            top: 104,
            child: Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(500, 5, 130, 107),
              ),
              child: const Icon(Icons.add, color: Colors.white,),
            ),
          ),
          const Positioned(top:155, left: 15,child: Text("Recent updates", style: TextStyle(fontSize: 16, color: Colors.black54),))
          ,
          Positioned(
            top: 195,
            left: 15,
            child: Row(children: [
              Container(
                width: 68.0,
                height: 68.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color:  const Color.fromARGB(500, 5, 130, 107), // Customize the ring color
                    width: 3.0, // Customize the ring width
                  ),
                ),
                child: Center(
                  child:  Container(
                    width: 57,
                    height: 57,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: ClipRRect(borderRadius:BorderRadius.circular(30),child: Image.asset("assets/hinata.jpeg",fit: BoxFit.fill,))
                  ), // Add your content inside the container
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 13.0),
                child: Stack(
                  children: [
                    Text("Hinata 😍😍", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 20 ),),
                    Padding(
                      padding: EdgeInsets.only(top:30),
                      child: Text("39 minute",style: TextStyle(color: Colors.black45, fontSize: 17),),
                    )
                  ],
                ),
              )

            ],),
          ), Positioned(
            top: 275,
            left: 15,
            child: Row(children: [
              Container(
                width: 68.0,
                height: 68.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color:  const Color.fromARGB(500, 5, 130, 107), // Customize the ring color
                    width: 3.0, // Customize the ring width
                  ),
                ),
                child: Center(
                  child:  Container(
                    width: 57,
                    height: 57,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child:    ClipRRect(borderRadius:BorderRadius.circular(30),child: Image.asset("assets/sakura.jpg",fit: BoxFit.fill,))
                  ), // Add your content inside the container
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 13.0),
                child: Stack(
                  children: [
                    Text("Sakura", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 20 ),),
                    Padding(
                      padding: EdgeInsets.only(top:30),
                      child: Text("39 minute",style: TextStyle(color: Colors.black45, fontSize: 17),),
                    )
                  ],
                ),
              )

            ],),
          ),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor:      const Color.fromARGB(500, 5, 130, 107),
        tooltip: 'Increment',
        onPressed: () {  },
        child: const Icon(Icons.camera_alt_rounded,color: Colors.white,),
      ),
    );
  }
}
