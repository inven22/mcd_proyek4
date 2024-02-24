import 'package:flutter/material.dart';
import 'package:mcd/components/my_register_button.dart';
import 'package:mcd/components/my_textfield.dart';
import 'package:mcd/components/square_tile.dart';
import 'dashboard.dart';
import 'forgot_pasword.dart';

class registerPage extends StatelessWidget {
  registerPage({super.key});

  // text editing controllers
  final nameController = TextEditingController();
  final emailController = TextEditingController();
   final  usernameController = TextEditingController();
    final passwordController = TextEditingController();

  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),

              // logo
             Image.network(
                     'https://github.com/material-components/material-components-flutter-codelabs/blob/101-starter/mdc_100_series/assets/diamond.png?raw=true',
                  width: 100,
                  height: 100,
                ),

              const SizedBox(height: 50),
   
              // welcome back, you've been missed!
              Text(
                'Register here!',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 25),

              // username textfield
              MyTextField(
                controller: nameController,
                hintText: 'Masukan nama anda',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              // password textfield
              MyTextField(
                controller: emailController,
                hintText: 'Masukan email anda',
                obscureText: false,
              ),

              const SizedBox(height: 10),

                MyTextField(
                controller: usernameController,
                hintText: 'Masukan Username anda',
                obscureText: false,
              ),

              const SizedBox(height: 10),

                MyTextField(
                controller: passwordController,
                hintText: 'Masukan password anda',
                obscureText: true,
              ),

              const SizedBox(height: 10),
              const SizedBox(height: 25),

              // sign in button
            MyButton(
  onTap: () {
    // Your code here
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Dashboard()),
    );
  },
            
),



              const SizedBox(height: 50),
Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                
                ],
              ),
              // or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                     
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),

             

              // not a member? register now
             
            ],
          ),
        ),
      ),
    );
  }
}