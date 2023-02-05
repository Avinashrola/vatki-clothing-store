import 'package:Vatki_Clothing_Store/screens/@customerScreens/customerHomePage/homeWidgets/home_card.dart';
import 'package:Vatki_Clothing_Store/screens/@customerScreens/customerHomePage/homeWidgets/product_section.dart';
import 'package:Vatki_Clothing_Store/screens/productDetailsScreen/product_slider.dart';
import 'package:Vatki_Clothing_Store/utils/constant/app_color.dart';
import 'package:Vatki_Clothing_Store/utils/routes/app_routes.dart';
import 'package:Vatki_Clothing_Store/widgets/appBar/appbar.dart';
import 'package:Vatki_Clothing_Store/widgets/buttons/button.dart';
import 'package:Vatki_Clothing_Store/widgets/dailog/add_review_dialog.dart';
import 'package:Vatki_Clothing_Store/widgets/rating/rating.dart';
import 'package:Vatki_Clothing_Store/widgets/textWidget/text_widget.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  bool isProductInStock = false;
  int totalStartStep = 5;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: SizedBox(
          height: 50,
          child: Container(
            color: Colors.grey.withOpacity(0.3),
            padding: const EdgeInsets.all(3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      color: AppColors.grey.withOpacity(0.8),
                      child: const Center(
                        child: TextWidget(
                            text: "ADD TO CART",
                            textSize: 12,
                            fontWeight: FontWeight.normal,
                            color: AppColors.black,
                            maxLine: 1,
                            align: TextAlign.start),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                      onTap: () {
                        Get.toNamed(AppRoutes.cartScreen, arguments: true);
                      },
                      child: Container(
                        color: AppColors.primaryColor,
                        child: const Center(
                          child: TextWidget(
                              text: "BUY NOW",
                              textSize: 12,
                              fontWeight: FontWeight.normal,
                              color: AppColors.black,
                              maxLine: 1,
                              align: TextAlign.start),
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
        appBar: HelperAppBar.appbarHelper(
            title: "Product Details", isCenter: true, isBackHelper: true),
        body:
            //  Obx(() {
            //   if (cardDetailsController.isDataLoading.value ||
            //       cardDetailsController.isReviewLoading.value) {
            //     return Center(
            //       child: Helper.loader(),
            //     );
            //   } else {
            //     return
            ListView(children: [
          const SizedBox(height: 5),
          Container(
              height: Get.height * 0.30,
              width: Get.width,
              child: ProductSlider(banners: [
                "assets/jpg/banner2.jpg",
                "assets/jpg/banner1.jpg"
              ])),
          // Container(
          //   height: 200,
          //   width: context.width,
          //   decoration: const BoxDecoration(
          //       image: DecorationImage(
          //     image: AssetImage("assets/jpg/banner2.jpg"),
          //     fit: BoxFit.fitHeight,
          //   )),
          // ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const TextWidget(
                    text: "Item Name ",
                    textSize: 14,
                    fontWeight: FontWeight.normal,
                    color: AppColors.black,
                    maxLine: 1,
                    align: TextAlign.start),
                Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: IconButton(
                      onPressed: () {},
                      icon:
                          // cardDetailsController.isWhishlist.value
                          //     ?
                          const Icon(Icons.favorite,
                              color: AppColors.redColors, size: 30),
                    )
                    // : Icon(Icons.favorite,
                    //     color: AppColors.grey, size: 30)),
                    ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                const TextWidget(
                    text: '₹ 199',
                    textSize: 14,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor,
                    maxLine: 1,
                    align: TextAlign.start),

                const SizedBox(width: 10),
                // cardDetailsController.cardDetailsModel?.data.salePrice ==
                //         cardDetailsController.cardDetailsModel?.data.price
                //     ? const SizedBox()
                //     :
                const TextWidget(
                    text: '₹ 299',
                    textSize: 11,
                    fontWeight: FontWeight.bold,
                    color: AppColors.grey,
                    maxLine: 1,
                    align: TextAlign.start),
                // if (cardDetailsController
                //             .cardDetailsModel?.data.discountDisplay !=
                //         "" &&
                //     cardDetailsController
                //             .cardDetailsModel?.data.discountDisplay !=
                //         null)
                const SizedBox(width: 10),
                // if (cardDetailsController
                //             .cardDetailsModel?.data.discountDisplay !=
                //         "" &&
                //     cardDetailsController
                //             .cardDetailsModel?.data.discountDisplay !=
                //         null)

                Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
                    decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(1),
                        boxShadow: const [
                          BoxShadow(
                            color: AppColors.grey,
                            blurRadius: 5.0,
                          ),
                        ]),
                    child: const TextWidget(
                        text: '₹ 10',
                        textSize: 10,
                        fontWeight: FontWeight.normal,
                        color: AppColors.white,
                        maxLine: 1,
                        align: TextAlign.start)),
                const Expanded(child: SizedBox()),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Container(
                    // width: 75,
                    height: 32,
                    decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(7)),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const SizedBox(
                            width: 2,
                          ),
                          InkWell(
                            onTap: () {},
                            child: const Icon(
                              Icons.remove,
                              color: AppColors.white,
                              size: 18,
                            ),
                          ),
                          Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 6),
                              child: const TextWidget(
                                  text: '1',
                                  textSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: AppColors.white,
                                  maxLine: 1,
                                  align: TextAlign.start)),
                          InkWell(
                              onTap: (() {}),
                              child: const Icon(Icons.add,
                                  size: 18, color: AppColors.white)),
                          const SizedBox(
                            width: 2,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          // ListTile(
          //   subtitle: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       const SizedBox(
          //         height: 2,
          //       ),
          //       Padding(
          //         padding: const EdgeInsets.symmetric(vertical: 8),
          //         child:
          //       ),
          //       const SizedBox(
          //         height: 2,
          //       ),
          //        ],
          //   ),
          // ),
          //------------------- for pakages
          // ListView.builder(
          //     shrinkWrap: true,
          //     scrollDirection: Axis.vertical,
          //     physics: const NeverScrollableScrollPhysics(),
          //     itemCount: dashController.packagesModel.value!.data
          //         .items[data[2]].products!.length,
          //     itemBuilder: (BuildContext context, int index) {
          //       return SizedBox(
          //         width: Get.width,
          //         height: 100,
          //         child: Row(
          //           children: [
          //             const SizedBox(
          //               width: 10,
          //             ),
          //             Image.network(
          //               dashController.packagesModel.value!.data
          //                   .items[data[2]].products![index].media!,
          //               height: 80,
          //               width: 80,
          //               alignment: Alignment.center,
          //             ),
          //             const SizedBox(
          //               width: 10,
          //             ),
          //             Column(
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               mainAxisAlignment:
          //                   MainAxisAlignment.spaceEvenly,
          //               children: [
          //                 Text(
          //                   '${dashController.packagesModel.value!.data.items[data[2]].products![index].name}',
          //                   style: AppTextStyle.T12b(AppColors.black),
          //                 ),
          //                 Text(
          //                   '₹ ${dashController.packagesModel.value!.data.items[data[2]].products![index].salePrice}',
          //                   style: GoogleFonts.roboto(
          //                       fontSize: 12.sp,
          //                       color: AppColors.green,
          //                       wordSpacing: 0,
          //                       fontWeight: FontWeight.bold,
          //                       letterSpacing: 0),
          //                 ),
          //                 Row(
          //                   children: [
          //                     RatingButton.ratingButton(
          //                         '${dashController.packagesModel.value!.data.items[data[2]].products![index].ratings}'),
          //                     const SizedBox(
          //                       width: 10,
          //                     ),
          //                     SizedBox(
          //                       height: 20.h,
          //                       child: RatingBarIndicator(
          //                         itemPadding: EdgeInsets.zero,
          //                         unratedColor: AppColors.grey,
          //                         rating: dashController
          //                             .packagesModel
          //                             .value!
          //                             .data
          //                             .items[data[2]]
          //                             .products![index]
          //                             .ratings!
          //                             .toDouble(),
          //                         itemBuilder: (context, index) =>
          //                             Icon(
          //                           Icons.star,
          //                           color: AppColors.amber,
          //                         ),
          //                         itemCount: 5,
          //                         itemSize: 14.r,
          //                         direction: Axis.horizontal,
          //                       ),
          //                     ),
          //                   ],
          //                 ),
          //               ],
          //             ),
          //           ],
          //         ),
          //       );
          //     },
          //   )
          // : const SizedBox(),
          // const SizedBox(
          //   height: 8,
          // ),
          Divider(
            height: 8,
            thickness: 2,
            indent: 5,
            endIndent: 5,
            color: AppColors.dividercolor,
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
            Padding(
                padding: EdgeInsets.all(8.0),
                child: TextWidget(
                    text: 'Product Details',
                    textSize: 14,
                    fontWeight: FontWeight.bold,
                    color: AppColors.black,
                    maxLine: 1,
                    align: TextAlign.start)),
          ]),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: ExpandableText(
              "A seed is an embryonic plant enclosed in a protective outer covering, along with a food reserve. The formation of the seed is a part of the process of reproduction in seed plants, the spermatophytes, including the gymnosperm and angiosperm plants.",
              style: TextStyle(color: AppColors.grey, fontSize: 14),
              expandText: 'show more',
              collapseText: 'show less',
              maxLines: 3,
              linkColor: AppColors.primaryColor,
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 10),
            child: Container(
              height: 7,
              color: AppColors.dividercolor,
            ),
          ),
          ListTile(
              title: const TextWidget(
                  text: 'Ratings & Reviews',
                  textSize: 12,
                  fontWeight: FontWeight.bold,
                  color: AppColors.black,
                  maxLine: 1,
                  align: TextAlign.start),
              trailing: AppButton.nButton(
                title: 'Rate Product',
                onTap: () async {
                  // storage.read('isLogged')
                  showRatingDialog(context);
                },
                //     ?
                // : () {
                //     LogMydialog.dialog(context);
                //   },
              )),

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
                return Column(
                  children: [
                    ListTile(
                      title: Row(
                        children: [
                          RatingButton.ratingButton('5'),
                          const SizedBox(
                            width: 8,
                          ),
                          const TextWidget(
                              text: "very good",
                              textSize: 14,
                              fontWeight: FontWeight.bold,
                              color: AppColors.black,
                              maxLine: 1,
                              align: TextAlign.start),
                        ],
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextWidget(
                                text: "very good product , very nice",
                                textSize: 14,
                                fontWeight: FontWeight.normal,
                                color: AppColors.grey,
                                maxLine: 1,
                                align: TextAlign.start),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: TextWidget(
                                    text: "Test user",
                                    textSize: 11,
                                    fontWeight: FontWeight.normal,
                                    color: AppColors.black,
                                    maxLine: 1,
                                    align: TextAlign.start),
                              ),
                              TextWidget(
                                  text: "10/10/2022",
                                  textSize: 11,
                                  fontWeight: FontWeight.normal,
                                  color: AppColors.black,
                                  maxLine: 1,
                                  align: TextAlign.start),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 8,
                      thickness: 1,
                      indent: 5,
                      endIndent: 5,
                      color: AppColors.grey.withOpacity(0.6),
                    ),
                  ],
                );
              },
            ),
          ),
          InkWell(
            onTap: () {
              Get.toNamed(AppRoutes.allReviewScreen);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 35,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border:
                        Border.all(color: AppColors.dividercolor, width: 1)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    TextWidget(
                        text: "All Reviews",
                        textSize: 11,
                        fontWeight: FontWeight.normal,
                        color: AppColors.black,
                        maxLine: 1,
                        align: TextAlign.start),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: AppColors.black,
                      size: 15,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 10),
            child: Container(
              height: 7,
              color: AppColors.dividercolor,
            ),
          ),
          ProductSection(
            sectionTitle: 'Related Products',
            isBackground: false,
            onTapMore: () {},
            onTapProduct: () {
              Get.toNamed(
                AppRoutes.productDetails,
                preventDuplicates: false,
              );
            },
          ),
        ]));

    // }
    // },),
  }
}
