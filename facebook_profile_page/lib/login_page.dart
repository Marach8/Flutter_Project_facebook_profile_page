import 'package:facebook_profile_page/users.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {  
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final TextEditingController _controller3 = TextEditingController();
  final TextEditingController _controller4 = TextEditingController();   
  bool isRegistered = true;

  // Future <void> dialogBox() async{
  //   return showDialog(
  //     context: context,
  //     builder: (context) => 
  //       AlertDialog(
  //         title: const Text('Error!'),
  //         content: const Text('Wrong Username or Password'),
  //         actions: [
  //           ElevatedButton(
  //             onPressed: (){Navigator.of(context).pop();},
  //             child: const Text('Ok')
  //           )
  //         ]
  //       )
  //   );
  // }

  @override
  Widget build(BuildContext context){    
    var h = MediaQuery.of(context).size.height;    
    var w = MediaQuery.of(context).size.width;
    bool fieldsNotEmpty = [_controller1, _controller2, _controller3, _controller4].every((controller) => controller.text.isNotEmpty); 
    
    return Consumer<Users>(
      builder: ((context, users, child)
      => Scaffold(      
        body: SingleChildScrollView(
          child: Container(
            color: isRegistered? const Color.fromARGB(255, 5, 28, 50): Colors.blueGrey.shade900,//const Color.fromARGB(255, 30, 29, 30),
            child: Column(
              children: [
                SizedBox(
                  height:h*0.04
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: (){
                        if (!isRegistered){setState(() => isRegistered = !isRegistered);}
                        _controller2.clear();
                        _controller3.clear();
                      },
                      icon: const Icon(Icons.arrow_back_outlined),
                      color: Colors.white,
                    )
                  ]
                ),
                SizedBox(
                  height: h*0.045
                ),
                Text('English (US)',
                  style: GoogleFonts.getFont(
                    'Ubuntu',
                  color: Colors.white60,
                  fontWeight: FontWeight.w100
                  )
                ),
                SizedBox(
                  height: h*0.051
                ),
                CircleAvatar(
                  radius: h*0.038,
                  backgroundColor: const Color.fromARGB(255, 46, 108, 224),                    
                  child: Text(
                    'f',
                    style: TextStyle(
                      fontSize: h*0.07,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromRGBO(255, 255, 255, 0.8)
                    )
                  )
                ), 
                SizedBox(
                  height: h*0.075
                ),

                isRegistered? Container(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Column(
                    children: [
                      const Divider(
                        height:2,
                        color: Colors.white60                    
                      ),
                      SizedBox(
                        height: h*0.005
                      ),
                      Text.rich(                                    
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'By proceeding, you agree to ',
                              style: GoogleFonts.getFont(
                                'Nunito',
                                color: Colors.white,
                                fontSize: MediaQuery.of(context).size.height*0.0185,
                                fontWeight: FontWeight.w400
                              ),
                            ),
                            TextSpan(
                              text: "MTN's Terms",
                              style: GoogleFonts.getFont(
                                'Nunito',
                                color: Colors.blue.shade500,
                                fontSize: MediaQuery.of(context).size.height*0.0185,
                                fontWeight: FontWeight.w400
                              ),
                            ),
                            TextSpan(
                              text: ", which includes letting Facebook request and receive your data.",
                              style: GoogleFonts.getFont(
                                'Nunito',
                                color: Colors.white,
                                fontSize: h*0.0185,
                                fontWeight: FontWeight.w400
                              ),
                            ),
                          ]
                        ),
                      ),
                      Divider(
                        thickness: h*0.0015,                      
                        color: Colors.white                   
                      ),
                    ]
                  )
                ) : Container(
                  margin: const EdgeInsets.fromLTRB(20, 0, 20, 15),
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  height: h*0.072,                  
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 22, 37, 52),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 1
                      )
                    ]
                  ),
                  child: TextField(
                    controller: _controller1,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(              
                      hintStyle: GoogleFonts.getFont(
                        'Quicksand',
                        color: Colors.white38,
                        fontSize: h*0.02,
                        fontWeight: FontWeight.bold,
                      ),
                      hintText: 'Username',
                      border: InputBorder.none,                                                     
                    )
                  ),
                ), 
                SizedBox(
                  height: h*0.004
                ),
                Container(    
                  margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  height: h*0.072,                  
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 22, 37, 52),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 1
                      )
                    ]
                  ),
                  child: TextField(
                    controller: _controller2,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(              
                      hintStyle: GoogleFonts.getFont(
                        'Quicksand',
                        color: Colors.white38,
                        fontSize: h*0.02,
                        fontWeight: FontWeight.bold,
                      ),
                      hintText: 'Mobile number or email',
                      border: InputBorder.none,                                                     
                    )
                  ),
                ), 
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.02
                ),
                Container(    
                  margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  height: h*0.072,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 22, 37, 52),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 1
                      )
                    ]
                  ),
                  child: TextField(
                    controller: _controller3,
                    obscureText: true,
                    style: const TextStyle(color:Colors.white),
                    decoration: InputDecoration(                            
                      hintStyle: GoogleFonts.getFont(
                        'Quicksand',
                        color: Colors.white38,
                        fontSize: h*0.02,
                        fontWeight: FontWeight.bold,
                      ),
                      hintText: 'Password',
                      border: InputBorder.none,                                                     
                    )
                  ),
                ),
                isRegistered? SizedBox(
                  height: h*0.02
                ): Container(    
                  margin: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  height: h*0.072,                  
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 22, 37, 52),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 1
                      )
                    ]
                  ),
                  child: TextField(
                    controller: _controller4,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(              
                      hintStyle: GoogleFonts.getFont(
                        'Quicksand',
                        color: Colors.white38,
                        fontSize: h*0.02,
                        fontWeight: FontWeight.bold,
                      ),
                      hintText: 'Date of Birth (dd/mm/yy)',
                      border: InputBorder.none,                                                     
                    )
                  ),
                ), 
                SizedBox(                            
                  height: h*0.06, width: w*0.9,
                  child: ElevatedButton(    
                    style: ButtonStyle(
                      backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 46, 108, 224),),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)
                        )
                      )
                    ),
                    onPressed: (){
                      if (isRegistered){
                        if(users.storeUsers.containsKey(_controller2.text) && users.storeUsers[_controller2.text]!.contains(_controller3.text)){
                        Navigator.of(context).pushNamed('/profile');
                        users.loggedInUser = _controller2.text;
                        _controller2.clear(); 
                        _controller3.clear();                         
                      } else{
                        // dialogBox();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            action: SnackBarAction(
                              onPressed: (){
                                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                              },
                              label: 'Ok'
                            ),
                            content: Text(
                              'Invalid Username or Password',
                              style: GoogleFonts.getFont('Quicksand', fontWeight: FontWeight.w700,)
                            ),
                            duration: const Duration(seconds:5),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15)
                              )
                            ),
                            backgroundColor: Colors.red.shade900,
                            elevation: 20,      
                          )
                        );
                      } 
                      } else{
                        if (fieldsNotEmpty){
                          users.register(_controller1.text, _controller2.text, _controller3.text, _controller4.text);
                          setState(() => isRegistered = !isRegistered); 
                          _controller1.clear(); 
                          _controller2.clear();
                          _controller3.clear(); 
                          _controller4.clear();
                        } else{
                          ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            action: SnackBarAction(
                              onPressed: (){
                                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                              },
                              label: 'Ok'
                            ),
                            content: Text(
                              'Invalid Registration Details',
                              style: GoogleFonts.getFont(
                                'Quicksand',
                                fontWeight: FontWeight.w700,                                
                              )
                            ),
                            duration: const Duration(seconds:5),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15)
                              )
                            ),
                            backgroundColor: Colors.red.shade900,
                            elevation: 20,      
                          )
                        );
                        }
                      }
                    },
                    child: Text(
                      isRegistered? 'Log in' : 'Register',
                      style: GoogleFonts.getFont(
                        'Quicksand',
                        color: Colors.white,
                        fontSize: h*0.02,
                        fontWeight: FontWeight.bold,
                      )
                    )
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.005
                ),
                SizedBox(
                  height: h*0.05,
                  child: isRegistered? TextButton(                              
                    child: Text(
                      'Forgot password?',
                      style: GoogleFonts.getFont(
                      'Quicksand',
                      color: Colors.white,
                      fontSize: h*0.02,
                      fontWeight: FontWeight.bold
                      )
                    ),
                    onPressed: (){ Navigator.of(context).pushNamed('/forgot_password');}                            
                  ) : SizedBox(height: h*0.05),
                ),
                isRegistered? SizedBox(height: h*0.09): const SizedBox(),
                isRegistered? ElevatedButton(    
                  style: ButtonStyle(
                    fixedSize: MaterialStatePropertyAll(Size(w*0.9, h*0.06)),
                    backgroundColor: const MaterialStatePropertyAll(
                      Color.fromARGB(255, 5, 28, 50),
                      ),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(
                          width: 0.9, 
                          color: Color.fromARGB(255, 46, 108, 224),
                        )
                      )
                    )
                  ),
                  onPressed: (){
                    setState(() => isRegistered = !isRegistered);
                    _controller2.clear();
                    _controller3.clear();
                  },
                  child: Text(
                    'Create new account',
                    style: GoogleFonts.getFont(
                      'Quicksand',
                      color: const Color.fromARGB(255, 25, 83, 190),
                      fontSize: h*0.02,
                      fontWeight: FontWeight.bold,
                    )
                  )
                ) : SizedBox(height: h*0.06),
                SizedBox(
                  height: h*0.02
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [                    
                    FaIcon(FontAwesomeIcons.meta,
                    color: Colors.white,
                    size: h*0.02,
                    ),
                    SizedBox(
                    width: w*0.01
                    ),
                    Text('Meta',
                    style: GoogleFonts.getFont(
                      'Quicksand',
                      color: Colors.white,
                      fontSize: h*0.022
                      )
                    )
                  ]
                ),
                SizedBox(                  
                  height: h*0.05, width: w
                )
              ]
            ),
          ),
        ),  
        ) 
      ),
    );
  }
}