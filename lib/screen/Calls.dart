import 'package:flutter/material.dart';

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 30,
            left: 18,
            child: Row(children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(500, 5, 130, 107),
                    borderRadius: BorderRadius.circular(50)
                ),
                child: const Icon(Icons.add_call, color: Colors.white,
                  size: 25,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 13.0),
                child: Stack(
                  children: [
                    Text("New Call", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 18 ),),
                    Padding(
                      padding: EdgeInsets.only(top:30),
                      child: Text("Call one or more of your contacts",style: TextStyle(color: Colors.black45, fontSize: 15),),
                    )
                  ],
                ),
              )

            ],),
          ),
          Positioned(top:100, left: 18,child: const Text("Recent", style: TextStyle(color: Colors.black, fontSize: 18),))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor:      const Color.fromARGB(500, 5, 130, 107),
        tooltip: 'Increment',
        onPressed: () {  },
        child: const Icon(Icons.add,size: 30,color: Colors.white,),
      ),
    );
  }
}
