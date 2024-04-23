import 'package:flutter/material.dart';
import 'package:flutter_app1/pages/home_page.dart';
import 'package:flutter_app1/pages/profile_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
        //we have to add more than two elements plus their labels
        BottomNavigationBarItem(icon: SvgPicture.asset('assets/svg/ic_home.svg') ,label:'Home'),
        BottomNavigationBarItem(icon: SvgPicture.asset('assets/svg/ic_favorite.svg'), label: 'Favorite'),
        BottomNavigationBarItem(icon: SvgPicture.asset('assets/svg/ic_messages.svg'), label: 'Add Post'),
        BottomNavigationBarItem(icon: SvgPicture.asset('assets/svg/ic_messages.svg'), label: 'Messages'),
        BottomNavigationBarItem(icon: SvgPicture.asset('assets/svg/ic_user.svg'), label: 'User'),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,//set the current index to the defined var
        onTap: (index){
          setState(()=>currentIndex=index); 
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.amber,
        ),
    );
  }
  final pages= [
    HomePage(),
    Center(child: Text('Favorite')),
    Center(child: Text('Add Post')),
    Center(child: Text('Messages')),
    ProfilePage()
  ];
}