import 'package:Vatki_Clothing_Store/widgets/appBar/appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils/constant/app_color.dart';
import '../../../widgets/textWidget/text_widget.dart';
import 'date_range_dialog.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}


class _WalletScreenState extends State<WalletScreen> {
  TextEditingController searchController = TextEditingController();

  String tabVal = "last_five";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: HelperAppBar.appbarHelper(title: 'Wallet', isCenter: false,isBackHelper: true),
        body:  Column(
              children: [
                Container(
                  width: context.width,
                  height: 100,
                  color: AppColors.primaryColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:const [
                            Icon(
                            Icons.account_balance_wallet_rounded,
                            color: AppColors.white,
                            size: 50,
                          ),
                           TextWidget(
                            text: 'Wallet \nBalance',
                            align: TextAlign.center,
                            color: AppColors.white,
                            maxLine: 1,
                            textSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ],
                      ),
                    const  TextWidget(
                        text: '0.0',
                        align: TextAlign.center,
                        color: AppColors.white,
                        maxLine: 1,
                        textSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: Get.width,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.primaryColor),
                  ),
                  child: TabBar(
                    labelColor: AppColors.white,
                    unselectedLabelColor: AppColors.primaryColor,
                    isScrollable: false,
                    indicator: const BoxDecoration(color: AppColors.primaryColor),
                    onTap: (value) {
                      if (value == 0) {
                        tabVal = "last_five";
                      } else {
                        tabVal = "passbook";
                      }
                    },
                    tabs: const [
                      Tab(
                        text: 'Last 5 Transactions',
                      ),
                      Tab(
                        text: 'Passbook',
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: TabBarView(children: [
                      ListView.builder(
                        padding: const EdgeInsets.only(top: 4.0),
                        itemCount: 3,
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                            elevation: 4,
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 4),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      height: 70,
                                      padding: const EdgeInsets.all(5),
                                      width: 70,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      child: Image.asset(
                                          "assets/icons/logo/logo.png")),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const[
                                        TextWidget(
                                        text: 'description',
                                        align: TextAlign.center,
                                        color: AppColors.black,
                                        maxLine: 1,
                                        textSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                       SizedBox(
                                        height: 5,
                                      ),
                                        TextWidget(
                                        text: 'createdAt time',
                                        align: TextAlign.center,
                                        color: AppColors.black,
                                        maxLine: 1,
                                        textSize: 13,
                                        fontWeight: FontWeight.w500,
                                      ),

                                    ],
                                  ),
                                  const Expanded(child: SizedBox()),
                                const  TextWidget(
                                    text: 'amount',
                                    align: TextAlign.center,
                                    color: AppColors.black,
                                    maxLine: 1,
                                    textSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          TextFieldClear(
                            showStartDate: "showStartDate",
                            showEndDate: "showEndDate",
                            controller: searchController,
                            onchanged: (val) {},
                            onTap1: () {
                              DateRangeDialog.dateRangeDialog(context);
                            },
                            onTap2: () {},
                            suffixIcon: Icons.close, hintText: '',
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Expanded(
                            child: ListView.builder(
                              itemCount: 2,
                              shrinkWrap: true,
                              physics: const BouncingScrollPhysics(),
                              itemBuilder: (BuildContext context, int index) {
                                return Card(
                                  elevation: 4,
                                  child: Container(
                                    padding:
                                       const EdgeInsets.symmetric(horizontal: 4),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                            height: 70,
                                            padding: const EdgeInsets.all(5),
                                            width: 70,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50)),
                                            child: Image.asset(
                                                "assets/icons/logo/logo.png")),
                                       const SizedBox(
                                          width: 5,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: const[
                                              TextWidget(
                                              text: 'description',
                                              align: TextAlign.center,
                                              color: AppColors.black,
                                              maxLine: 1,
                                              textSize: 15,
                                              fontWeight: FontWeight.w600,
                                            ),
                                             SizedBox(
                                              height: 5,
                                            ),
                                              TextWidget(
                                              text: 'Created date time',
                                              align: TextAlign.center,
                                              color: AppColors.black,
                                              maxLine: 1,
                                              textSize: 12,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ],
                                        ),
                                        // ignore: prefer_const_constructors
                                        Expanded(child: SizedBox()),
                                      const   TextWidget(
                                          text: 'amount',
                                          align: TextAlign.center,
                                          color: AppColors.black,
                                          maxLine: 1,
                                          textSize: 15,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ]),
                  ),
                ),
              ],
            ),
      ),
    );
  }

}


