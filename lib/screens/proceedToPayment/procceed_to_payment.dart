// ignore_for_file: unrelated_type_equality_checks

import 'package:Vatki_Clothing_Store/utils/constant/app_color.dart';
import 'package:Vatki_Clothing_Store/utils/routes/app_routes.dart';
import 'package:Vatki_Clothing_Store/widgets/appBar/appbar.dart';
import 'package:Vatki_Clothing_Store/widgets/buttons/button.dart';
import 'package:Vatki_Clothing_Store/widgets/textWidget/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProcceedToPaymentScreen extends StatefulWidget {
  const ProcceedToPaymentScreen({Key? key}) : super(key: key);

  @override
  State<ProcceedToPaymentScreen> createState() =>
      _ProcceedToPaymentScreenState();
}

// var _razorpay = Razorpay();

class _ProcceedToPaymentScreenState extends State<ProcceedToPaymentScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    // _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    // _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
    // walletController.getWallet(
    //     fromDate: "", page: 1, tab: "last_five", toDate: "");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    // _razorpay.clear();
  }

  int payFromWallet = 0;
  bool isWallet = false;

  // void paynow() {
  //   var options = {
  //     'key': "rzp_test_g6JdviMPoMCPwv",
  //     'amount': (double.parse(dat2a[0]) * 100)
  //         .toString(), //in the smallest currency sub-unit.
  //     'name': dat2a[3],
  //     // 'order_id': 'order_EMBFqjDHEEn80l', // Generate order_id using Orders API
  //     // 'description': 'Fine T-Shirt',
  //     'timeout': 300, // in seconds
  //     'prefill': {
  //       'contact': '${storage.read('userMobile')}',
  //       'email': '${storage.read('userEmail')}'
  //     }
  //   };

  // try {
  //   _razorpay.open(options);
  // } catch (e) {
  //   log("paynow $e");
  // }
  // }

  // void _handlePaymentSuccess(PaymentSuccessResponse response) {
  //   // Do something when payment succeeds
  //   orderController
  //       .postOrder(
  //           '${addressController.selectedaddressData[0].id}',
  //           widget.fromCart ? 'cart' : "buynow",
  //           widget.fromCart
  //               ? '${orderController.buyNowModel.value?.data.id}'
  //               : widget.productId.toString(),
  //           '${orderController.buyNowModel.value?.data.orderTransactions[0].quantity}',
  //           payFromWallet)
  //       .then((value) {
  //     Get.offAll(OrderSuccess(
  //         orderId: BuyNowModel.fromJson(jsonDecode(value.body)).data.orderNo));
  //   });
  //   // HelperSnackBar.snackBar('Success', "Order placed success");
  // }

  // void _handlePaymentError(PaymentFailureResponse response) {
  //   // Do something when payment fails
  //   Fluttertoast.showToast(msg: "Payment Unsuccessfull", timeInSecForIosWeb: 4);
  // }

  // void _handleExternalWallet(ExternalWalletResponse response) {
  //   Fluttertoast.showToast(
  //       msg: "EXTERNAL_WALLET: ${response.walletName!}", timeInSecForIosWeb: 4);
  // }

  @override
  Widget build(BuildContext context) {
    // return Obx(() {

    return Scaffold(
      appBar: HelperAppBar.appbarHelper(
          title: "Payments", isCenter: true, isBackHelper: true),
      bottomNavigationBar: SizedBox(
        // height: 50.h,
        child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: SizedBox(
              height: 45,
              child: AppButton.primaryButton(
                  onButtonPressed: () {
                    Get.toNamed(AppRoutes.orderSuccess);
                  },
                  title: "Place Order & Pay ( 199 )"),
            )),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          Column(
            children: [
              // addressController.selectedaddressData.isNotEmpty
              //     ?
              ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    children: [
                      const TextWidget(
                          text: 'my address',
                          textSize: 12,
                          fontWeight: FontWeight.bold,
                          color: AppColors.black,
                          maxLine: 1,
                          align: TextAlign.start),
                      const SizedBox(
                        width: 8,
                      ),
                      Container(
                        height: 18,
                        width: 40,
                        color: Colors.grey.shade300,
                        child: const Center(
                            child: TextWidget(
                                text: 'HOME',
                                textSize: 12,
                                fontWeight: FontWeight.bold,
                                color: AppColors.black,
                                maxLine: 1,
                                align: TextAlign.start)),
                      ),
                    ],
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                        padding: EdgeInsets.only(top: 8.0, right: 8, bottom: 8),
                        child: TextWidget(
                            text: 'A - 100 , howra bridge , kolkata - 123456',
                            textSize: 12,
                            fontWeight: FontWeight.bold,
                            color: AppColors.grey,
                            maxLine: 1,
                            align: TextAlign.start)),
                    TextWidget(
                        text: '+91 12345 69870',
                        textSize: 12,
                        fontWeight: FontWeight.bold,
                        color: AppColors.black,
                        maxLine: 1,
                        align: TextAlign.start)
                  ],
                ),
              )
              // : const SizedBox(),
              ,
              Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SizedBox(
                    width: Get.width,
                    
                    child: AppButton.primaryButton(
                        onButtonPressed: () {
                          Get.toNamed(AppRoutes.myAddress);
                        },
                        title: "Select Delivery Address"),
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Container(
              height: 7,
              color: AppColors.dividercolor,
            ),
          ),
          // Obx(() => walletController.isDataLoading.value ||
          //         walletController.walletModel.value!.data!.walletBalnce ==
          //             "0.00"
          //     ? SizedBox()
          //     :
          CheckboxListTile(
              value: isWallet,
              checkColor: AppColors.white,
              activeColor: AppColors.primaryColor,
              title: const Text("Use Your Wallet Balance (₹ 500)"),
              onChanged: (val) {
                if (val!) {
                  setState(() {
                    payFromWallet = 1;
                  });
                } else {
                  setState(() {
                    payFromWallet = 0;
                  });
                }
                isWallet = !isWallet;
              }
              // )
              ),
          if (payFromWallet == 0)
            Column(
              children: [
                Row(
                  children: [
                    // Obx(
                    //   () =>
                    Radio(
                      value: 'upi',
                      groupValue: 1,
                      onChanged: (value) {},
                      activeColor: AppColors.primaryColor,
                      fillColor: MaterialStateProperty.all(
                          AppColors.primaryColor),
                    ),
                    // ),
                    const TextWidget(
                        text: 'UPI ( PhonePe / Google Pay / BHIM)',
                        textSize: 12,
                        fontWeight: FontWeight.bold,
                        color: AppColors.black,
                        maxLine: 1,
                        align: TextAlign.start)
                  ],
                ),
                Row(
                  children: [
                    // Obx(
                    //   () =>
                    Radio(
                      value: 'card',
                      groupValue: 1,
                      onChanged: (value) {},
                      activeColor: AppColors.primaryColor,
                      fillColor: MaterialStateProperty.all(
                          AppColors.primaryColor),
                      // ),
                    ),
                    const TextWidget(
                        text: 'Credit / Debit / ATM Card',
                        textSize: 12,
                        fontWeight: FontWeight.bold,
                        color: AppColors.black,
                        maxLine: 1,
                        align: TextAlign.start)
                  ],
                ),
                Row(
                  children: [
                    // Obx(
                    //   () =>
                    Radio(
                      value: 'NB',
                      groupValue: 1,
                      onChanged: (value) {},
                      activeColor: AppColors.primaryColor,
                      fillColor: MaterialStateProperty.all(
                          AppColors.primaryColor),
                    ),
                    // ),
                    const TextWidget(
                        text: 'Net Banking',
                        textSize: 12,
                        fontWeight: FontWeight.bold,
                        color: AppColors.black,
                        maxLine: 1,
                        align: TextAlign.start)
                  ],
                ),
                Row(
                  children: [
                    // Obx(
                    //   () =>
                    Radio(
                      value: 'cod',
                      groupValue: 1,
                      onChanged: (value) {},
                      activeColor: AppColors.primaryColor,
                      fillColor: MaterialStateProperty.all(
                          AppColors.primaryColor),
                      // ),
                    ),
                    const TextWidget(
                        text: "Cash On Delivery",
                        textSize: 12,
                        fontWeight: FontWeight.bold,
                        color: AppColors.black,
                        maxLine: 1,
                        align: TextAlign.start)
                  ],
                ),
              ],
            ),
        ],
      ),
    );
    // });
  }
}
