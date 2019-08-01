import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.blue,
        ),
        title: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/profile.jpg"),
          ),
          title: Text(
            "Kelvin Perez",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )
        ),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Icon(Icons.call),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Icon(Icons.video_call),
          ),
        ],
      ),
      body: Column(
      children: <Widget>[
        Flexible(
          flex: 8,
          child: ListView(
            reverse: true,
            children: List.generate(100, (int i){
              return Container(
              margin: EdgeInsets.only(bottom: 20,),
              child: Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage("assets/profile.jpg"),
    ),
      SizedBox(
      width: 10,
      ),
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
              Radius.circular(20),

              ),
              color: Colors.grey,
    ),
      child: Container(
    margin: EdgeInsets.all(20),
    child: Text("This is a message"),
                    ),
                   ),
                  ],
                 ),
               );
             },
          ),
        ),
      ),
      Flexible(
        flex: 1,
        child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Container(
      child: Icon(
          Icons.more,
          size: 50,
          color: Colors.blue,
    ),
    ),
      Icon(
        Icons.camera_alt,
        size: 30,
        color: Colors.blue,
      ),
      Icon(
        Icons.image,
        size: 30,
        color: Colors.blue,
      ),
      Icon(
        Icons.mic,
        size: 30,
        color: Colors.blue,
      ),
      Container(
      width: 80,
      child: TextField(
        decoration: InputDecoration(
          hintText: "Aa",
          fillColor: Colors.blue
        ),
      ),
      ),
      Icon(
        MdiIcons.heart,
        size: 30,
        color: Colors.blue,
    )
    ],
    ),
    )
    ],
    ),
    );
  }
}