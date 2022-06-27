import 'package:flutter/material.dart';
import 'package:portfolio_ui/api_get/home_api.dart';
import 'package:portfolio_ui/alertdilog/home_alertdilog.dart';
import 'package:portfolio_ui/custom_tabbar/custom_appbar.dart';
import 'package:portfolio_ui/edit_item/home_edit_item.dart';
import 'package:portfolio_ui/genaral_grid_p_grid/genaral_grid_view.dart';
import 'package:portfolio_ui/genaral_grid_p_grid/package_grid_view.dart';
import 'package:portfolio_ui/musicapp/music_homescreen.dart';
import 'package:portfolio_ui/page_transition/home_page_transition.dart';
import 'package:portfolio_ui/profile/profile.dart';
import 'package:portfolio_ui/sliver_appbar/sliver_appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CustomTabBar(),
    );
  }
}
