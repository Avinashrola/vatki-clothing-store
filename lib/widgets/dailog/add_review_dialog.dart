import 'package:Vatki_Clothing_Store/utils/constant/app_color.dart';
import 'package:Vatki_Clothing_Store/widgets/textWidget/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

showRatingDialog(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        TextEditingController reviewController = TextEditingController();
        TextEditingController detailController = TextEditingController();
        final GlobalKey<FormState> formKey = GlobalKey();

        return SimpleDialog(
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Get.width * 0.20,
                width: Get.width * 0.20,
                child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRssfUQ7qaOoKricefFxELQYJ0MEc9eKCRlRg&usqp=CAU"),
              ),
              const SizedBox(
                width: 8,
              ),
              const Expanded(
                child: TextWidget(
                    text: 'Product Name',
                    textSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                    maxLine: 1,
                    align: TextAlign.start),
              ),
            ],
          ),
          elevation: 10,
          children: [
            SizedBox(
              width: Get.width * 0.9,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RatingBar.builder(
                          initialRating: 0,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: false,
                          itemCount: 5,
                          itemPadding:
                              const EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rat) {
                          },
                        ),
                        const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextWidget(
                                text: 'WRITE YOUR COMMENT',
                                textSize: 12,
                                fontWeight: FontWeight.bold,
                                color: AppColors.black,
                                maxLine: 1,
                                align: TextAlign.start)),
                        const SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          controller: reviewController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please Write Review';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                              focusedBorder: OutlineInputBorder(),
                              isDense: true,
                              contentPadding: EdgeInsets.all(10),
                              hintText: "Write Review",
                              border: OutlineInputBorder(),
                              errorBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.red, width: 1))),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: detailController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please Write details';
                            }
                            return null;
                          },
                          maxLines: 3,
                          decoration: const InputDecoration(
                              focusedBorder: OutlineInputBorder(),
                              isDense: true,
                              contentPadding: EdgeInsets.all(10),
                              hintText: "Write details",
                              border: OutlineInputBorder(),
                              errorBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.red, width: 1))),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: SizedBox(
                            width: 120,
                            height: 40,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          AppColors.primaryColor),
                                ),
                                child: const Text(
                                  "Send",
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                        ),
                      ],
                    )),
              ),
            )
          ],
          //backgroundColor: Colors.green,
        );
      },
    );
  }
