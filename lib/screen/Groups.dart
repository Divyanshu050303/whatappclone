import 'package:flutter/material.dart';

class Groups extends StatefulWidget {
  const Groups({super.key});

  @override
  State<Groups> createState() => _GroupsState();
}

class _GroupsState extends State<Groups> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
title: Container(
  color: Colors.green,
  width: 700,
  height: 400,
  child: Center(child: Text("Whatappssfaffdaahsjdfajshfdajsndfalshfiasefnasdlkjfhasdhfasndflasjhdfiaushdfnas fldaslvhaf dsajfiajsdfiuhsadf saf jasdoifansdfnasdfjoaisdfnasdmfnasdhfasdfsfjsldkfj;asdjfasndfsahdfo;asndfknasdl;kfaskjdnfasdkf;kajdfnksdnf;alkdfjkashfjdlhaiuefhkdjnajdksvahsfxcnasdjfnalsdkfnaslkjfhlaskjdfmnaflkj", style: TextStyle(color: Colors.red),)),
),
      ),
    );
  }
}
