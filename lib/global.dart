import 'package:flutter/material.dart';
import 'package:yashudha_property_user/bottom_pages/favourite.dart';
import 'package:yashudha_property_user/bottom_pages/home.dart';
import 'package:yashudha_property_user/bottom_pages/search.dart';
import 'package:yashudha_property_user/bottom_pages/setting.dart';

const webScreenSize = 600;

List<Widget> homeScreenItems = [
  Home_Screen(),
  Search(),
  Favourite(),
  Setting(),

  // Profile()
  //  Random(),
  //  ChatPage(),
  //  Profile(),
];
