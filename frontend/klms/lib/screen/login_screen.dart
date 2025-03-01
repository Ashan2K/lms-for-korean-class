import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatelessWidget {
  //late TextEditingController _userName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 40, right: 40, top: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.width * 0.35,
                child: Image.asset('lib/images/koreanlogo.png'),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Welcome Back',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
              ),
              Text(
                ''
                'Login to your Account',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 24),
              TextField(
                //controller: _userName,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  hintText: 'user name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                //controller: _userName,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  hintText: 'password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Login',
                    style: TextStyle(fontSize: 16, color: Colors.white)),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(vertical: 12.0, horizontal: 56.0)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
                ),
              ),
              SizedBox(
                height: 48,
              ),
              Text('Or SignIn with '),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey
                                .withOpacity(0.3), // Shadow color with opacity
                            offset: Offset(0, 4), // Shadow offset (x, y)
                            blurRadius: 6, // Softness of the shadow
                          ),
                        ],
                      ),
                      height: MediaQuery.of(context).size.width * 0.1,
                      width: MediaQuery.of(context).size.width * 0.12,
                      child: Image.asset('lib/images/Facebook.png')),
                  SizedBox(
                    width: 24,
                  ),
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey
                                .withOpacity(0.3), // Shadow color with opacity
                            offset: Offset(0, 4), // Shadow offset (x, y)
                            blurRadius: 6, // Softness of the shadow
                          ),
                        ],
                      ),
                      height: MediaQuery.of(context).size.width * 0.1,
                      width: MediaQuery.of(context).size.width * 0.12,
                      child: Image.asset('lib/images/Google.png'))
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Do\'t have an Account ?',
                  style: TextStyle(
                    color: Colors.black54
                  )
                  ),
                  TextButton(
                    onPressed: () {
                      // Your action when the text is clicked
                    },
                    child: Text(
                      'Signup here',
                      style: TextStyle(
                        color: Colors.indigoAccent,
                        decoration: TextDecoration
                            .underline, // Underlined like a hyperlink
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
