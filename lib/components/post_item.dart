import 'package:flutter/material.dart';
import 'package:flutter_app1/styles/app_text.dart';

class PostItem extends StatelessWidget {
  const PostItem({super.key, required this.user});
  final String user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:24),
      child: Column(
        children: [
          Row(
                  children: [
                    Image.asset(
                      'assets/temp/user1.png',
                      width:40,
                      height:40,
                    ),
                    SizedBox(width:16),
                    Text(user,style: AppText.subtitle3,),
                  ],
                ),
          SizedBox(height: 12),
          Image.asset('assets/temp/post1.jpg'),
          SizedBox(height: 12),
          Text('The sun is a daily reminder that we too can bright',
          style: AppText.subtitle3,)
      
        ],
      ),
    );
  }
}