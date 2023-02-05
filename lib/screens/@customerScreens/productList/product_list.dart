import 'package:Vatki_Clothing_Store/widgets/textWidget/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils/constant/app_color.dart';
import '../../../widgets/appBar/appbar.dart';
import '../../../widgets/modelSheet/shorting.dart';
import '../customerHomePage/homeWidgets/home_card.dart';

class ProductList extends StatefulWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: HelperAppBar.appbarHelper(title: 'Products', isCenter: true),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Container(
              height: 30,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      Shorting.short();
                    },
                    child: Row(
                      children: const [
                        Icon(
                          Icons.sort,
                          size: 20,
                          color: AppColors.black,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        TextWidget(
                            text: "Sorting",
                            textSize: 15,
                            fontWeight: FontWeight.w600,
                            color: AppColors.black,
                            maxLine: 1,
                            align: TextAlign.center),
                      ],
                    ),
                  ),
                  const VerticalDivider(),
                  InkWell(
                    onTap: () {
                       Get.toNamed('/filterPage');
                    },
                    child: Row(
                      children: const [
                        Icon(
                          Icons.sort,
                          size: 20,
                          color: AppColors.black,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        TextWidget(
                            text: "Filter",
                            textSize: 15,
                            fontWeight: FontWeight.w600,
                            color: AppColors.black,
                            maxLine: 1,
                            align: TextAlign.center),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 8,),
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.78,
                crossAxisCount: 2,
              ),
              itemCount: 5,
              itemBuilder: (ctx, i) {
                return InkWell(
                  onTap: () {},
                  child: SizedBox(
                    child: HomeCard.homeCards(
                        context: context,
                        index: i,
                        img:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRssfUQ7qaOoKricefFxELQYJ0MEc9eKCRlRg&usqp=CAU',
                        name: 'PName$i',
                        salePrice: '120',
                        price: '130',
                        ratings: '4.5',
                        review: 14,
                        discount: '20 % OFF',
                        isWishList: true,
                        onTap: () {},
                        borderColor: AppColors.transparent),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
