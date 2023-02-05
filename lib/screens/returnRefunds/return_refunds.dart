import 'package:Vatki_Clothing_Store/widgets/appBar/appbar.dart';
import 'package:flutter/material.dart';

import '../../utils/constant/app_color.dart';

class ReturnRefunds extends StatelessWidget {
  const ReturnRefunds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HelperAppBar.appbarHelper(title: 'Return & Refunds', isCenter: true,isBackHelper: true),
      body: ListView(
        children: const[
          ListTile(
            title: Text('Return & Refunds',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: AppColors.black),),
            subtitle: Text('Return & Refunds we are working on it',style: TextStyle(fontSize: 20,color: AppColors.black),),
          ),
        ],
      ),
    );
  }
}
