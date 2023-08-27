import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'main.dart';
import 'second.dart';
class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);
  @override
  State<first> createState() => _firstState();}

class _firstState extends State<first> {
  var emailController = TextEditingController();
  var passController = TextEditingController();
  var _formKey = GlobalKey<FormState>();
  var isLoading = false;
  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;}
    _formKey.currentState!.save();}
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SingleChildScrollView(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/Bitmap.png"),
              fit: BoxFit.fill,
            )
        ),
        child: Column(children: [
          Container(
            margin: EdgeInsets.only(top: 80),
            child:Image(image: AssetImage('images/1.png',),) ,
          ),
          Container(
            child: Form(
              // key: _formKey,
              child: Column(
                children: [Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 60.0, 20.0, 10.0),
                  child: Text(
                    'Login to Your Account',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                  Container(
                    width: 250.0,
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                    child: TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        icon: Icon(
                          Icons.email,
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(value)) {
                          return 'Enter a valid email!';
                        }
                        return null;
                      },
                    ),
                  ),

                  Container(
                    width: 250,
                    child: TextFormField(
                      controller: passController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        icon: Icon(
                          Icons.lock,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'This field is required';
                        }
                        if (value.trim().length <5) {
                          return 'Password must be at least 5 char';
                        }
                        // Return null if the entered username is valid
                        return null;
                      },
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  GestureDetector(
                    onTap: () {
                      // Route route = MaterialPageRoute(builder: (context) => second());
                      // Navigator.push(context, route);
                      login();
                      _submit();
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 250.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.0),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Colors.black, Colors.black, Colors.black, Colors.black,]
                        ),
                      ),
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 220),
            padding: EdgeInsets.symmetric(vertical: 16, horizontal:30),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 15),
                  blurRadius: 20,
                  color: Colors.black,
                  // color: Color(0xFF666666).withOpacity(.11),
                ),
              ],

            ),
          ),
        ],
        ),
      ),
    )

    );
  }

  Future<void> login() async{
    if(passController.text.isNotEmpty && emailController.text.isNotEmpty){
      var response= await http.post(Uri.parse("https://reqres.in/api/login"),
          body:({
            'email':emailController.text,
            'password':passController.text}));
      if(response.statusCode==200){
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => second())
        );
      }else{
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Invalid User')));
      }
    }else{
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Blank Field Not Allowed')));
    }
  }
}


