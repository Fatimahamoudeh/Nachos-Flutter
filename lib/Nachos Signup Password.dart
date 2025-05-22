import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class nachossignuppassword extends StatefulWidget {
  const nachossignuppassword({Key? key}) :super(key: key);

  @override
  State<nachossignuppassword> createState() => _nachossignuppasswordState();
}

class _nachossignuppasswordState extends State<nachossignuppassword> {
  bool hidepassword1=true;
  bool hidepassword2=true;
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
                      height: 230,
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
                height: 300,
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
                        Text('To Nachos!',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.yellow.shade600)),
                      ],
                    ),
                    //-------------------------------------------------------------------
                    SizedBox(height: 20,),
                    Column(
                      children: [
                        //username
                        Container(
                            height: 35,
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
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
                        //password
                        Container(
                          height: 35,
                          child: TextField(
                            obscureText: hidepassword1,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              suffixIcon:IconButton(onPressed: (){
                                setState(() {
                                  hidepassword1= !hidepassword1;
                                });
                              },
                                  icon:hidepassword1?Icon(Icons.visibility,size: 20,):Icon(Icons.visibility_off,size: 20,)),
                              prefixIcon:Icon(Icons.lock,color: Colors.grey,size: 20,),
                              labelText:"Password",
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
                          ),
                        ),
                        SizedBox(height:10),
                        //confirmpassword
                        Container(
                          height: 35,
                          child: TextField(
                            obscureText: hidepassword2,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              suffixIcon:IconButton(onPressed: (){
                                setState(() {
                                  hidepassword2= !hidepassword2;
                                });
                              },
                                  icon:hidepassword2?Icon(Icons.visibility,size: 20,):Icon(Icons.visibility_off,size: 20,)),
                              prefixIcon:Icon(Icons.lock,color: Colors.grey,size: 20,),
                              labelText:"Confirm Password",
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
                          ),
                        ),
                        SizedBox(height: 15,),
                        //NEXT
                         ElevatedButton(
                           style: ElevatedButton.styleFrom(
                             backgroundColor: Colors.grey.shade700,
                             shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(8)
                             ),
                             minimumSize: Size(225, 25),
                           ),
                            onPressed: (){},
                            child: Text('Next',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 15),),
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