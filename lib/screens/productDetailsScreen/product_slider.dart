import 'package:Vatki_Clothing_Store/utils/constant/app_color.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductSlider extends StatefulWidget {
  final List<String> banners;
  const ProductSlider({Key? key, required this.banners}) : super(key: key);

  @override
  State<ProductSlider> createState() => _ProductSliderState();
}

class _ProductSliderState extends State<ProductSlider> {
  RxInt sliderIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CarouselSlider.builder(
          itemCount: widget.banners.length,
          options: CarouselOptions(
            viewportFraction: 1.0,
            enlargeCenterPage: true,
            enableInfiniteScroll: true,
            reverse: false,
            // autoPlay: true,
            onPageChanged: (index, reason) {
              sliderIndex.value = index;
            },
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            scrollDirection: Axis.horizontal,
          ),
          itemBuilder: (context, i, index) {
            return Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(widget.banners[i]),
                ),
              ),
            );
          },
        ),
        Positioned(
          bottom: 10,
          child: Row(
            children: List.generate(
              widget.banners.length,
              (index) => Padding(
                padding: const EdgeInsets.all(2.0),
                child: Obx(
                  () => Container(
                    height: 7,
                    width: index == sliderIndex.value ? 14 : 7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: index == sliderIndex.value
                          ? AppColors.primaryColor
                          : Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
