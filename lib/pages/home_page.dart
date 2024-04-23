import 'package:flutter/material.dart';
import 'package:flutter_app1/components/post_item.dart';
import 'package:flutter_app1/styles/app_colors.dart';
import 'package:flutter_app1/styles/app_text.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  List<String> users = [];
  

  @override
  Widget build(BuildContext context) {
    mockUsersFromServer();
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: AppColors.background,
        shadowColor: Colors.black,
        surfaceTintColor: AppColors.background,
        title: Text('Home Page'),
        elevation: 4.0,
        centerTitle: false,
        actions:[
          Icon(Icons.location_on_outlined)
        ]
      ),
      body : ListView.separated(itemBuilder: (context,index){
        return PostItem(user: users[index],);
      }, itemCount: users.length, separatorBuilder: (BuildContext context, int index) { 
        return SizedBox(
          height: 24,
        );
        
       },)
    );
  }//build

  
  mockUsersFromServer(){
    for(var i=0;i<100;i++){
      users.add('User number $i');
    }
  }

}