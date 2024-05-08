import 'package:deals_draw_ecommerceapp/utils/theme/custome_theme/text_theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';



class OtpScreen extends StatefulWidget {
 const  OtpScreen({super.key,required this.id});
 final String id;

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {

  void pLogin()async{
    try{
      PhoneAuthCredential cred =await PhoneAuthProvider.credential(
        verificationId: widget.id, smsCode:otpcontroller.text );
    }on FirebaseAuthException catch(e){
      print(e.code);
    }
  }

  var otpcontroller=TextEditingController();
    var otpcontroller1=TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Container(
                margin:const EdgeInsets.only(
                  top: 60,
                  left: 30
                ),
                child:GestureDetector(
                   onTap: () {
                  Navigator.pop(context);
                },
                  child: const Icon(Icons.arrow_back_ios,)),),
              
              Opacity(
                opacity: 0.9,
                child: Container(
                    margin:const EdgeInsets.only(
                  top: 30,
                  left: 10,
                ),
                  height: 200,
                  width: 200,
                  decoration:const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('Assets/images/otp.jpg'),
                      fit: BoxFit.cover
                      )
                  ),
                ),
              ),
                const  SizedBox(height: 10,),
                     Container(
                          margin:const EdgeInsets.only(
                  top: 20,
                  left: 40,
                ),
                       child: Text('OTP Varification',
                       style:TextThemee.lightTheme.headlineLarge ,
                       ),
                     ), 
                   const  SizedBox(height: 10,),
                    Container(
                        margin:const EdgeInsets.only(left:40 ),
                      child: Text('We have send a unique OTP number to your mobile',
                      style:TextThemee.lightTheme. bodySmall,
                      ),
                    ),
        
                    const  SizedBox(height: 20,),
        
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                       Container(
                       decoration:const BoxDecoration(
                        color: Colors.white,
                         border: Border(bottom: BorderSide(color: Colors.black45,),
                       left: BorderSide(color: Colors.black45,),
                       right:  BorderSide(color: Colors.black45,),
                       top: BorderSide(color: Colors.black45,),
                       ),
                        borderRadius: BorderRadius.all(Radius.circular(10,))
                       ),
                        height: 50,
                        width: 50,
                           child: const TextField(
                keyboardType: TextInputType.number,
               decoration: InputDecoration(
                
                border: OutlineInputBorder(
                  borderSide: BorderSide.none
                )
               ),
              ),
        
                       ),
                         Container(
                       decoration:const BoxDecoration(
                         border: Border(bottom: BorderSide(color: Colors.black45,),
                       left: BorderSide(color: Colors.black45,),
                       right:  BorderSide(color: Colors.black45,),
                       top: BorderSide(color: Colors.black45,),
                       ),
                          color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10,))
                       ),
                        height: 50,
                        width: 50,
                           child: const TextField(
              keyboardType: TextInputType.number,
               decoration: InputDecoration(
             
                border: OutlineInputBorder(
                  borderSide: BorderSide.none
                )
               ),
              ),
        
                       ),
                         Container(
                       decoration:const BoxDecoration(
                         border: Border(bottom: BorderSide(color: Colors.black45,),
                       left: BorderSide(color: Colors.black45,),
                       right:  BorderSide(color: Colors.black45,),
                       top: BorderSide(color: Colors.black45,),
                       ),
                          color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10,))
                       ),
                        height: 50,
                        width: 50,
                           child: const TextField(
           keyboardType: TextInputType.number,
               decoration: InputDecoration(
             
                border: OutlineInputBorder(
                  borderSide: BorderSide.none
                )
               ),
              ),
        
                       ),
                         Container(
        
                       decoration:const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10,)),
                       border: Border(bottom: BorderSide(color: Colors.black45,),
                       left: BorderSide(color: Colors.black45,),
                       right:  BorderSide(color: Colors.black45,),
                       top: BorderSide(color: Colors.black45,),
                       )
                       ),
                        height: 50,
                        width: 50,
                        child: const TextField(
                 keyboardType: TextInputType.number,
               decoration: InputDecoration(
             
                border: OutlineInputBorder(
                  borderSide: BorderSide.none
                )
               ),
              ),
                       ),
        
                      ],
                    ),

                       const  SizedBox(height: 20,),
                       Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                        const  Text('01:57'),
                          TextButton(onPressed: (){}, 
                          child:const Text('SEND AGAIN'))
                        ],
                       )
        
              ]
        ),
      )
    );
  }
}