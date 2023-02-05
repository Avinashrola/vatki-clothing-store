import 'package:flutter/material.dart';
import '../../utils/constant/app_color.dart';
import '../../widgets/appBar/appbar.dart';

class Faq extends StatelessWidget {
  const Faq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HelperAppBar.appbarHelper(title: 'FAQ', isCenter: true,isBackHelper: true),
      body: ListView(
        children: const [
          ListTile(
            title: Text('FAQs',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: AppColors.black),),
            subtitle: Text('FAQs we are working on it',style: TextStyle(fontSize: 20,color: AppColors.black),),
          ),
        ],
      ),
    );
  }
}
