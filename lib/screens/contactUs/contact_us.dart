// ignore_for_file: must_be_immutable, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../utils/constant/app_color.dart';
import '../../widgets/appBar/appbar.dart';
import '../../widgets/textField/text_edit_field.dart';
import '../../widgets/textWidget/text_widget.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _mobile = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _message = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HelperAppBar.appbarHelper(title: 'Contact Us', isCenter: false,isBackHelper: true),
      body: Form(
            key: _key,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: ListView(
              children: [
               const SizedBox(
                  height: 10,
                ),
                  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextWidget(
                      text: "Give Us a call, Send Us an email to have a chat We are always here to help out in whatever way we can",
                      textSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black.withOpacity(0.7),
                      maxLine: 14,
                      align: TextAlign.start)
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: TextWidget(
                      text: "CONTACT INFO",
                      textSize: 16,
                      fontWeight: FontWeight.w700,
                      color: AppColors.black,
                      maxLine: 14,
                      align: TextAlign.start),
                ),
                
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Card(
                    elevation: 3,
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      height: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: InkWell(
                        onTap: () {
                          launch("tel: +91 9874597555");
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Icon(
                              Icons.phone,
                              size: 30,
                              color: AppColors.black,
                            ),
                             SizedBox(
                              width: 25,
                            ),
                            TextWidget(
                                text: "Phone",
                                textSize: 14,
                                fontWeight: FontWeight.w600,
                                color: AppColors.black,
                                maxLine: 14,
                                align: TextAlign.start)

                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Card(
                    elevation: 3,
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      height: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: InkWell(
                        onTap: () {
                          launch('mailto:hello@godskart.com');
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const[
                            Icon(
                              Icons.email_outlined,
                              size: 30,
                              color: AppColors.black,
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            TextWidget(
                                text: "Email",
                                textSize: 14,
                                fontWeight: FontWeight.w600,
                                color: AppColors.black,
                                maxLine: 14,
                                align: TextAlign.center),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Card(
                    elevation: 3,
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Container(
                      padding:const EdgeInsets.symmetric(horizontal: 8),
                      height: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: InkWell(
                        onTap: () {
                          launch(
                              "https://wa.me/+919874597555?text=hello , messege from God'sKart");
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Icon(
                              Icons.whatsapp,
                              size: 30,
                              color: AppColors.black,
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            TextWidget(
                                text: "WhatsApp Us",
                                textSize: 14,
                                fontWeight: FontWeight.w600,
                                color: AppColors.black,
                                maxLine: 14,
                                align: TextAlign.start),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              
               const SizedBox(
                  height: 8,
                ),
                const  Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: TextWidget(
                      text: "WRITE YOUR COMMENT",
                      textSize: 16,
                      fontWeight: FontWeight.w700,
                      color: AppColors.black,
                      maxLine: 14,
                      align: TextAlign.start),
                ),
               const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      TextEditField.textField(hintText: 'Your Name*', valText: 'Please Enter Name', controller: _name, isOnlyMobileKeyboard: false),
                     const  SizedBox(
                        height: 10,
                      ),
                      TextEditField.textField(hintText: 'Phone No.*', valText: 'Please Enter Mobile Number', controller: _mobile, isOnlyMobileKeyboard: true),
                     const SizedBox(
                        height: 10,
                      ),
                      TextEditField.textField(hintText: 'Email*', valText: 'Please Enter Email', controller: _email, isOnlyMobileKeyboard: false),
                     const SizedBox(
                        height: 10,
                      ),
                      TextEditField.textField(hintText: 'Message*', valText: 'Please Enter Message', controller: _message, isOnlyMobileKeyboard: false),

                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryColor, // foreground
                          fixedSize: const Size(400, 40),
                        ),
                        onPressed: (){
                          if(_key.currentState!.validate()){

                          }

                        },
                        child: const Text("SUBMIT"),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

    );
  }
}
