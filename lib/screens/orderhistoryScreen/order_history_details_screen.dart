// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'package:Vatki_Clothing_Store/utils/constant/app_color.dart';
import 'package:Vatki_Clothing_Store/utils/routes/app_routes.dart';
import 'package:Vatki_Clothing_Store/widgets/appBar/appbar.dart';
import 'package:Vatki_Clothing_Store/widgets/textWidget/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderHistoryDetails extends StatefulWidget {
  const OrderHistoryDetails({
    Key? key,
  }) : super(key: key);

  @override
  State<OrderHistoryDetails> createState() => _OrderHistoryDetailsState();
}

class _OrderHistoryDetailsState extends State<OrderHistoryDetails> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HelperAppBar.appbarHelper(
          title: "Order History Details", isCenter: true, isBackHelper: true),
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: SizedBox(
          height: Get.height,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Obx(
                //   () {
                //     if (orderController.isDataLoading.value) {
                //       return Center(child: Helper.loader(context));
                //     } else {
                //       return
                InkWell(
                  onTap: () {
                    Get.toNamed(AppRoutes.orderHistoryDetails);
                  },
                  child: Card(
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
                        ],
                      ),
                      subtitle: Column(
                        children: [
                          const SizedBox(
                            height: 10,
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
                                width: 10,
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
                            height: 10,
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
                ),
                //     }
                //   },
                // ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: InkWell(
                          onTap: () {
                            Get.toNamed(AppRoutes.productDetails);
                          },
                          child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.grey, width: 1),
                                borderRadius: BorderRadius.circular(5)),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.network(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRssfUQ7qaOoKricefFxELQYJ0MEc9eKCRlRg&usqp=CAU",
                                      height: 80,
                                      width: 80,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const TextWidget(
                                        text: "Test Item",
                                        textSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.black,
                                        maxLine: 1,
                                        align: TextAlign.start),
                                    const TextWidget(
                                        text:
                                            "this is test product description",
                                        textSize: 12,
                                        fontWeight: FontWeight.normal,
                                        color: AppColors.grey,
                                        maxLine: 1,
                                        align: TextAlign.start),
                                    Container(
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                        boxShadow: const [
                                          BoxShadow(
                                              color: Colors.grey, blurRadius: 3)
                                        ],
                                        borderRadius: BorderRadius.circular(15),
                                        color: AppColors.primaryColor,
                                      ),
                                      child: const Center(
                                        child: TextWidget(
                                            text: "5",
                                            textSize: 12,
                                            fontWeight: FontWeight.normal,
                                            color: AppColors.white,
                                            maxLine: 1,
                                            align: TextAlign.start),
                                      ),
                                    )
                                  ],
                                ),
                                const Expanded(child: SizedBox()),
                                const TextWidget(
                                    text: "₹ 199",
                                    textSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.primaryColor,
                                    maxLine: 1,
                                    align: TextAlign.start),
                                const SizedBox(
                                  width: 8,
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Divider(
                    height: 4,
                    thickness: 1,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: Get.width * 0.4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            TextWidget(
                                text: "Payment Mode",
                                textSize: 16,
                                fontWeight: FontWeight.bold,
                                color: AppColors.black,
                                maxLine: 1,
                                align: TextAlign.start),
                            TextWidget(
                                text: ":",
                                textSize: 16,
                                fontWeight: FontWeight.bold,
                                color: AppColors.black,
                                maxLine: 1,
                                align: TextAlign.start),
                          ],
                        ),
                      ),
                      const TextWidget(
                          text: "Cash",
                          textSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColors.black,
                          maxLine: 1,
                          align: TextAlign.start),
                    ],
                  ),
                ),
                taxinfiWidget(title: "Total", amount: "₹ 199"),
                taxinfiWidget(title: "Wallet", amount: "₹ 199"),
                taxinfiWidget(title: "Shipping Charge", amount: "₹ 199"),
                taxinfiWidget(title: "CGST", amount: "₹ 199"),
                taxinfiWidget(title: "IGST", amount: "₹ 199"),
                taxinfiWidget(title: "SGST", amount: "₹ 199"),

                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Divider(
                    height: 4,
                    thickness: 1,
                    color: Colors.grey,
                  ),
                ),
                const TextWidget(
                    text: "Test User",
                    textSize: 12,
                    fontWeight: FontWeight.normal,
                    color: AppColors.black,
                    maxLine: 1,
                    align: TextAlign.start),
                const SizedBox(
                  height: 8,
                ),
                const TextWidget(
                    text: "A - 100 , Howra railwaystation , kolkata",
                    textSize: 12,
                    fontWeight: FontWeight.normal,
                    color: AppColors.grey,
                    maxLine: 1,
                    align: TextAlign.start),
                const SizedBox(
                  height: 8,
                ),
                const TextWidget(
                    text: "+91 12345 67890",
                    textSize: 12,
                    fontWeight: FontWeight.normal,
                    color: AppColors.black,
                    maxLine: 1,
                    align: TextAlign.start),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Divider(
                    height: 4,
                    thickness: 1,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 50,
        child: Container(
          color: Colors.grey.withOpacity(0.3),
          padding: const EdgeInsets.all(3),
          child: Row(
            children: [
              Expanded(
                  child: InkWell(
                onTap: () {},
                child: Container(
                  height: 50,
                  color: AppColors.amberColor,
                  child: const Center(
                    child: TextWidget(
                        text: "HELP",
                        textSize: 12,
                        fontWeight: FontWeight.bold,
                        color: AppColors.black,
                        maxLine: 1,
                        align: TextAlign.start),
                  ),
                ),
              )),
              Expanded(
                  child: InkWell(
                onTap: () {
                  sentEmaildialog(context);
                },
                child: Container(
                  height: 50,
                  color: AppColors.primaryColor,
                  child: const Center(
                    child: TextWidget(
                        text: "GENERATE INVOICE",
                        textSize: 12,
                        fontWeight: FontWeight.bold,
                        color: AppColors.white,
                        maxLine: 1,
                        align: TextAlign.start),
                  ),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }

  Widget taxinfiWidget({
    required String title,
    required String amount,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: Get.width * 0.4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(
                    text: title,
                    textSize: 12,
                    fontWeight: FontWeight.bold,
                    color: AppColors.black,
                    maxLine: 1,
                    align: TextAlign.start),
                const TextWidget(
                    text: ":",
                    textSize: 12,
                    fontWeight: FontWeight.bold,
                    color: AppColors.black,
                    maxLine: 1,
                    align: TextAlign.start),
              ],
            ),
          ),
          TextWidget(
              text: amount,
              textSize: 12,
              fontWeight: FontWeight.bold,
              color: AppColors.black,
              maxLine: 1,
              align: TextAlign.start),
        ],
      ),
    );
  }

  Future sentEmaildialog(context) {
    return showDialog<void>(
      context: context,
      builder: (context) {
        return StatefulBuilder(builder: (context, setState) {
          var size = MediaQuery.of(context).size;
          var width = size.width;
          TextEditingController emailcontroller =
              // TextEditingController(text: profileController.email.toString());
              TextEditingController();
          return AlertDialog(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              contentPadding: const EdgeInsets.only(top: 0.0),
              content: SizedBox(
                height: 320,
                child: Form(
                  // key: OrderController.FormKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            child: const Padding(
                              padding: EdgeInsets.only(right: 5, top: 2),
                              child: Icon(
                                Icons.close_rounded,
                                color: AppColors.redColors,
                              ),
                            ),
                            onTap: () => Navigator.pop(context),
                          ),
                        ],
                      ),
                      const Icon(Icons.mail_outline,
                          size: 70, color: AppColors.primaryColor),
                      const Padding(
                        padding: EdgeInsets.all(8),
                        child: TextWidget(
                            text: "Send Order Invoice",
                            textSize: 14,
                            fontWeight: FontWeight.bold,
                            color: AppColors.black,
                            maxLine: 1,
                            align: TextAlign.start),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: TextWidget(
                            text:
                                "We will send your order details in given email address",
                            textSize: 12,
                            fontWeight: FontWeight.bold,
                            color: AppColors.grey,
                            maxLine: 2,
                            align: TextAlign.center),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextFormField(
                          controller: emailcontroller,
                          decoration: const InputDecoration(
                            contentPadding:
                                EdgeInsets.only(left: 10, top: 16, bottom: 16),
                            border: OutlineInputBorder(),
                            labelText: 'Email',
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: MaterialButton(
                                // color: AppColors.green,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(3.0),
                                  side: const BorderSide(
                                      color: AppColors.redColors),
                                ),
                                height: 40,
                                textColor: AppColors.redColors,
                                child: const Text(
                                  "CANCEL",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                onPressed: () => {Navigator.pop(context)},
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: MaterialButton(
                                color: AppColors.primaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(3.0),
                                  side: const BorderSide(
                                      color: AppColors.primaryColor),
                                ),
                                height: 40,
                                minWidth: width / 2,
                                textColor: Colors.white,
                                child: const Text(
                                  "SUBMIT",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                onPressed: () {},
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ));
        });
      },
    );
  }
}
