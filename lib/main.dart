import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio_ui/api_get/home_api.dart';
import 'package:portfolio_ui/alertdilog/home_alertdilog.dart';
import 'package:portfolio_ui/blare_opecity/blare_opecity.dart';
import 'package:portfolio_ui/custom_tabbar/custom_appbar.dart';
import 'package:portfolio_ui/edit_item/home_edit_item.dart';
import 'package:portfolio_ui/full_screen_color/full_screen_color.dart';
import 'package:portfolio_ui/genaral_grid_p_grid/genaral_grid_view.dart';
import 'package:portfolio_ui/genaral_grid_p_grid/package_grid_view.dart';
import 'package:portfolio_ui/gradient_appbar/gradient_appbar.dart';
import 'package:portfolio_ui/hident_statusbar/hident_statusbar.dart';
import 'package:portfolio_ui/musicapp/music_homescreen.dart';
import 'package:portfolio_ui/page_transition/home_page_transition.dart';
import 'package:portfolio_ui/profile/profile.dart';
import 'package:portfolio_ui/searce_appbar/searce_appbar.dart';
import 'package:portfolio_ui/sliver_appbar/sliver_appbar.dart';

void main() {
  //
  // SystemChrome.setEnabledSystemUIMode(
  //   SystemUiMode.immersiveSticky,
  //   // manual for overlays
  //   // leanBack single tuch on and single tuch off
  //   // immersive swape to on
  //   // immersiveStickey swape to on for few secand
  //   overlays: [
  //     // if do top make top not hedant
  //     // if do bottom make bottom not hedant
  //     // if do both or no one will be both heint
  //     // SystemUiOverlay.bottom,
  //     // SystemUiOverlay.top,
  //   ],
  // );
  //
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}
