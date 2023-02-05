import 'package:Vatki_Clothing_Store/utils/constant/app_color.dart';
import 'package:flutter/material.dart';

import 'home_card.dart';

class ProductSection extends StatelessWidget {
  final String sectionTitle;
  final bool isBackground;
  final Function() onTapMore;
  final Function() onTapProduct;

  const ProductSection(
      {Key? key,
      required this.sectionTitle,
      required this.isBackground,
      required this.onTapMore,
      required this.onTapProduct})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isBackground ? AppColors.primaryColorLight : AppColors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            visualDensity: const VisualDensity(horizontal: 0, vertical: -2),
            title: Text(
              sectionTitle,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: isBackground ? AppColors.white : AppColors.black,
              ),
            ),
            trailing: SizedBox(
              // width: 80,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: isBackground
                      ? AppColors.white
                      : AppColors.primaryColor, // foreground
                ),
                onPressed: onTapMore,
                child: Text(
                  "More",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: !isBackground ? AppColors.white : AppColors.black,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 247,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (ctx, i) {
                return InkWell(
                  onTap: onTapProduct,
                  child: HomeCard.homeCards(
                      context: context,
                      index: i,
                      img: "assets/jpg/product.jpg",
                      name: 'PName$i',
                      salePrice: '120',
                      price: '130',
                      ratings: '4.5',
                      review: 14,
                      discount: '20 % OFF',
                      isWishList: true,
                      onTap: () {},
                      borderColor: AppColors.transparent),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
