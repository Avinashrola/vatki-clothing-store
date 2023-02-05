import 'package:Vatki_Clothing_Store/widgets/textWidget/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/@customerControllers/landingController/landing_controller.dart';
import '../../../utils/constant/app_color.dart';
import '../../../widgets/dailog/exit_popup_dialog.dart';
import '../customerDrawer/customer_drawer.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}
 GlobalKey<ScaffoldState> keyDrawer = GlobalKey(); // Create a key

class _LandingScreenState extends State<LandingScreen> {
  final LandingController _c = Get.put(LandingController());


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Obx(
      () => WillPopScope(
        onWillPop: () async {
          if (_c.selectIndex.value != 0) {
            _c.selectIndex(0);
            return false;
          } else {
            bool val = await showExitPopup(context);
            return val;
          }
        },
        child: Scaffold(
          key: keyDrawer,
          drawer: const DrawerWidget(),
          body: _c.pages[_c.selectIndex.value],
          bottomNavigationBar: Container(
            padding: const EdgeInsets.only(bottom: 4, top: 4),
            width: size.width,
            decoration: BoxDecoration(
              color: AppColors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                bottomTabItem(
                  index: 0,
                  image1: 'assets/bottomPng/homeWhite.png',
                  image2: 'assets/bottomPng/homeGreen.png',
                  title: 'Home',
                ),
                bottomTabItem(
                  index: 1,
                  image1: 'assets/bottomPng/cartWhite.png',
                  image2: 'assets/bottomPng/cartGreen.png',
                  title: 'Cart',
                ),
                bottomTabItem(
                  index: 2,
                  image1: 'assets/bottomPng/leafWhite.png',
                  image2: 'assets/bottomPng/leafGreen.png',
                  title: 'Product',
                ),
                bottomTabItem(
                  index: 3,
                  image1: 'assets/bottomPng/ordersWhite.png',
                  image2: 'assets/bottomPng/ordersGreen.png',
                  title: 'Orders',
                ),
                bottomTabItem(
                  index: 4,
                  image1: 'assets/bottomPng/profileWhite.png',
                  image2: 'assets/bottomPng/profileGreen.png',
                  title: 'Profile',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget bottomTabItem({
    required int index,
    required String image1,
    required String image2,
    required String title,
  }) {
    return Obx(
      () => GestureDetector(
        onTap: () {
          _c.selectIndex.value = index;
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 4),
          decoration: BoxDecoration(
            color: _c.selectIndex.value == index
                ? AppColors.primaryColor
                : AppColors.transparent,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset( _c.selectIndex.value == index ? image1 : image2,height: 28,width: 28,fit: BoxFit.fill,),
              SizedBox(
                width: 50,
                child: TextWidget(
                    text: title,
                    textSize: 10,
                    fontWeight: FontWeight.normal,
                    color: _c.selectIndex.value == index
                        ? AppColors.white
                        : AppColors.primaryColor,
                    maxLine: 1,
                    align: TextAlign.center),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
