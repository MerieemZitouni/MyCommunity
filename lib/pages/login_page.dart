import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget{
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
        body : SingleChildScrollView(
          child: SizedBox(//added with specifying the height to avoid conflicts between SingleChildScrollView and spacers
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: EdgeInsets.all(24),
              child: Column(
                children:[
                  Spacer(),
                  Text('Welcome back'
                  , style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'Urbanist'
                  ),
                  ),
                  Spacer(),
                  Text("login to continue",style: TextStyle(
                    color: Colors.white
                  ),),
                  SizedBox(height: 60 ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Username',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12),
                      )
                      ),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.5),
                    ),
                  ),
                  SizedBox(height: 16 ),
              
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12),
                      )
                      ),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.5),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: (){},
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                      ),
                      child: Text('Forgot password?'),
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    height:48,
                    width:double.infinity,
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.pushReplacementNamed(context, '/main');
                      },
                      child: Text('Login'),
                      style: ElevatedButton.styleFrom(
                       foregroundColor: Colors.black,
                       backgroundColor: Colors.amber
                    
                      ),
                    ),
                  ),
                  Spacer(),
                  Text('Or sign in with',
                  
                  style: TextStyle(
                    color: Colors.white
                  ),),
              
                   SizedBox(height: 16),
              
                  SizedBox(
                    height:48,
                    child: ElevatedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(child:
                        Image.asset('assets/images/google.png',
                        width:22,
                        height:22
                        ),
                        ),
                        SizedBox(width: 12),
                        Text('Login with Google')
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height:16),
              
                  SizedBox(
                    height:48,
                    child: ElevatedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        )
                      ),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Image.asset("assets/images/facebook.png",
                        width:22,
                        height:22
                        ),
                        ),
                        SizedBox(width: 12),
                        Text('Login with Facebook')
                        ],
                      )
                    ),
                  ),
              
              
                  Row(
                    children: [
                      Text("Don't have an account?",
                      
                      style: TextStyle(
                        color: Colors.white
                      ),
                      ),
                      TextButton(
                        onPressed: (){},
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.amber,),
                        child: Text('Sign up',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.amber, 
                          decorationStyle: TextDecorationStyle.solid,
                        ),
                        ),
                      ),
                    ]
                  ,),
                  
                  Spacer(),
                ],
              ),
            ),
          ),
        ),
      );
  }
}