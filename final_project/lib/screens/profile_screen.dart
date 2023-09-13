import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class AccountPage extends StatefulWidget {
  const AccountPage  ({Key ,key}) :super (key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
  color: Color(0xfffffffff),
  child: ListView(
    padding: EdgeInsets.all(12),
physics: BouncingScrollPhysics(),
children: [
  Container(height: 35),
userTile(),
divider(),
colorTiles(),
divider(),
 bwTiles(),


],
),
 );
}

Widget userTile(){
String url = "https://pbs.twimg.com/profile_images/1472221671268536327/o_2rURHW_400x400.jpg";
  return ListTile(
leading: CircleAvatar(
backgroundImage: NetworkImage(url),

),
title: Text("Kuwait Codes"),
  );
}

Widget divider(){

  return Padding(
    padding:  EdgeInsets.all(8.0),
    child: Divider(
      thickness: 1.5,
    ),
  );
}

Widget colorTiles(){

return Column(
children: [ 
  colorTile(Icons.person_outline, Colors.black, "Personal data"),
colorTile(Icons.settings_outlined, Colors.black, "Settings"),
colorTile(Icons.credit_card, Colors.black, "Payment"),
colorTile(Icons.favorite_border, Colors.black, " Favorite"),
],

);

}

Widget bwTiles(){
  

return Column(

  children: [
bwTile(Icons.info_outline, "FAQs"),
bwTile(Icons.border_color_outlined, "Handbook"),    
  bwTile(Icons.textsms_outlined, "Community"),
  
  ],
);

}

Widget bwTile(IconData icon,String text){
return colorTile(Icons.info_outline, Colors.black, text,);

}

Widget colorTile(IconData icon,Color color, String text){
 

  
return ListTile(

  leading: Container(
    child: Icon(icon,color: color),
height: 45,
width: 45,
    decoration: BoxDecoration(

      color: color.withOpacity(0.09),
    borderRadius: BorderRadius.circular(18),
    ),
    
  ),
  title: Text(  text,
 ),
  trailing: Icon(FontAwesomeIcons.arrowRight,color: color),
);


}
}