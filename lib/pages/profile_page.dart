import 'package:flutter/material.dart';
import 'package:flutter_app1/styles/app_text.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/temp/user1.png',
              width: 90,
              height: 90,
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              'Meriem Zitouni',
              style: AppText.header2,
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Algeria',
              style: AppText.subtitle3,
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      '477',
                      style: AppText.header2,
                    ),
                    Text('Followers')
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '532',
                      style: AppText.header2,
                    ),
                    Text('Posts')
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '477',
                      style: AppText.header2,
                    ),
                    Text('Following')
                  ],
                )
              ],
            ),
            Divider(
              thickness: 1,
              height: 24,
            )
          ],
        ),
      ),
    );
  }
}
