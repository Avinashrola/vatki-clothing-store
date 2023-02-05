import 'package:flutter/material.dart';
import '../../utils/constant/app_color.dart';
import '../../widgets/appBar/appbar.dart';
import '../../widgets/textWidget/text_widget.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HelperAppBar.appbarHelper(
          title: 'About Us', isCenter: false, isBackHelper: true),
      body: ListView(
        children: const [
          SizedBox(
            height: 10,
          ),
          ListTile(
            title: TextWidget(
                text: "Bringing a personal touch back to the products",
                textSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.black,
                maxLine: 14,
                align: TextAlign.start),
            subtitle: Padding(
              padding: EdgeInsets.all(8.0),
              child: TextWidget(
                  text:
                      "Established in the year 2021, BCart was launched with a motive to connect retailers and wholesalers to the right manufacturers. The pioneers of our company, Mr Prosenjit Debnath, have worked day-in and day-out to bring life to what we call BCart. We, as a seller of BCart clothing items, render direct access to a diverse style guide in contemporary designs. The brands we are associated with include Religious Products of different communities, Hindu, Muslim, Christian, Sikh etc.",
                  textSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black,
                  maxLine: 14,
                  align: TextAlign.start),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            title: TextWidget(
                text: "The Vision Statement",
                textSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.black,
                maxLine: 14,
                align: TextAlign.start),
            subtitle: Padding(
              padding: EdgeInsets.all(8.0),
              child: TextWidget(
                  text:
                      "At BCart, we believe in the power of religious products to build confidence and thus, we endeavor to cater to clients from all backgrounds, age-groups, and gender.",
                  textSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black,
                  maxLine: 14,
                  align: TextAlign.start),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            title: TextWidget(
                text: "The Mission Statement",
                textSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.black,
                maxLine: 14,
                align: TextAlign.start),
            subtitle: Padding(
              padding: EdgeInsets.all(8.0),
              child: TextWidget(
                  text:
                      "If our vision is something that drives us for the better, our purpose is the deadline we meet every day. Our mission is to bring together a group of committed people from all walks of our business like retailers, wholesalers, and manufacturing units, to fulfill the needs of our clients and attain profitable growth. 100% customer satisfaction is our ultimate goal, and we can only give them so when all these groups are on the same page.",
                  textSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black,
                  maxLine: 14,
                  align: TextAlign.start),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            title: TextWidget(
                text: "Our Pride",
                textSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.black,
                maxLine: 14,
                align: TextAlign.start),
            subtitle: Padding(
              padding: EdgeInsets.all(8.0),
              child: TextWidget(
                  text:
                      "At BCart, we pride ourselves to be a company that combines the three main pillars of gods products and also has physical stores in Kolkata and Delhi. We are proud to be associated with everyone who has bestowed their faith in us and believed in our vision and mission throughout.",
                  textSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black,
                  maxLine: 14,
                  align: TextAlign.start),
            ),
          ),
        ],
      ),
    );
  }
}
