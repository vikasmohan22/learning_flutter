import 'package:expense_tracker/utilis/routes.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget{
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name="" ;
  bool changeButton=false ;
@override
  Widget build(BuildContext context){
  return  Material(
    color: Colors.white,
    child: SingleChildScrollView(
      child: Column(
       children: [
         Image.asset("assets/images/undraw_secure_login_pdn4.png",fit :BoxFit.cover) ,
          Text("Welcome $name",
             style:const TextStyle(
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
                    onChanged :(value){
                    name=value ;
                    setState(() {

                    });
                    },
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
               InkWell(
                 onTap: ()async{
                   setState(() {
                     changeButton=true ;
                   });
                   await Future.delayed( const Duration(seconds:1)) ;
                   Navigator.pushNamed(context ,MyRoutes.homeroutes) ;
                 },
                 child: AnimatedContainer(
                   duration: const Duration(seconds:1),
                   width:changeButton?50 :150,
                   height: 50,

                   alignment: Alignment.center ,
                   decoration: BoxDecoration(
                       color: Colors.deepPurple,
                       borderRadius: BorderRadius.circular(8)
                   ),
                   child: changeButton ? const Icon(Icons.done): const Text(
                     "Login" ,
                     style: TextStyle(
                       color: Colors.white ,
                       fontWeight: FontWeight.bold ,
                       fontSize: 18,
                     ),
                   ),

                 ),
               ),

               // ElevatedButton(
               //     onPressed: (){
               //       Navigator.pushNamed(context ,MyRoutes.homeroutes) ;
               //     },
               //
               //     style :TextButton.styleFrom(minimumSize: const Size(150, 40)) ,
               //     child: const Text("Login") ,
               // )




             ]
           )



         ),

       ],
      ),
    )
  ) ;
}
}
