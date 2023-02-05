import 'package:Vatki_Clothing_Store/screens/cartScreen/cart_screen.dart';
import 'package:Vatki_Clothing_Store/screens/profileScreen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../screens/@customerScreens/customerHomePage/customer_home_screen.dart';
import '../../../screens/@customerScreens/productList/product_list.dart';
import '../../../screens/orderhistoryScreen/order_history_screen.dart';

class LandingController extends GetxController {
  var selectIndex = 0.obs;
  var pages = const <Widget>[
    CustomerHomeScreen(),
    CartScreen(),
    ProductList(),
    OrderHistory(),
    ProfilePage(),
  ].obs;
}
