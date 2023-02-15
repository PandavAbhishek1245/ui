import 'package:flutter/material.dart';

import 'ui1screen.dart';

class UiScreen extends StatefulWidget {
  const UiScreen({Key? key}) : super(key: key);

  @override
  State<UiScreen> createState() => _UiScreenState();
}

class _UiScreenState extends State<UiScreen> {

  var unnameController=TextEditingController();
  var passswordcontroller=TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool ishiddenpassward = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffebebeb),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Form(
            key:_formKey,
            child:  Column(
              children: [
                SizedBox(height: 25),
                Row(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      color: Color(0xff96989b),
                      child: Icon(Icons.arrow_back_ios),
                    ),
                  ],
                ),

                SizedBox(height: 15),

                Row(
                  children: [
                    SizedBox(width: 20,),
                    Container(
                      child:Text("Hello Again!",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Color(0xff03195b)),),
                    ),
                  ],
                ),
                SizedBox(height:5),

                Row(
                  children: [
                    SizedBox(width: 20),
                    Container(
                      child:Text("Welcome",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Color(0xff03195b)),),
                    ),
                  ],
                ),
                SizedBox(height:5),

                Row(
                  children: [
                    SizedBox(width: 20,),
                    Container(
                      child:Text("back",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Color(0xff03195b)),),
                    ),
                  ],
                ),
                SizedBox(height:20),

                TextFormField(
                  obscureText: true,
                  controller: unnameController,
                  validator: (a){
                    if(a!.isEmpty){
                      return 'enter user name ';
                    }
                    else if (a.length<=8){
                      return 'enter 8 character';
                    }
                  },
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ), labelText:"Email address or mobile number",
                      hintText: "please enter username or mobile number",
                      labelStyle: TextStyle(fontSize:20, fontWeight: FontWeight.bold),
                      hintStyle: TextStyle(fontWeight: FontWeight.bold)
                  ),

                ),

                SizedBox(height: 10),

                TextFormField(
                  obscureText: ishiddenpassward,
                  controller: passswordcontroller,
                  validator: (a){
                    if(a!.isEmpty){
                      return 'please enter passward';
                    }
                    else if (a.length<=6){
                      return 'enter 10 character';
                    }
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: "passward",
                    hintText: 'enter your passward',
                    // suffixIcon: Icon(Icons.remove_red_eye,),

                    suffixIcon: IconButton(
                      icon:Icon(ishiddenpassward ? Icons.security:Icons.remove_red_eye),
                      onPressed: (){
                        ishiddenpassward =! ishiddenpassward;
                        setState(() {

                        });

                        // print("ok");
                      }, ),

                  ),
                ),

                SizedBox(height: 15),

                GestureDetector(
                  onTap:(){
                    if(_formKey.currentState!.validate()){
                      // print('done');
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Ui1Screen(),));
                    }
                  } ,
                  child: Container(
                    height: 40,
                    width: 350,
                    child: Center(child: Text("sign in ",style: TextStyle(fontSize: 20,color: Colors.white),),),
                    decoration: BoxDecoration(
                      color: Color(0xff03195b),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    // color: Colors.red,
                  ),

                ),
                SizedBox(height: 25),

                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 22),
                      child: Text("Forget Your Passward ?"),
                    ),
                    SizedBox(width: 140),
                    Text('Sign Up'),
                  ],
                ),
                SizedBox(height: 30),

                Container(
                  height: 290,
                  width: 395,
                  // color: Colors.cyan,
                  child: Image.network("https://images.unsplash.com/photo-1611071512738-6dd137f8ff29?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80",fit: BoxFit.cover,),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
