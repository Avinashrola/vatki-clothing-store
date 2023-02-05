import 'dart:io';
import 'package:Vatki_Clothing_Store/widgets/appBar/appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/profileController/profile_controller.dart';
import '../../utils/constant/app_color.dart';
import '../../widgets/dailog/choose_image.dart';
import '../../widgets/textField/text_edit_field.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _mobile = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final ProfileController _profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HelperAppBar.appbarHelper(
          title: 'Edit Profile', isCenter: false, isBackHelper: true),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Stack(
                children: [
                  GetBuilder<ProfileController>(
                    builder: (c) {
                      return CircleAvatar(
                        radius: 50,
                        backgroundColor: AppColors.primaryColor,
                        child: CircleAvatar(
                          radius: 48,
                          backgroundColor: AppColors.grey,
                          child: c.image != null
                              ? ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Image.file(
                                    File(c.image!.path),
                                    fit: BoxFit.fill,
                                    height: 96,
                                    width: 96,
                                  ),
                                )
                              : const Icon(Icons.person),
                        ),
                      );
                    },
                  ),
                  Positioned(
                    right: 1,
                    bottom: 1,
                    child: InkWell(
                      onTap: () => chooseImage(
                          context: context,
                          onTapCamera: () {
                            _profileController.openCameraGallery(
                                isCamera: true);
                          },
                          onTapGallery: () {
                            _profileController.openCameraGallery(
                                isCamera: false);
                          }),
                      child: const CircleAvatar(
                        radius: 16,
                        backgroundColor: AppColors.primaryColor,
                        child:   Icon(
                            Icons.camera_alt,
                            color: AppColors.white,
                            size: 22,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 80,
              ),
              TextEditField.textField(
                  hintText: 'Mobile Number*',
                  valText: 'Please Enter Mobile Number',
                  controller: _mobile,
                  isOnlyMobileKeyboard: true),
              const SizedBox(
                height: 15,
              ),
              TextEditField.textField(
                  hintText: 'Email*',
                  valText: 'Please Enter Email',
                  controller: _email,
                  isOnlyMobileKeyboard: false),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          foregroundColor: AppColors.white,
                          backgroundColor:
                              AppColors.primaryColor, // foreground
                        ),
                        child: const Text("SAVE PROFILE"),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
