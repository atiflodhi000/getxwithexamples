
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getlocal/eamplecontroller.dart';

class Examplethree extends StatefulWidget {
  const Examplethree({Key? key}) : super(key: key);

  @override
  State<Examplethree> createState() => _ExamplethreeState();
}

class _ExamplethreeState extends State<Examplethree> {
  ExampleController exampleController = Get.put(ExampleController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Do You wanna to be login',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                Obx(() =>  Switch(value: exampleController.notification.value, onChanged: (value){
                  exampleController.SetNotification(value);
                })),



              ],
            ),
          ),
          Obx(() => exampleController.notification.value==true?
          Column(
            children: [
              Container(

                child: Column(
                  children: [
                    Text('Login',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Color(0xff858585)),),
                    SizedBox(height: 10,),
                    Text('Sign in to Continue',style: TextStyle(fontSize: 20,color: Color(0xff858585)),),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Email',
                          fillColor: Color(0xffFFFFFF),
                          filled: true,
                          prefixIcon: Icon(Icons.email_outlined,color: Color(0xff323F4B),),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffE4E7EB))
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide:BorderSide(color: Color(0xffE4E7EB))
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20,top: 10),
                      child: TextFormField(
                        decoration:const InputDecoration(
                            hintText: 'Password',
                            fillColor: Color(0xffFFFFFF),
                            filled: true,

                            prefixIcon: Icon(Icons.lock_open,color: Color(0xff323F4B),),
                            suffixIcon: Icon(Icons.visibility_off_outlined),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffE4E7EB))
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffE4E7EB))
                            )
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20,top: 20),
                      child: Container(
                        alignment: Alignment.bottomRight,
                        child: Text('Forget Password?',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              fontFamily: 'Rubik Regular',
                              color: Color(0xff808080)),),
                      ),
                    ),
                    SizedBox(height: 20,),
                    GestureDetector(
                      onTap: (){
                       // Navigator.push(context,MaterialPageRoute(builder: (context)=>Home()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          height: 50,
                          width: 400,
                          decoration: BoxDecoration(
                            color:const Color(0xffFFBF2E),
                            borderRadius: BorderRadius.circular(0),
                          ),

                          child:const Center(
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Rubik Regular',
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        Text(
                          'New to Dakhlay? ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Rubik Regular',
                              color: Color(0xff4C5980)),
                        ),
                        GestureDetector(
                          onTap: (){
                            //Navigator.push(context,MaterialPageRoute(builder: (context)=>SignUp()));
                          },
                          child: Text(
                            'Sign Up ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Rubik Medium',
                                color: Color(0xffFFBF2E)
                            ),

                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              )
            ],
          ) :
          Text(''),)
        ],
      ),
    );
  }
}
