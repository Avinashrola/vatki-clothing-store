import 'package:flutter/material.dart';

import '../../utils/constant/app_color.dart';

Future<bool> showExitPopup(BuildContext context) async {
  final width = MediaQuery.of(context).size.width;
  return await showDialog(
          context: context,
          builder: (context) => Dialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                elevation: 0,
                backgroundColor: Colors.transparent,
                child: Stack(alignment: Alignment.topCenter, children: [
                  Container(
                    margin: const EdgeInsets.only(top: 40),
                    padding: const EdgeInsets.only(
                        top: 40, left: 20, right: 20, bottom: 12),
                    width: width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'Exit',
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.brown,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const Text(
                          'Do you want to exit?',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () => Navigator.of(context).pop(false),
                                child: Container(
                                  alignment: Alignment.center,
                                  padding:
                                      const EdgeInsets.only(top: 8, bottom: 8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: AppColors.redColors,
                                  ),
                                  child: const Text(
                                    'No',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 17),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () => Navigator.of(context).pop(true),
                                child: Container(
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.only(
                                        top: 8, bottom: 8),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: AppColors.primaryColor,
                                    ),
                                    child: const Text(
                                      'Yes',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 17),
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Positioned(
                    top: 0,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 40,
                      child: Icon(
                        Icons.info,
                        size: 80,
                        color: AppColors.redColors,
                      ),
                    ),
                  ),
                ]),
              )) ??
      false;
}
