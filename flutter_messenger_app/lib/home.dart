import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_messenger_app/Chat.dart';
import 'package:flutter_messenger_app/People.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Home extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    void _onTapped(int index) {
      if(index==1) {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => People(),
          ),
        );
      }
      if(index==0){
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => Home(),
          ),
        );

      }
    }


    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        backgroundColor: Colors.white,
        title: Text("Chats",
          style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 30,
          color: Colors.black,
          ),
        ),
        actions: <Widget>[
          Container(
            child: Icon(Icons.camera_alt),
            margin: EdgeInsets.all(10),
          ),
          Container(
            child: Icon(Icons.edit),
            margin: EdgeInsets.all(10),
          ),
        ],
        leading: Container(
          margin: EdgeInsets.all(5),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/profile.jpg"),

          ),
        ),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  prefix: Icon(Icons.search),
                  fillColor: Colors.grey,
                  border: InputBorder.none
                ),
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                 Container(
                   width: 80,
                   height: 50,
                   margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                  CircleAvatar(
                  backgroundColor: Colors.black12,
                  child: Icon(
                  Icons.add,
                  color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
              Text("Story")
                ],
              ),
            ),
           _profile("assets/0.jpg", "Flutter"),
           _profile("assets/1.jpg", "Kelvin"),
           _profile("assets/1.jpg", "Misael"),
           _profile("assets/1.jpg", "Kevin"),
           _profile("assets/1.jpg", "Rony"),
           _profile("assets/1.jpg", "Victor"),

          ],
         ),
        ),
      ),
          SliverList(
              delegate: SliverChildListDelegate(
                List.generate(
                    4,
                    (int i) {
                      return InkWell(
                          child:_chatListItem(i),
                          onTap: (){
                            Navigator.push(
                            context,
                            CupertinoPageRoute(
                            builder: (context) => Chat(),
                            ),
                            );
                      },
    );
    },
              ),
          ),
          ),
        ],
    ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.black,
        items: [
        BottomNavigationBarItem(
            icon: Icon(MdiIcons.chat),
          title: Text(""),
        ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.appleSafari),
            title: Text(""),
          ),
      ],
        onTap: _onTapped,
      ),
    );
  }
  Widget _chatListItem(int i){
    return Container(
      height: 100,
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage("assets/$i.jpg"),
        ),
        title: Text(
          "Kelvin Perez",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              ),
        ),
        subtitle: Text("This is your chats"),
      ),
    );
  }
  Widget _profile(String assets, String name){
    return Container(
      width: 80,
      height: 50,
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage(assets),
          ),
          SizedBox(
            height: 5,
          ),
          Text(name)
        ],
      ),
    );
  }
}