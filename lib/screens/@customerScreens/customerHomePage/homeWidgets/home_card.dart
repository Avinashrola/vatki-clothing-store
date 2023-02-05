import 'package:Vatki_Clothing_Store/widgets/textWidget/text_widget.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constant/app_color.dart';

class HomeCard {
  static Widget homeCards({
    required BuildContext context,
    required int index,
    required String img,
    required String name,
    required String salePrice,
    required String price,
    required String ratings,
    required int review,
    required String discount,
    required bool isWishList,
    required Function() onTap,
    required Color borderColor,
  }) {
    return Container(
      margin: const EdgeInsets.only(left: 7, right: 7, top: 5, bottom: 5),
      width: 150,
      decoration: BoxDecoration(
          color: AppColors.white,
          border:
              borderColor == Colors.transparent || borderColor == Colors.white
                  ? const Border.symmetric()
                  : Border.all(color: borderColor, width: 1),
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 4)]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 140,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10)),
                  child: Image.asset(
                    img,
                    alignment: Alignment.topCenter,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              if (discount != "")
                Positioned(
                  left: 6,
                  top: 8,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                    decoration: BoxDecoration(
                        color: AppColors.orangeColor,
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: const [
                          BoxShadow(
                            color: AppColors.grey,
                            blurRadius: 5.0,
                          ),
                        ]),
                    child: TextWidget(
                        text: discount.toString(),
                        textSize: 10,
                        fontWeight: FontWeight.w500,
                        color: AppColors.white,
                        maxLine: 1,
                        align: TextAlign.left),
                  ),
                ),
              Positioned(
                right: 10,
                top: 8,
                child: InkWell(
                  onTap: onTap,
                  child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      margin: const EdgeInsets.all(0),
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: Icon(Icons.favorite,
                            color: isWishList
                                ? AppColors.redColors
                                : AppColors.grey,
                            size: 20),
                      )),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 6.0, left: 6, right: 6),
            child: TextWidget(
                text: name,
                textSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.black,
                maxLine: 1,
                align: TextAlign.left),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 6, right: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextWidget(
                    text: salePrice,
                    textSize: 13,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primaryColor,
                    maxLine: 1,
                    align: TextAlign.left),
                if (salePrice != price)
                  TextWidget(
                      text: price,
                      textSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.grey,
                      maxLine: 1,
                      align: TextAlign.left),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RatingButton.ratingButton(ratings),
                TextWidget(
                    text: '($review Reviews)',
                    textSize: 11,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black,
                    maxLine: 1,
                    align: TextAlign.left),
              ],
            ),
          ),
          const SizedBox()
        ],
      ),
    );
  }
}

class RatingButton {
  static Widget ratingButton(rate) {
    return Container(
      height: 20,
      width: 50,
      decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(50)),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextWidget(
                text: rate,
                textSize: 11,
                fontWeight: FontWeight.w500,
                color: AppColors.white,
                maxLine: 1,
                align: TextAlign.left),
            const SizedBox(
              width: 4,
            ),
            const Icon(
              Icons.star,
              size: 15,
              color: AppColors.white,
            )
          ],
        ),
      ),
    );
  }
}
