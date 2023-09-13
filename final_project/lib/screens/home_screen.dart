

import 'package:final_project/screens/category_display_screen.dart';
import 'package:final_project/screens/product_display_screen.dart';
import 'package:final_project/screens/profile_screen.dart';


import 'package:final_project/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({Key,key})  : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  final pageController = PageController(initialPage: 0);

  // tabbar icons
  final tabBarIcons = [
    FontAwesomeIcons.house,
    FontAwesomeIcons.compass,
    
    FontAwesomeIcons.user,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      


      
      body: SafeArea(
        
        bottom: false,
        child: Stack(
          children: [
            PageView(
              controller: pageController,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              children:  [
                ProductDisplayScreen(),
                CategoryDisplayScreen(),
                AccountPage(),
                
                
                
      
              ],
            ),

            // bottom bar
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Container(
                alignment: Alignment.center,
                height: 70,
                decoration: BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  
                  
                  
                   children: [



                  






                    
                                        
                        ...tabBarIcons.map(
                        (icon) => IconButton(onPressed: (){
                       
                        if (icon == FontAwesomeIcons.house){
                       pageController.jumpToPage(0);

                        }
                        else if( icon == FontAwesomeIcons.compass){

                           pageController.jumpToPage(1);

                        }
                        

                        
                       else if( icon == FontAwesomeIcons.user){

                           pageController.jumpToPage(2);

                        }
                    
                        }, icon: Icon(icon, color: Colors.white60 , size: 22,))

                
                    
                       )
                    
                    
                    
                
                  ],
                 
              ),
              
              ),
              
             
            )
          
          ],
          
        ),
      ),
    );
  }
}
