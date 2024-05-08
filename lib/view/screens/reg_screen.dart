import 'package:deals_draw_ecommerceapp/utils/theme/custome_theme/text_theme.dart';
import 'package:deals_draw_ecommerceapp/view/screens/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class RegScreen extends StatefulWidget {
  const RegScreen({super.key});

  @override
  State<RegScreen> createState() => _RegScreenState();
}

class _RegScreenState extends State<RegScreen> {

  final emailController=TextEditingController();
   final passwordController=TextEditingController();
    final rController=TextEditingController();
  bool passwordvisible=true;

  void sighIn()async{
    try{
     FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: emailController.text, 
     password: passwordController.text
     );
     Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Home(),));
    
    }on FirebaseAuthException catch  (e) {
      Text(e.code);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Container(
              margin:const EdgeInsets.only(
                top: 40,
                left: 30
              ),
              child:GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_back_ios,)),),
            
            Opacity(
              opacity: 0.5,
              child: Center(
                child: Container(
                  height: 200,
                  width: 300,
                  decoration:const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('Assets/images/login.png'),
                      fit: BoxFit.cover,
                      )
                  ),
                ),
              ),
            ),
                   const SizedBox(height: 10,),
                   Container(
                    margin:const EdgeInsets.only(left:20 ),
                     child: Text("Let's Begin!",
                     style:TextThemee.lightTheme.headlineLarge ,
                     ),
                   ),
                  const  SizedBox(height: 20,),
                  Container(
                      margin:const EdgeInsets.only(left:20 ),
                    child: Text('Please enter your credential to proceed',
                    style:TextThemee.lightTheme. bodySmall,
                    ),
                  ),
                     const  SizedBox(height: 30,),
                     Padding(
             padding: const EdgeInsets.only(left: 20,right: 20),
            
             child: TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextThemee.lightTheme.labelMedium
                ),   
                controller: emailController,
             ),
                     ),
                   const  SizedBox(height: 20,),
                       Padding(
             padding: const EdgeInsets.only(left: 20,right: 20),
            
             child: TextField(
                decoration: InputDecoration(
                  hintText: 'Create Password',
                  hintStyle: TextThemee.lightTheme.labelMedium,
                  suffixIcon:  IconButton(
                     icon: Icon(passwordvisible
                         ? Icons.visibility_off
                         : Icons.visibility),
                     onPressed: () {
                       setState(
                         () {
                           passwordvisible = !passwordvisible;
                         },
                       );
                     },
                   ),
                ),   
                controller:passwordController,
                      obscureText:passwordvisible ,
                      
                      
             ),
                     ),
                        const  SizedBox(height: 20,),
                       Padding(
             padding: const EdgeInsets.only(left: 20,right: 20),
            
             child: TextField(
                decoration: InputDecoration(
                  hintText: 'Referral code(optional)',
                  hintStyle: TextThemee.lightTheme.labelMedium
                ),   
                controller: rController,
                keyboardType: TextInputType.number,
          
             ),
                     ),
                  const  SizedBox(height: 30,),
                 GestureDetector(
                  onTap:sighIn,
                  child:   Container(
                    margin: const EdgeInsets.only(left: 300,top: 30,),
                    height: 60,
                    width: 60,
                    decoration:const BoxDecoration(
                     color:  Color.fromARGB(255, 216, 26, 12),
                     borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                       child:const Center(
                        child: Icon(Icons.arrow_forward,
                        color: Colors.white,
                        )
                       ),
                   ),
                 )
                   
                     ],
                  ),
          ),
    );
  }
}