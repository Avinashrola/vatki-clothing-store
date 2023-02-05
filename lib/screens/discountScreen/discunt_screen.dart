import 'package:Vatki_Clothing_Store/utils/constant/app_color.dart';
import 'package:Vatki_Clothing_Store/widgets/textWidget/text_widget.dart';
import 'package:flutter/material.dart';

class DiscountScreen extends StatefulWidget {
  const DiscountScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<DiscountScreen> createState() => _DiscountScreenState();
}

class _DiscountScreenState extends State<DiscountScreen> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        leading: const BackButton(
          color: AppColors.black,
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const TextWidget(
                text: 'APPLY COUPON',
                textSize: 17,
                fontWeight: FontWeight.w700,
                color: AppColors.black,
                maxLine: 1,
                align: TextAlign.start),
            TextWidget(
                text: 'Your Cart: ₹ 100 ',
                textSize: 15,
                fontWeight: FontWeight.w400,
                color: AppColors.black.withOpacity(0.5),
                maxLine: 1,
                align: TextAlign.start),
          ],
        ),
        elevation: 0,
        backgroundColor: AppColors.white,
      ),
      body:
          // Obx(
          //   () => _couponController.isCouponGet.value
          //       ? const SizedBox()
          //       :
          Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(16, 30, 16, 30),
            decoration: const BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
            ),
            child: TextField(
              cursorColor: Colors.black,
              controller: _textEditingController,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(color: Colors.teal)),
                hintText: 'Enter coupon code',
                hintStyle: const TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(top: 14, right: 16),
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      'APPLY',
                      style: TextStyle(
                          fontSize: 15,
                          color: _textEditingController.text.isEmpty
                              ? AppColors.grey
                              : AppColors.primaryColor,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              onChanged: (val) {
                setState(() {});
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 12, bottom: 16, top: 24),
            child: TextWidget(
                text: 'Coupons',
                textSize: 17,
                fontWeight: FontWeight.w700,
                color: AppColors.black,
                maxLine: 1,
                align: TextAlign.start),
          ),
          Container(
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: TextField(
              cursorColor: Colors.black,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
              decoration: const InputDecoration(
                fillColor: AppColors.white,
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(color: Colors.teal)),
                hintText: 'Search Coupon',
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onChanged: (val) {},
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Expanded(
            child: ListView.separated(
              itemCount: 4,
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              physics: const BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Card(
                    margin: const EdgeInsets.all(0),
                    child: Row(
                      children: [
                        Container(
                          color: const Color(0xFFF57C00),
                          height: 200,
                          width: 60,
                          child: const Center(
                            child: RotatedBox(
                                quarterTurns: 3,
                                child: TextWidget(
                                    text: "100",
                                    textSize: 24,
                                    fontWeight: FontWeight.w800,
                                    color: AppColors.white,
                                    maxLine: 1,
                                    align: TextAlign.start)),
                          ),
                        ),
                        Expanded(
                            child: Container(
                          height: 200,
                          padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  TextWidget(
                                      text: "WEBAPPSSOl",
                                      textSize: 19,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.black.withOpacity(0.7),
                                      maxLine: 1,
                                      align: TextAlign.start),
                                  InkWell(
                                      onTap: () {},
                                      child: const TextWidget(
                                          text: "APPLY",
                                          textSize: 17,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xFFF57C00),
                                          maxLine: 1,
                                          align: TextAlign.start)),
                                ],
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              const TextWidget(
                                  text: "APPLY THIS COUPON",
                                  textSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.primaryColor,
                                  maxLine: 1,
                                  align: TextAlign.start),
                              const Divider(
                                height: 30,
                              ),
                              TextWidget(
                                  text: "apply this and get 100 cashback now !",
                                  textSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.black.withOpacity(0.7),
                                  maxLine: 4,
                                  align: TextAlign.start),
                            ],
                          ),
                        ))
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: 12,
                );
              },
            ),
          )
        ],
      ),
      // ),
    );
  }
}
