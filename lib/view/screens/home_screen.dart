

import 'package:deals_draw_ecommerceapp/view_model/widgets/pageview.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int pageIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
        child:Column(
          children: [
          Container(
            margin:const EdgeInsets.only(top: 10,left: 10,right: 10),
            child:   Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
            const  Icon(Icons.menu,size: 30,),
             const  SizedBox(width: 10,),
                Expanded(
                  child: Container(
                      height: 70,
                   
                     decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey.shade300,
                              ),
                              child: TextField(
                                
                               decoration: InputDecoration(
                               prefixIcon: Container(
                                margin:const EdgeInsets.only(left: 10,),
                                height: 30,
                                width: 50,
                               decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image:const DecorationImage(image: AssetImage('Assets/images/field.jpeg',),fit: BoxFit.contain)
                               ),
                                
                                ),
                                border:const OutlineInputBorder(
                             borderSide: BorderSide.none
                                ),
                                suffixIcon:const Icon(Icons.search,size: 35,)
                               ),
                              ),
                             ),
                ),
               const SizedBox(width: 10,),
              const  Icon(Icons.notifications,size: 30,)
             ], 
            ),
          ),
          const SizedBox(height: 10,),
         const   Divider(
              thickness: 2.5,
            ),
              const SizedBox(height: 10,),
             const  Expanded(child: PageViews())
             
          ],
        )
      )),

      floatingActionButton: Container(
        margin:const EdgeInsets.only(bottom: 10),
        height: 60,
        width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color:const Color.fromARGB(255, 211, 57, 46)
      ),
      child: Center(
        child: Row(
          children: [
        Container(
          margin: EdgeInsets.only(left:10),
          height: 30,
          width: 40,
          child: Image.network('https://icons.veryicon.com/png/o/miscellaneous/jinfeng-information-technology/chat-118.png',color: Colors.white,),
          ),
         const Text('Chat',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          )

          ],
        ),
      ),
      ),
      bottomNavigationBar: NavBar(context),
    );
    
  }
   Container NavBar(BuildContext context) { 
    return Container( 
      height: 60, 
      decoration: const BoxDecoration( 
        color: Colors.white, 
       
      ), 
      child: Row( 
        mainAxisAlignment: MainAxisAlignment.spaceAround, 
        children: [ 
          IconButton( 
            enableFeedback: false, 
            onPressed: () { 
              setState(() { 
                pageIndex = 0; 
              }); 
            }, 
            icon: pageIndex == 0 
                ? const Icon( 
                    Icons.home_filled, 
                    color: Colors.red, 
                    size: 35, 
                  ) 
                : const Icon( 
                    Icons.home_outlined, 
                    color: Colors.grey, 
                    size: 35, 
                  ), 
          ), 
          IconButton( 
            enableFeedback: false, 
            onPressed: () { 
              setState(() { 
                pageIndex = 1; 
              }); 
            }, 
            icon: pageIndex == 1 
                ? const Icon( 
                    Icons.widgets_sharp, 
                    color: Colors.red, 
                    size: 35, 
                  ) 
                : const Icon( 
                    Icons.widgets_rounded, 
                    color: Colors.grey, 
                    size: 35, 
                  ), 
          ), 
          IconButton( 
            enableFeedback: false, 
            onPressed: () { 
              setState(() { 
                pageIndex = 2; 
              }); 
            }, 
            icon: pageIndex == 2 
                ? const Icon( 
                    Icons.dehaze, 
                    color: Colors.red, 
                    size: 35, 
                  ) 
                : const Icon( 
                    Icons.dehaze, 
                    color: Colors.grey, 
                    size: 35, 
                  ), 
          ), 
          IconButton( 
            enableFeedback: false, 
            onPressed: () { 
              setState(() { 
                pageIndex = 3; 
              }); 
            }, 
            icon: pageIndex == 3 
                ? const Icon( 
                    Icons.shopping_cart, 
                    color: Colors.red, 
                    size: 35, 
                  ) 
                : const Icon( 
                    Icons.add_shopping_cart_outlined, 
                    color: Colors.grey, 
                    size: 35, 
                  ), 
          ), 
            IconButton( 
            enableFeedback: false, 
            onPressed: () { 
              setState(() { 
                pageIndex = 4; 
              }); 
            }, 
            icon: pageIndex == 4 
                ? const Icon( 
                    Icons.person, 
                    color: Colors.red, 
                    size: 35, 
                  ) 
                : const Icon( 
                    Icons.person_outline, 
                    color: Colors.grey, 
                    size: 35, 
                  ), 
          ), 
        ], 
      ), 
    ); 
  } 
} 
