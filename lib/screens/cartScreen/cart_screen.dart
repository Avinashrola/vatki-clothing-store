import 'package:Vatki_Clothing_Store/utils/constant/app_color.dart';
import 'package:Vatki_Clothing_Store/utils/routes/app_routes.dart';
import 'package:Vatki_Clothing_Store/widgets/appBar/appbar.dart';
import 'package:Vatki_Clothing_Store/widgets/textWidget/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

//getting true for buynow
var passedData;

class _CartScreenState extends State<CartScreen> {
  List<String> chargeType = [
    'Item total (Inc. Taxes) :',
    'CGST',
    'IGST',
    'SGST',
    'Shipping Charges',
    'Discount',
    'Grand Total',
  ];

  @override
  void initState() {
    passedData = Get.arguments;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: Get.height,
        width: Get.width,
        color: AppColors.white,
        child:
            // Obx(
            //   () {
            //  if (cartController.isDataLoading.value) {
            //   return Scaffold(
            //     body: Center(
            //       child: Helper.loader(),
            //     ),
            //   );
            // } else if (cartController.cartList.length == 0) {
            //   return Scaffold(
            //     appBar: HelperAppBar.appbarHelper(title: "Cart", isCenter: false),
            //     body: const EmptyPage(
            //       displaytext: "Your cart is empty!",
            //       isAppbar: false,
            //     ),
            //   );
            // }
            // else {
            // return
            Scaffold(
          appBar: HelperAppBar.appbarHelper(
              title: "Cart", isCenter: true, isBackHelper: passedData ?? false),
          body: Stack(
            children: [
              SafeArea(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          height: 35,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: AppColors.primaryColor.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                  color: AppColors.primaryColor, width: 1)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const TextWidget(
                                text: 'ITEMS (10)',
                                align: TextAlign.center,
                                color: AppColors.black,
                                maxLine: 1,
                                textSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                              Row(
                                children: const [
                                  TextWidget(
                                    text: 'TOTAL AMOUNT',
                                    align: TextAlign.center,
                                    color: AppColors.black,
                                    maxLine: 1,
                                    textSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  TextWidget(
                                    text: '12500',
                                    align: TextAlign.center,
                                    color: AppColors.black,
                                    maxLine: 1,
                                    textSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: context.width,
                          child: ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 2,
                            itemBuilder: (ctx, i) {
                              return Container(
                                margin: const EdgeInsets.symmetric(vertical: 8),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                          boxShadow: const [
                                            BoxShadow(
                                                color: Colors.grey,
                                                blurRadius: 2,
                                                spreadRadius: 1)
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                            "assets/jpg/product.jpg",
                                            alignment: Alignment.topCenter,
                                            fit: BoxFit.cover),
                                      ),
                                    ),
                                    Expanded(
                                      child: ListTile(
                                        horizontalTitleGap: 0,
                                        title: const TextWidget(
                                          text: 'TOTAL AMOUNT',
                                          align: TextAlign.start,
                                          color: AppColors.black,
                                          maxLine: 1,
                                          textSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        trailing:
                                            //  widget.forBuyNow
                                            //     ? const SizedBox()
                                            //     :
                                            Container(
                                                width: 100,
                                                height: 32,
                                                decoration: BoxDecoration(
                                                    color:
                                                        AppColors.primaryColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            7)),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(4.0),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      const SizedBox(
                                                        width: 2,
                                                      ),
                                                      InkWell(
                                                        onTap: () {},
                                                        child: const Icon(
                                                          Icons.remove,
                                                          size: 18,
                                                          color:
                                                              AppColors.white,
                                                        ),
                                                      ),
                                                      Container(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal: 6),
                                                        child: const TextWidget(
                                                          text: '10',
                                                          align:
                                                              TextAlign.center,
                                                          color:
                                                              AppColors.white,
                                                          maxLine: 1,
                                                          textSize: 14,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                      InkWell(
                                                        onTap: () {},
                                                        child: const Icon(
                                                            Icons.add,
                                                            size: 18,
                                                            color: AppColors
                                                                .white),
                                                      ),
                                                      const SizedBox(
                                                        width: 2,
                                                      ),
                                                    ],
                                                  ),
                                                )),
                                        subtitle: Column(
                                          children: [
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: const [
                                                TextWidget(
                                                  text: '199',
                                                  align: TextAlign.center,
                                                  color: AppColors.primaryColor,
                                                  maxLine: 1,
                                                  textSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                TextWidget(
                                                  text: '299',
                                                  align: TextAlign.center,
                                                  color: AppColors.grey,
                                                  maxLine: 1,
                                                  textSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                ),

                                                // Row(
                                                //   children: [
                                                //     const Text(
                                                //       "Qty:",
                                                //       style: TextStyle(
                                                //           color: Colors.black),
                                                //     ),
                                                //     const SizedBox(
                                                //       width: 5,
                                                //     ),
                                                //      ],
                                                // )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      // Obx(
                      //   () =>
                      //  orderController.isCouponApplyFromCart.value ==
                      //         true
                      //     ? Container(
                      //         color: AppColors.dividercolor,
                      //         padding: const EdgeInsets.symmetric(
                      //             horizontal: 8, vertical: 12),
                      //         child: Container(
                      //           padding: const EdgeInsets.symmetric(
                      //               horizontal: 12, vertical: 16),
                      //           decoration: BoxDecoration(
                      //               borderRadius: BorderRadius.circular(8),
                      //               color: AppColors.white),
                      //           child: Row(
                      //             mainAxisAlignment:
                      //                 MainAxisAlignment.spaceBetween,
                      //             crossAxisAlignment:
                      //                 CrossAxisAlignment.start,
                      //             children: [
                      //               Expanded(
                      //                 child: Column(
                      //                   crossAxisAlignment:
                      //                       CrossAxisAlignment.start,
                      //                   children: [
                      //                     Text(
                      //                         "\'${_couponController.couponCode.value}\' applied",
                      //                         maxLines: 1,
                      //                         overflow:
                      //                             TextOverflow.ellipsis,
                      //                         style: AppTextStyle.T15b(
                      //                             AppColors.black
                      //                                 .withOpacity(0.8))),
                      //                     const SizedBox(
                      //                       height: 5,
                      //                     ),
                      //                     Row(
                      //                       mainAxisSize: MainAxisSize.min,
                      //                       children: [
                      //                         Icon(
                      //                           Icons.check,
                      //                           color: AppColors.red,
                      //                         ),
                      //                         Text(
                      //                           ' ${_couponController.discountPrice.value}  ',
                      //                           style: AppTextStyle.T14b(
                      //                             AppColors.red,
                      //                           ),
                      //                         ),
                      //                         Text('coupon saving',
                      //                             style: AppTextStyle.T14(
                      //                                 AppColors.black
                      //                                     .withOpacity(
                      //                                         0.8))),
                      //                       ],
                      //                     ),
                      //                   ],
                      //                 ),
                      //               ),
                      //               const SizedBox(
                      //                 width: 6,
                      //               ),
                      //               InkWell(
                      //                 onTap: () {
                      //                   _couponController.removePromoCode(
                      //                     code: _couponController
                      //                         .couponCode.value,
                      //                     mode: widget.forBuyNow
                      //                         ? "buynow"
                      //                         : "cart",
                      //                     pId: 0,
                      //                     qty: cartController
                      //                         .cartList[0].quantity,
                      //                   );
                      //                   _couponController.couponCode.value =
                      //                       '';
                      //                   _couponController
                      //                       .discountPrice.value = '';
                      //                   orderController
                      //                       .isCouponApplyFromCart
                      //                       .value = false;
                      //                 },
                      //                 child: Text('Remove',
                      //                     style: AppTextStyle.T14b(
                      //                         AppColors.red)),
                      //               )
                      //             ],
                      //           ),
                      //         ),
                      //       )
                      //     :
                      Container(
                        color: AppColors.dividercolor,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 6, vertical: 8),
                        child: GestureDetector(
                          onTap: () {
                            Get.toNamed(AppRoutes.discount);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 16),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: AppColors.white),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextWidget(
                                  text: 'Apply Coupon',
                                  align: TextAlign.center,
                                  color: AppColors.black.withOpacity(0.8),
                                  maxLine: 1,
                                  textSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: AppColors.black.withOpacity(0.6),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: List.generate(
                          chargeType.length,
                          (index) => ListTile(
                            title: TextWidget(
                              text: chargeType[index],
                              align: TextAlign.start,
                              color: AppColors.black,
                              maxLine: 1,
                              textSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                            dense: true,
                            visualDensity: const VisualDensity(vertical: -4),
                            trailing: const TextWidget(
                              text: '12',
                              align: TextAlign.center,
                              color: AppColors.black,
                              maxLine: 1,
                              textSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 140,
                      )
                    ],
                  ),
                ),
              ),
              // Align(
              //   alignment: Alignment.topCenter,
              //   child: ConfettiWidget(
              //     confettiController: _controllerCenter,
              //     blastDirectionality: BlastDirectionality
              //         .explosive, // don't specify a direction, blast randomly
              //     shouldLoop:
              //         true, // start again as soon as the animation is finished
              //     colors: const [
              //       Colors.green,
              //       Colors.blue,
              //       Colors.pink,
              //       Colors.orange,
              //       Colors.purple
              //     ], // manually specify the colors to be used
              //     createParticlePath:
              //         drawStar, // define a custom shape/path.
              //   ),
              // )
            ],
          ),
          bottomSheet: Container(
            height: 130,
            decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 6)],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                              // addressController.selectedaddressData.isEmpty
                              //     ? "assets/png/location-pin.png"
                              //     : addressController.selectedaddressData[0]
                              //                 .addressType
                              //                 .toUpperCase() ==
                              //             "HOME"
                              //         ? "assets/png/location-pin.png"
                              //         :
                              "assets/png/building.png",
                              fit: BoxFit.cover),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: const [
                            TextWidget(
                              text: 'Deliver To ',
                              align: TextAlign.center,
                              color: AppColors.black,
                              maxLine: 1,
                              textSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                            // Text(
                            //   "Deliver To ",
                            //   style: AppTextStyle.T12(AppColors.black),
                            // ),
                            TextWidget(
                              text: 'A - 100 , howra railway, kolkata',
                              align: TextAlign.center,
                              color: AppColors.black,
                              maxLine: 1,
                              textSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ]),

                          //  addressController.selectedaddressData.isEmpty
                          //  TextWidget(
                          //         text: 'Please select Address',
                          //         align: TextAlign.center,
                          //         color: AppColors.grey,
                          //         maxLine: 1,
                          //         textSize: 12,
                          //         fontWeight: FontWeight.normal,
                          //       ),
                          // Text(
                          //   addressController.selectedaddressData.isEmpty
                          //       ? 'Please select Address'
                          //       : "${addressController.selectedaddressData[0].street}, ${addressController.selectedaddressData[0].city} - ${addressController.selectedaddressData[0].zip}",
                          //   style: AppTextStyle.T12(AppColors.grey),
                          // ),
                        ],
                      ),
                      const Expanded(child: SizedBox()),
                      InkWell(
                        onTap: () {
                          // Get.to(
                          //   () => AddressSelection(),
                          //   transition: Transition.cupertino,
                          // );
                        },
                        child: const TextWidget(
                          text:
                              //     addressController.selectedaddressData.isEmpty
                              // ? "Add"
                              // :
                              "Change",
                          align: TextAlign.center,
                          color: AppColors.primaryColor,
                          maxLine: 1,
                          textSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2.5, bottom: 2.5),
                  child: Container(
                    height: 1,
                    color: AppColors.dividercolor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.toNamed(AppRoutes.proceedToPayment);
                        },
                        child: Container(
                          height: 55,
                          width: Get.width * 0.95,
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 8,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  TextWidget(
                                    text: '1199',
                                    align: TextAlign.center,
                                    color: AppColors.white,
                                    maxLine: 1,
                                    textSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  TextWidget(
                                    text: 'TOTAL ',
                                    align: TextAlign.center,
                                    color: AppColors.white,
                                    maxLine: 1,
                                    textSize: 11,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ],
                              ),
                              const Expanded(child: SizedBox()),
                              Row(
                                children: const [
                                  TextWidget(
                                    text: 'Proceed to Payment',
                                    align: TextAlign.center,
                                    color: AppColors.white,
                                    maxLine: 1,
                                    textSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                  Icon(
                                    Icons.arrow_right,
                                    color: AppColors.white,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )

        // }
        //   },
        // ),
        );
  }
}
