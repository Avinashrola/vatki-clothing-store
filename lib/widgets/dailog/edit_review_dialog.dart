 import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

editReviewDialog(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (BuildContext context) {
        TextEditingController reviewController = TextEditingController(
            text:
                "cardDetailsController.reviewModel.value!.data!.items![i].title");
        TextEditingController detailController = TextEditingController(
            text:
                "cardDetailsController.reviewModel.value.data!.items![i].review");
        // cardDetailsController
        //     .reviewModel
        //     .value!
        //     .data!
        //     .items![i]
        //     .rating!
        //     .toInt();
        final GlobalKey<FormState> formKey = GlobalKey();
        return SimpleDialog(
          title: Row(
            children: [
              SizedBox(
                height: Get.width * 0.15,
                width: Get.width * 0.15,
                child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRssfUQ7qaOoKricefFxELQYJ0MEc9eKCRlRg&usqp=CAU"),
              ),
              const SizedBox(
                width: 8,
              ),
              const Text("Item Name",
                  style: TextStyle(color: Colors.grey, fontSize: 16)),
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
                          initialRating: 1,
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
                        const SizedBox(
                          height: 8,
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
                          decoration: const InputDecoration(
                              focusedBorder: OutlineInputBorder(),
                              isDense: true,
                              contentPadding: EdgeInsets.all(10),
                              hintText: "Write detail",
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
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.blue),
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
