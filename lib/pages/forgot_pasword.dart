import 'package:flutter/material.dart';
import 'package:mcd/components/button_forgot.dart';
import 'package:mcd/components/my_textfield.dart';
import 'package:mcd/components/square_tile.dart';
import 'dashboard.dart';

class Forgotpw extends StatelessWidget {
  Forgotpw({super.key});

  // text editing controllers
  final emailController = TextEditingController();


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
  'https://th.bing.com/th/id/OIP.sUpDsWLRzc0J4J6hY31zSwHaHa?w=167&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7', // Ganti dengan URL gambar yang benar
  width: 100,
  height: 100,
),

              const SizedBox(height: 50),
   
              // welcome back, you've been missed!
              Text(
                'Forgot Pass',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 25),

              // username textfield
              MyTextField(
                controller: emailController,
                hintText: 'Masukan email anda',
                obscureText: false,
              ),

              const SizedBox(height: 10),

             

              // forgot password?
           

              const SizedBox(height: 25),

              // sign in button
            MyButton(
  onTap: () {
    // Your code here
   //Hyperlink aksi forgot password
  },
            
),



              const SizedBox(height: 50),
             
            
              // not a member? register now
              
            ],
          ),
        ),
      ),
    );
  }
}