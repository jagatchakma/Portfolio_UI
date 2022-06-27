import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final double coverHeight = 280;
  final double profileHeight = 144;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          top_section(),
          buildContent(),
        ],
      ),
    );
  }

  Stack top_section() {
    final top = coverHeight - profileHeight / 2;
    final bottom = profileHeight / 2;
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: bottom),
          child: buildCoverImage(),
        ),
        Positioned(
          top: top,
          child: buildProfileImage(),
        )
      ],
    );
  }

  buildCoverImage() {
    return Container(
      color: Colors.grey,
      child: Image.network(
        'https://wallpapertag.com/wallpaper/full/7/3/2/154689-cool-coding-background-1920x1280-for-tablet.jpg',
        width: double.infinity,
        height: coverHeight,
        fit: BoxFit.cover,
      ),
    );
  }

  // buildProfileImage() {
  //   return CircleAvatar(
  //     backgroundColor: Colors.grey.shade800,
  //     radius: profileHeight / 2,
  //     backgroundImage: NetworkImage(
  //       'https://wallpapertag.com/wallpaper/full/7/3/2/154689-cool-coding-background-1920x1280-for-tablet.jpg',
  //     ),
  //   );
  // }

  buildProfileImage() {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(width: 3.0, color: Colors.white),
      ),
      child: CircleAvatar(
        radius: profileHeight / 2,
        backgroundImage: NetworkImage(
            'https://wallpapertag.com/wallpaper/full/7/3/2/154689-cool-coding-background-1920x1280-for-tablet.jpg'),
      ),
    );
  }

  buildContent() {
    return Column(
      children: [
        Text(
          'User name',
          style: TextStyle(fontSize: 25.0, color: Colors.purple),
        ),
        Text(
          'User name',
          style: TextStyle(fontSize: 25.0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildSofialIcon(iconData: Icons.pause),
            SizedBox(width: 20.0),
            buildSofialIcon(iconData: Icons.event),
            SizedBox(width: 20.0),
            buildSofialIcon(iconData: Icons.backspace_outlined),
            SizedBox(width: 20.0),
            buildSofialIcon(iconData: Icons.dashboard),
          ],
        )
      ],
    );
  }

  buildSofialIcon({required IconData iconData}) {
    return CircleAvatar(
      child: Material(
        child: InkWell(
          onTap: () {},
          child: Center(
            child: Icon(
              iconData,
              size: 50.0,
              color: Colors.purple,
            ),
          ),
        ),
      ),
    );
  }
}
