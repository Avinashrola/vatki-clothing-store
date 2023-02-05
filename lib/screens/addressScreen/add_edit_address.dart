import 'package:Vatki_Clothing_Store/widgets/appBar/appbar.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import '../../services/placeService/current_address.dart';
import '../../utils/constant/app_color.dart';
import '../../widgets/textField/text_edit_field.dart';
import '../../widgets/textWidget/text_widget.dart';

class AddEditAddress extends StatefulWidget {
  const AddEditAddress({Key? key}) : super(key: key);

  @override
  State<AddEditAddress> createState() => _AddEditAddressState();
}

class _AddEditAddressState extends State<AddEditAddress> {
  final GlobalKey<FormState> _addressFormKey = GlobalKey<FormState>();

  final TextEditingController _name = TextEditingController();
  final TextEditingController _mobile = TextEditingController();
  final TextEditingController _street = TextEditingController();
  final TextEditingController _landmark = TextEditingController();
  final TextEditingController _city = TextEditingController();
  final TextEditingController _state = TextEditingController();
  final TextEditingController _country = TextEditingController();
  final TextEditingController _zip = TextEditingController();
  String location = 'Null, Press Button';
  RxString selectType = "home".obs;
  bool? isEdit;
  @override
  void initState() {
     isEdit = Get.arguments[0];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HelperAppBar.appbarHelper(
          title: isEdit! ? "Edit Address" :'Add Address', isCenter: false, isBackHelper: true),
      body: Form(
        key: _addressFormKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: [
              Card(
                child: ListTile(
                  onTap: _getCurrentAddress,
                  leading: const Icon(Icons.my_location,
                      size: 26, color: AppColors.primaryColor),
                  title: const Center(
                      child: TextWidget(
                          text: "Use My Current Location",
                          textSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColors.primaryColor,
                          maxLine: 1,
                          align: TextAlign.center)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextEditField.textField(
                  hintText: 'PinCode*',
                  valText: 'Please Enter PinCode',
                  controller: _zip,
                  isOnlyMobileKeyboard: true),
              const SizedBox(
                height: 10,
              ),
              TextEditField.textField(
                  hintText: 'City*',
                  valText: 'Please Enter City',
                  controller: _city,
                  isOnlyMobileKeyboard: false),
              const SizedBox(
                height: 10,
              ),
              TextEditField.textField(
                  hintText: 'State*',
                  valText: 'Please Enter State',
                  controller: _state,
                  isOnlyMobileKeyboard: false),
              const SizedBox(
                height: 10,
              ),
              TextEditField.textField(
                  hintText: 'Street*',
                  valText: 'Please Enter Street',
                  controller: _street,
                  isOnlyMobileKeyboard: false),
              const SizedBox(
                height: 10,
              ),
              TextEditField.textField(
                  hintText: 'Landmark*',
                  valText: 'Please Enter LandMark',
                  controller: _landmark,
                  isOnlyMobileKeyboard: false),
              const SizedBox(
                height: 10,
              ),
              TextEditField.textField(
                  hintText: 'Name*',
                  valText: 'Please Enter Name',
                  controller: _name,
                  isOnlyMobileKeyboard: false),
              const SizedBox(
                height: 10,
              ),
              TextEditField.textField(
                  hintText: 'Mobile No*',
                  valText: 'Please Enter Mobile Number',
                  controller: _mobile,
                  isOnlyMobileKeyboard: true),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 1,
            width: context.width,
            color: AppColors.black,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextWidget(
                text: "Address Type",
                textSize: 14,
                fontWeight: FontWeight.w600,
                color: AppColors.primaryColor,
                maxLine: 1,
                align: TextAlign.center),
          ),
          Row(
            children: [
              Obx(
                () => Radio(
                  value: 'home',
                  groupValue: selectType.value,
                  onChanged: (value) {
                    selectType.value = "home";
                  },
                  activeColor: Colors.indigo,
                  fillColor:
                      MaterialStateProperty.all(AppColors.primaryColor),
                ),
              ),
              const TextWidget(
                  text: "Home Address",
                  textSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black,
                  maxLine: 1,
                  align: TextAlign.center)
            ],
          ),
          Row(
            children: [
              Obx(
                () => Radio(
                  value: 'work',
                  groupValue: selectType.value,
                  onChanged: (value) {
                    selectType.value = "work";
                  },
                  activeColor: AppColors.primaryColor,
                  fillColor:
                      MaterialStateProperty.all(AppColors.primaryColor),
                ),
              ),
              const TextWidget(
                  text: "Work/Office Address",
                  textSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black,
                  maxLine: 1,
                  align: TextAlign.center)
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor, // foreground
                fixedSize: const Size(400, 40),
              ),
              onPressed: () {
                if (_addressFormKey.currentState!.validate()) {}
              },
              child: const Text('Save'),
            ),
          ),
        ],
      ),
    );
  }


  void _getCurrentAddress() async {
    Position position = await GetCurrentAddress.getGeoLocationPosition();
    location = 'Lat: ${position.latitude} , Long: ${position.longitude}';
    Placemark place = await GetCurrentAddress.getAddressFromLatLong(position);
    _zip.text = "${place.postalCode}";
    _city.text = "${place.locality}";
    _state.text = "${place.administrativeArea}";
    _street.text = "${place.subLocality}";
    _landmark.text = "${place.subAdministrativeArea}";
    _country.text = "${place.country}";
  }

}
