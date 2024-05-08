

import 'package:deals_draw_ecommerceapp/view_model/widgets/pageview.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
               Expanded(child: PageViews())
             
          ],
        )
      )),

      floatingActionButton: Container(
        margin: EdgeInsets.only(bottom: 50),
        height: 60,
        width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color.fromARGB(255, 211, 57, 46)
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
          Text('Chat',
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
    );
  }
}