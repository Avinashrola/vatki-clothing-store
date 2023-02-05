import 'package:Vatki_Clothing_Store/utils/constant/app_color.dart';
import 'package:Vatki_Clothing_Store/widgets/textWidget/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class AppRating {
  static Widget rating({required double size, required double rate}) {
    return RatingBarIndicator(
      rating: rate,
      itemSize: size,
      direction: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
    );
  }

  static Widget ratingPost({required double size, onRatingUpdate}) {
    return RatingBar.builder(
      maxRating: 5,
      glow: false,
      tapOnlyMode: false,
      updateOnDrag: false,
      itemSize: size,
      initialRating: 5,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: onRatingUpdate,
    );
  }
}

 Widget ratingBar(
      {required String barStar,
      required int totalStars,
      required Color barColor,
      required String howmanyGets}) {
    return Row(
      children: [
        Row(
          children: [
            TextWidget(
                text: barStar,
                textSize: 10,
                fontWeight: FontWeight.normal,
                color: AppColors.black,
                maxLine: 1,
                align: TextAlign.start),
            const Icon(Icons.star, size: 10),
          ],
        ),
        const SizedBox(
          width: 5,
        ),
        Expanded(
          child: StepProgressIndicator(
            totalSteps: totalStars,
            currentStep: int.parse(howmanyGets),
            size: 8,
            padding: 0,
            selectedColor: barColor,
            unselectedColor: AppColors.grey,
            roundedEdges: const Radius.circular(10),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: TextWidget(
              text: howmanyGets,
              textSize: 10,
              fontWeight: FontWeight.normal,
              color: AppColors.black,
              maxLine: 1,
              align: TextAlign.start),
        )
      ],
    );
  
}
