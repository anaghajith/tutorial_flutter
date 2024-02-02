import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(MainPage());
}
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final double coverHeight = 280;
  final double profileHeight = 144;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(

          padding: EdgeInsets.zero,
            children: [
              buildTop(),
              buildContent(),
              ListTile(
                title: Text('Privacy',style: TextStyle(color: Colors.black),),
              ),
              ListTile(
                title: Text('Purchase History',style: TextStyle(color: Colors.black),),
              ),
              ListTile(
                title: Text('Help & Support',style: TextStyle(color: Colors.black),),
              ),
              ListTile(
                title: Text('Settings',style: TextStyle(color: Colors.black),),
              ),
              ListTile(
                title: Text('Invite a Friend',style: TextStyle(color: Colors.black),),
              ),
              ListTile(
                title: Text('Logout',style: TextStyle(color: Colors.black),),
              ),
            ]
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
  Widget buildContent() => Column(
    children: [
      SizedBox(height: 160,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildSocialIcon(FontAwesomeIcons.facebook,),
          SizedBox(width: 12,),
          buildSocialIcon(FontAwesomeIcons.twitter),
          SizedBox(width: 12,),
          buildSocialIcon(FontAwesomeIcons.linkedin),
          SizedBox(width: 12,),
          buildSocialIcon(FontAwesomeIcons.github),
          SizedBox(width: 12,),
        ],
      ),
      SizedBox(height: 16,),
      Text('Nature',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      SizedBox(height: 6,),
      Text('@nature',style: TextStyle(fontSize: 12,color: Colors.black),),
      SizedBox(height: 10,),
      Text('Beauty of Nature',style: TextStyle(fontSize: 18,color: Colors.black),),
      SizedBox(height: 16,),
      Divider(),
      SizedBox(height: 16,),
      //NumbersWidget(),
      // SizedBox(height: 16,),
      // Divider(),
      // SizedBox(height: 16,),
      //buildAbout(),
      //SizedBox(height: 32,)
    ],
  );
  Widget buildTop(){
    final top = profileHeight-coverHeight/3;
    final bottom = profileHeight / 2;

    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children:[
        Container(
          margin: EdgeInsets.only(bottom: bottom),
           // clipBehavior: Clip.hardEdge,
            child: buildCoverImage(),
        ),
        Positioned(
          top: top,
          child: buildProfileImage(),
        ),
      ],
    );
  }
  // Widget buildAbout() => Container(
  //   padding: EdgeInsets.symmetric(horizontal: 48),
  //   child: Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       Text('About',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold)),
  //       SizedBox(height: 16,),
  //       Text('Its Wonderfullllll',style: TextStyle(fontSize: 18,height: 1.4)),
  //     ],
  //   ),
  // );
  Widget buildSocialIcon(IconData icon)=>CircleAvatar(
    radius: 25,
    child: Material(
      shape: CircleBorder(),
      clipBehavior: Clip.hardEdge,
      color: Colors.transparent,
      child: InkWell(
        onTap: (){},
        child: Center(
          child: Icon(icon,size: 32,),
        ),
      ),
    ),
  );
  Widget buildCoverImage() => Row(
    children: [
      Container(

        color: Colors.red,
      //   child: Image.network(
      //       "https://cdn.pixabay.com/photo/2017/02/01/22/02/mountain-landscape-2031539_960_720.jpg",
      //           width: double.infinity,
      //           height: coverHeight,
      //           fit: BoxFit.cover,
      //   ),
      ),
    ],
  );
  Widget buildProfileImage()=>
    Row(
      children: [
        CircleAvatar(
          radius: profileHeight / 2,
          backgroundColor: Colors.grey[800],
          backgroundImage: NetworkImage(
            "https://cdn.pixabay.com/photo/2016/05/05/02/37/sunset-1373171_960_720.jpg",
          ),
        ),
      ],
    );
}
