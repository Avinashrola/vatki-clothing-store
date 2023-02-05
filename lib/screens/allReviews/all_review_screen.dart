import 'package:Vatki_Clothing_Store/screens/@customerScreens/customerHomePage/homeWidgets/home_card.dart';
import 'package:Vatki_Clothing_Store/utils/constant/app_color.dart';
import 'package:Vatki_Clothing_Store/widgets/dailog/edit_review_dialog.dart';
import 'package:Vatki_Clothing_Store/widgets/rating/rating.dart';
import 'package:Vatki_Clothing_Store/widgets/textWidget/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllReviewScreen extends StatefulWidget {
  const AllReviewScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<AllReviewScreen> createState() => _AllReviewScreenState();
}

String sorting = "Highest Rated";

// var ratingData = Get.arguments[0];
class _AllReviewScreenState extends State<AllReviewScreen> {
  int totalStartStep = 5;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // return Obx(() {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        iconTheme: const IconThemeData(color: AppColors.primaryColor),
        title: const TextWidget(
            text: "All Reviews",
            textSize: 12,
            fontWeight: FontWeight.normal,
            color: AppColors.black,
            maxLine: 1,
            align: TextAlign.start),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: DropdownButton<String>(
              value: sorting,
              underline: const SizedBox(),
              items:
                  <String>["Highest Rated", "Lowest Rated"].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (val) {
                sorting = val.toString();
                // cardDetailsController
                //     .getProductreview(
                //         cardDetailsController.cardDetailsModel!.data.id,
                //         val == "Highest Rated"
                //             ? "highest_rated"
                //             : "lowest_rated")
                //     .then((value) {
                //   setState(() {});
                // });
              },
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 100,
                  width: context.width / 2.1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          TextWidget(
                              text: "10",
                              textSize: 22,
                              fontWeight: FontWeight.bold,
                              color: AppColors.black,
                              maxLine: 1,
                              align: TextAlign.start),
                          Icon(
                            Icons.star,
                            size: 18,
                            color: AppColors.grey,
                          )
                        ],
                      ),
                      const TextWidget(
                          text: "10 ratings and 15 reviews",
                          textSize: 12,
                          fontWeight: FontWeight.bold,
                          color: AppColors.grey,
                          maxLine: 1,
                          align: TextAlign.start),
                    ],
                  ),
                ),
                Container(
                  height: 80,
                  color: AppColors.black,
                  width: 1.5,
                ),
                SizedBox(
                  height: 100,
                  width: context.width / 2.1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ratingBar(
                          barStar: "5",
                          barColor: AppColors.primaryColor,
                          totalStars: totalStartStep,
                          howmanyGets: "5"),
                      ratingBar(
                          barStar: "4",
                          barColor: AppColors.greenColor.withOpacity(0.7),
                          totalStars: totalStartStep,
                          howmanyGets: "4"),
                      ratingBar(
                          barStar: "3",
                          barColor: AppColors.amberColor,
                          totalStars: totalStartStep,
                          howmanyGets: "3"),
                      ratingBar(
                          barStar: "2",
                          barColor: AppColors.yellowColor,
                          totalStars: totalStartStep,
                          howmanyGets: "2"),
                      ratingBar(
                          barColor: AppColors.redColors,
                          barStar: "1",
                          totalStars: totalStartStep,
                          howmanyGets: "1"),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: context.width,
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 4,
                itemBuilder: (ctx, i) {
                  return Card(
                    elevation: 2,
                    child: ListTile(
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          // cardDetailsController
                          //         .reviewModel.value!.data!.items![i].canEdit!
                          //     ?
                          InkWell(
                            onTap: () async {
                              editReviewDialog(context);
                            },
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              color: AppColors.amberColor,
                              child: const Text("Edit"),
                            ),
                          ),
                          // : const SizedBox(),
                          const TextWidget(
                              text: "10/10/2022",
                              textSize: 11,
                              fontWeight: FontWeight.normal,
                              color: AppColors.black,
                              maxLine: 1,
                              align: TextAlign.start),
                        ],
                      ),
                      title: Row(
                        children: [
                          RatingButton.ratingButton('10'),
                          const SizedBox(
                            width: 8,
                          ),
                          const TextWidget(
                              text: "New Product",
                              textSize: 14,
                              fontWeight: FontWeight.normal,
                              color: AppColors.black,
                              maxLine: 1,
                              align: TextAlign.start)
                        ],
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: TextWidget(
                                  text: "10",
                                  textSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: AppColors.grey,
                                  maxLine: 1,
                                  align: TextAlign.start)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                               Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: TextWidget(
                                      text: "Test User",
                                      textSize: 11,
                                      fontWeight: FontWeight.normal,
                                      color: AppColors.black,
                                      maxLine: 1,
                                      align: TextAlign.start)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
    // });
  }
}
