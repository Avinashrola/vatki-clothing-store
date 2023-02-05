import 'package:Vatki_Clothing_Store/utils/constant/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopCategory extends StatelessWidget {
  const TopCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        children: List.generate(
          6,
          (index) => Padding(
            padding: const EdgeInsets.only(left: 12),
            child: InkWell(
              onTap: () {
                Get.toNamed('/productList');
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 7),
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 4,
                          )
                        ],
                        image: DecorationImage(
                          image: AssetImage("assets/jpg/kurta.jpg"),
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter
                        ),
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  Text(
                    "Kurta".toUpperCase(),
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
