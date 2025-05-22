import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class nachoslogin extends StatefulWidget {
  const nachoslogin({Key? key}) :super(key: key);

  @override
  State<nachoslogin> createState() => _nachosesignupemailState();
}

class _nachosesignupemailState extends State<nachoslogin> {
  bool hidepassword=true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Stack(
                  children: [
                    Image.asset("assets/7.png",
                      height: 200,
                      width: 411,
                      fit:BoxFit.fill,
                    ),
                    Positioned(
                        top: 25,
                        left: 140,
                        child:Container(
                            alignment: Alignment.center,
                            child:
                            Image.asset("assets/8.png",
                              height: 60,
                              width: 120,
                              fit:BoxFit.fill,
                            )))]),
              //-----------------------------------------------------------------
              Container(
                height: 330,
                width: 300,
                margin: EdgeInsets.only(top: 5),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Welcome',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30)),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Back!',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.yellow.shade600)),
                      ],
                    ),
                    //-------------------------------------------------------------------
                    SizedBox(height: 15,),
                    Column(
                      children: [
                        Container(
                            height: 35,
                            child: const TextField(
                              decoration: InputDecoration(
                                  border:InputBorder.none,
                                  prefixIcon:Icon(Icons.person_rounded,color: Colors.grey,size: 20,),
                                  labelText:"Username",
                                  labelStyle: TextStyle(fontSize: 15),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.grey),
                                      borderRadius: BorderRadius.all(Radius.circular(9))
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.yellow),
                                      borderRadius: BorderRadius.all(Radius.circular(9))
                                  )
                              ),

                            )
                        ),
                        SizedBox(height:10),
                        Container(
                          height: 35,
                          child: TextField(
                            obscureText: hidepassword,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                suffixIcon:IconButton(onPressed: (){
                                  setState(() {
                                    hidepassword= !hidepassword;
                                  });
                                },
                                    icon:hidepassword?Icon(Icons.visibility_off,color: Colors.grey,size: 20,):
                                    Icon(Icons.visibility,color: Colors.grey,size: 20,)),
                                prefixIcon:Icon(Icons.lock,color: Colors.grey,size: 20,),
                                labelText:"Password",
                                labelStyle: TextStyle(fontSize: 10),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                    borderRadius: BorderRadius.all(Radius.circular(9))
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.yellow),
                                    borderRadius: BorderRadius.all(Radius.circular(9))
                                )

                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Align(
                          alignment: Alignment.center,
                          child:TextButton(onPressed: (){},child: Text('Forget Your Password ?',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.black,
                          ),),),
                        ),
                        SizedBox(height: 5,),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.yellow,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)
                            ),
                            minimumSize: Size(225, 25),
                          ),
                          onPressed: (){},
                          child: Text('Login',style: TextStyle(fontWeight: FontWeight.bold,
                              color: Colors.white,fontSize: 15),),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey.shade700,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)
                            ),
                            minimumSize: Size(225, 25),
                          ),
                          onPressed: (){},
                          child: Text('Signup',style: TextStyle(fontWeight: FontWeight.bold,
                              color: Colors.white,fontSize: 15),),
                        ),
                      ],
                    ),
                    //-------------------------------------------------------------------

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}