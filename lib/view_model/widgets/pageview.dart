import 'package:deals_draw_ecommerceapp/data/data.dart';
import 'package:deals_draw_ecommerceapp/utils/theme/custome_theme/text_theme.dart';
import 'package:flutter/material.dart';



class PageViews extends StatefulWidget {
  const PageViews({super.key});

  @override
  State<PageViews> createState() => _PageViewsState();
}

class _PageViewsState extends State<PageViews> {
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Expanded(
        child: Column(
          children: [
           Container(
             height: 250,
            child: Expanded(child:  GridView.builder(
                scrollDirection: Axis.horizontal,
                gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 0.8,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10
                ),
                itemBuilder: (context, index) =>
                 Container(
                  margin:const EdgeInsets.only(left: 5,right: 5),
                 padding:const EdgeInsets.only(left: 20,
                 top: 20
                 ),
                  decoration:BoxDecoration(
                   gradient:const LinearGradient(colors: [ Color.fromARGB(255, 69, 3, 81),
                   Color.fromARGB(255, 132, 15, 54),]),
                    borderRadius: BorderRadius.circular(20),
                  ) ,
                  child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          const  Text('Redmi Note 7s',
                            style:TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ) ,
                            ),
                            const Text('48mp for everyone',
                            style:TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ) ,
                            ),
                           const SizedBox(
                              height: 10,
                            ),
                           const  Row(
                               children: [
                                 Text('20M',
                                               style:TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 20,
                                               ) ,
                                               ),
                                                SizedBox(
                              width: 10,
                            ),
                               Text('Units',
                                               style:TextStyle(
                                  color: Colors.red,
                                  fontSize: 20,
                                               ) ,
                                               ),
                              
                               ],
                              
                        
                             ),
                            
                            const  Text('of Redmi note 7 series sold globally',
                            style:TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ) ,
                            ),
                           const Text('source: xiaomi data centere ,Aug17,2019 ',
                            style:TextStyle(
                              color: Colors.white,
                              fontSize: 9,
                            ) ,
                            ),
                            const  SizedBox(
                              height: 10,
                            ),
                           
                            Row(
                              children: [
                                Container(
                                 decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white70
                                 ),
                                  child:const Icon(Icons.percent_sharp,size: 17,),
                        
                                ),
                               const SizedBox(width: 10,),
                              const  Text('Now on No cost EMI*',
                                 style:TextStyle(
                              color: Colors.white,
                             
                            ) ,
                                )
                              ],
                            ),
                            const  SizedBox(
                              height: 10,
                            ),
                          const  Text('From ₹9,999',
                            style: TextStyle(
                                color: Colors.white,
                            ),
                            ),
                           const  SizedBox(height: 10,),
                            Container(
                              height: 30,
                              width: 120,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                
                              ),
                              child:const Center(
                                child: Text('Buy Now',
                                style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                        
                          ],
                        ),
                        const SizedBox(width: 10,),
                        Container(
                         margin:const EdgeInsets.only(top: 80,),
                          child: Stack(
                            children: [
                              Container(
                                height: 100,
                                width: 50,
                               
                                decoration:const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('Assets/images/phone1.jpg',
                                    
                                    ),
                                    fit: BoxFit.cover,
                                    )
                                ),
                              ),
                               Container(
                                margin:const EdgeInsets.only(left: 20),
                                    
                                height: 100,
                                width: 50,
                               decoration:const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('Assets/images/phone3.jpg'),
                                     fit: BoxFit.cover,
                                    )
                                ),
                              ),
                                Container(
                                margin:const EdgeInsets.only(left: 35),
                                    
                                height: 100,
                                width: 50,
                               decoration:const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('Assets/images/phone2.jpg'),
                                     fit: BoxFit.cover,
                                    )
                                ),
                              ),
                            
                            
                            ],
                          ),
                        )
                      ],
                    ),
                 ),
                itemCount: 3,
                
                
                ),),
                
           ),
        
             const SizedBox(height: 20,),
              Container(
                padding:const EdgeInsets.only(top: 10),
                height: 170,
                width: 370,
               decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color:const Color.fromARGB(255, 57, 107, 193)
               ),
               child: Center(
                child: Column(
                  children: [
                    Text('KYC Pending',
                    style: TextThemee.lightTheme.titleMedium,
                    ),
                     Text('You need to provide the required ',
                    style: TextThemee.lightTheme.titleSmall,
                    ),
                     Text('document for your account activation ',
                    style: TextThemee.lightTheme.titleSmall,
        
                    ),
                    const SizedBox(height: 10,),
                    TextButton(onPressed: (){}, child: Text('Click here',
                    style: TextThemee.lightTheme.titleMedium,
        
                    ))
                  ],
                ),
               ),
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                   decoration: BoxDecoration( color: const Color.fromARGB(255, 41, 102, 152),
                   borderRadius: BorderRadius.circular(30)
                   ),
                    child:const Icon(Icons.phone,
                    color: Colors.white,
                    ),
                  ),
                   Container(
                    height: 50,
                    width: 50,
                   decoration: BoxDecoration( color: const Color.fromARGB(255, 44, 109, 46),
                   borderRadius: BorderRadius.circular(30)
                   ),
                    child:const Icon(Icons.laptop,
                    color: Colors.white,
                    ),
                  ),
                   Container(
                    height: 50,
                    width: 50,
                   decoration: BoxDecoration( color:Colors.pink,
                   borderRadius: BorderRadius.circular(30)
                   ),
                    child:const Icon(Icons.camera_alt,
                    color: Colors.white,
                    ),
                  ),
                   Container(
                    height: 50,
                    width: 50,
                   decoration: BoxDecoration( color:const Color.fromARGB(255, 218, 143, 31),
                   borderRadius: BorderRadius.circular(30)
                   ),
                    child:const Icon(Icons.lightbulb,
                    color: Colors.white,
                    ),
                  )
                ],
              ),
              Container(
                margin:const EdgeInsets.only(right: 10,top: 10),
                child:const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Mobile',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                    ),
                      Text('Laptop',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                    ),
                      Text('camera',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                    ),
                      Text('Led',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                    ),
                  ],
                ),
              ),
        
             const SizedBox(
                height: 10,
              ),
        
              Container(
                height: 600,
               decoration:const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('Assets/images/bg.jpeg'),fit: BoxFit.cover),
               ),
              child: Column(
                children: [
                  Container(
                    margin:const EdgeInsets.only(
                      top: 10,
                      left: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('EXCLUSIVE FOR YOU',
                           style: TextThemee.lightTheme.titleMedium,
                           ),
                         const Icon(Icons.arrow_forward,
                           color: Colors.white,
                           size: 30,
                           )
                      ],
                    ),
                  ),
                   const  SizedBox(height: 10,),
                  Container(
                height: 500,
                 width: MediaQuery.of(context).size.width,
                 child: Row(
                   children: [
                     Expanded(
                      child:    GridView.builder(
                      gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      childAspectRatio: 1.4,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10
                      ), 
                       scrollDirection: Axis.horizontal,
                       itemBuilder:(context, index) => 
                       Container(
                        margin:const EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin:const EdgeInsets.only(left: 180,
                              top: 30),
                              height: 35,
                              width: 90,

                              decoration: BoxDecoration(
                                color:const Color.fromARGB(255, 60, 159, 63),
                                borderRadius: BorderRadius.circular(10)

                              ),
                              child:Center(
                                child: Text(data[index].offprice,
                                style:const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                                ),
                              ) ,
                            ),
                         const SizedBox(height: 10,),
                            Container(
                              height: 250,
                              width: 180,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(data[index].image),fit: BoxFit.cover)
                              ),
                            ),
                           const SizedBox(height: 90,),
                            Container(
                              margin:const EdgeInsets.only(
                                right: 90,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(data[index].price,
                                  style:const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500
                                  ),
                                  ),
                                   Text(data[index].name,
                                    style:const TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w600
                                  ),
                                   )
                                ],
                              ),
                            )
                            
                          ],
                        ),
                       ),
                       itemCount: data.length,
                       
                       )),
                   ],
                 ),
               )

                ],
              ),
              ),
            
        
          ],
        ),
      ),
    );



          }
          
       
  }
