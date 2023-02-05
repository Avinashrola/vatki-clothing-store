import 'package:Vatki_Clothing_Store/utils/constant/app_color.dart';
import 'package:Vatki_Clothing_Store/utils/routes/app_routes.dart';
import 'package:Vatki_Clothing_Store/widgets/appBar/appbar.dart';
import 'package:Vatki_Clothing_Store/widgets/textWidget/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: HelperAppBar.appbarHelper(
            title: "Orders History", isCenter: true,),
        body: Padding(
            padding: const EdgeInsets.all(4.0),
            child:
                // Obx(() {
                //   if (orderController.isDataLoading.value) {
                //     return Center(child: Helper.loader());
                //   } else if (orderController.orderHistoryList.isEmpty) {
                //     return const Scaffold(
                //       body: EmptyPage(
                //         displaytext: "No orders found!",
                //         isAppbar: false,
                //       ),
                //     );
                //   } else {
                //     return
                ListView.builder(
              itemCount: 9,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (ctx, i) {
                return InkWell(
                  onTap: () {
                    Get.toNamed(AppRoutes.orderHistoryDetails);
                  },
                  child: Card(
                    elevation: 4,
                    child: ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          TextWidget(
                              text: "10/10/2022 10:10 PM",
                              textSize: 12,
                              fontWeight: FontWeight.bold,
                              color: AppColors.grey,
                              maxLine: 1,
                              align: TextAlign.start),
                          Icon(
                            Icons.info,
                            color: AppColors.primaryColor,
                          ),
                        ],
                      ),
                      subtitle: Column(
                        children: [
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  TextWidget(
                                      text: "Order #:",
                                      textSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.grey,
                                      maxLine: 1,
                                      align: TextAlign.start),
                                  TextWidget(
                                      text: "ABCD-1234",
                                      textSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.black,
                                      maxLine: 1,
                                      align: TextAlign.start),
                                ],
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: const [
                                   TextWidget(
                                      text: "Invoice #:",
                                      textSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.grey,
                                      maxLine: 1,
                                      align: TextAlign.start),
                                   TextWidget(
                                      text: "ABCD-1234",
                                      textSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.black,
                                      maxLine: 1,
                                      align: TextAlign.start),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const TextWidget(
                                  text: "₹ 101",
                                  textSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.black,
                                  maxLine: 1,
                                  align: TextAlign.start),
                              ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        // orderController
                                        //             .orderHistoryList[i].status ==
                                        //         'failed'
                                        //     ? AppColors.red
                                        //     :
                                        Colors.amber, // background
                                  ),
                                  child: const TextWidget(
                                      text: "Complated",
                                      textSize: 12,
                                      fontWeight: FontWeight.normal,
                                      color: AppColors.black,
                                      maxLine: 1,
                                      align: TextAlign.start))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            )));
  }
  // })),
  // );
  // }
}
