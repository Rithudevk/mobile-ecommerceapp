import 'package:deals_draw_ecommerceapp/utils/theme/custome_theme/text_theme.dart';
import 'package:deals_draw_ecommerceapp/view/screens/otp_varification_screen.dart';
import 'package:deals_draw_ecommerceapp/view/screens/reg_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';



class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

 bool status=true;
 final phonecontroller=TextEditingController();

void signIn()async{
  
    await FirebaseAuth.instance.verifyPhoneNumber(
      verificationCompleted: (phoneAuthCredential ){} ,
     verificationFailed: (error ) {
       
     }, codeSent: (String verificationId , int? forceResendingToken) {
       Navigator.of(context).push(MaterialPageRoute(builder: (context) => OtpScreen(id: verificationId ,),));
     }, 
     codeAutoRetrievalTimeout: (String verificationId) {
       
     },
     phoneNumber: phonecontroller.text.toString()
     );
 
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body:SingleChildScrollView(
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
                   const SizedBox(height: 20,),
                     Container(
                      margin: const EdgeInsets.only(left: 90),
                       child: ToggleSwitch(
                                    radiusStyle: true,
                                    minHeight: 60,
                                    minWidth: 110.0,
                                    initialLabelIndex: 0,
                                   cornerRadius: 20.0,
                                    activeFgColor: Colors.white,
                                     inactiveBgColor: Colors.grey,
                                    inactiveFgColor: Colors.white,
                         totalSwitches: 2,
                        labels:const ['Phone', 'Email'],fontSize: 20,
                                    
                                        activeBgColors: [[const Color.fromARGB(183, 244, 67, 54)],[Color.fromARGB(183, 244, 67, 54)]],
                                       onToggle: (index) {
                                          print('switched to: $index');
                                          Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const RegScreen(),));

                             },
                       ),
                     ),
            
                   const  SizedBox(height: 25,),
            
                   Center(
                    child: Text('Glad to see you !',
                    style:TextThemee.lightTheme.headlineLarge ,
                    )),
                  const  SizedBox(height: 20,),
                  Center(
                    child: Text('Please provide your phone number',
                    style:TextThemee.lightTheme. bodySmall,
                    )),
                     const  SizedBox(height: 50,),
                     Padding(
             padding: const EdgeInsets.only(left: 20,right: 20),
            
             child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Phone',
                  hintStyle: TextThemee.lightTheme.labelMedium
                ),   
                controller:phonecontroller ,
                
             ),
                     ),
                  const  SizedBox(height: 50,),
                 GestureDetector(
                  onTap: signIn,
                  child:   Opacity(
                    opacity: 0.5,
                    child: Container(
                      margin: const EdgeInsets.only(left: 20),
                      height: 80,
                      width: 350,
                      decoration:const BoxDecoration(
                       color:  Color.fromARGB(255, 210, 50, 39),
                       borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                         child:const Center(
                          child: Text('SEND CODE',
                          style: TextStyle(fontSize: 20,color: Colors.white60),
                          ),
                         ),
                     ),
                  ),
                 )
                   
                     ],
                  ),
          ),
    );
  }
}