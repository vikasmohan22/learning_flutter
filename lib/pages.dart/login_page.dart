import 'package:expense_tracker/utilis/routes.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget{
@override
  Widget build(BuildContext context){
  return  Material(
    color: Colors.white,
    child: SingleChildScrollView(
      child: Column(
       children: [
         Image.asset("assets/images/undraw_secure_login_pdn4.png",fit :BoxFit.cover) ,
         const Text("Welcome",
             style:TextStyle(
               fontSize: 24 ,
               fontWeight: FontWeight.bold ,

         )) ,
         const SizedBox(
           height: 30,
         ) ,
         Padding(
           padding: const EdgeInsets.all(8.0),
           child :  Column(
             children :[
                 TextFormField(
                 decoration: const InputDecoration(
                     hintText: "Username" ,
                     labelText: "Enter Username"

                 ),
               ),
               TextFormField(
                 decoration:const  InputDecoration(
                   hintText: "Password" ,
                   labelText: "Enter Password",
                 ),
               ) ,
               const SizedBox(
                 height: 40,
               ) ,
               ElevatedButton(
                   onPressed: (){
                     Navigator.pushNamed(context ,MyRoutes.homeroutes) ;
                   },

                   style :TextButton.styleFrom(minimumSize: const Size(150, 40)) ,
                   child: const Text("Login") ,
               )




             ]
           )



         ),

       ],
      ),
    )
  ) ;
}
}
