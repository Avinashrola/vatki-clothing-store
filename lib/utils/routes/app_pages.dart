import 'package:Vatki_Clothing_Store/screens/allReviews/all_review_screen.dart';
import 'package:Vatki_Clothing_Store/screens/cartScreen/cart_screen.dart';
import 'package:Vatki_Clothing_Store/screens/discountScreen/discunt_screen.dart';
import 'package:Vatki_Clothing_Store/screens/orderhistoryScreen/order_history_screen.dart';
import 'package:Vatki_Clothing_Store/screens/orderhistoryScreen/order_history_details_screen.dart';
import 'package:Vatki_Clothing_Store/screens/proceedToPayment/procceed_to_payment.dart';
import 'package:Vatki_Clothing_Store/screens/productdetailsscreen/product_details_screen.dart';
import 'package:Vatki_Clothing_Store/screens/signinScreen/signin_screen.dart';
import 'package:Vatki_Clothing_Store/screens/signupScreen/signup_screen.dart';
import 'package:get/get.dart';
import '../../screens/@customerScreens/filterScreen/filter.dart';
import '../../screens/@customerScreens/productList/product_list.dart';
import '../../screens/aboutUs/about_us.dart';
import '../../screens/addressScreen/add_edit_address.dart';
import '../../screens/addressScreen/address.dart';
import '../../screens/contactUs/contact_us.dart';
import '../../screens/@customerScreens/landingScreen/landing_screen.dart';
import '../../screens/@customerScreens/searchProduct/search_product.dart';
import '../../screens/@customerScreens/walletScreen/wallet.dart';
import '../../screens/faq/faq.dart';
import '../../screens/forgotPassword/forgot_password_screen.dart';
import '../../screens/forgotPassword/otp_screen.dart';
import '../../screens/forgotPassword/set_password.dart';
import '../../screens/notificationScreen/notification_screen.dart';
import '../../screens/profileScreen/edit_profile.dart';
import '../../screens/orderPlaceSuccess/order_place_sucess.dart';
import '../../screens/referEarn/refer_earn.dart';
import '../../screens/returnRefunds/return_refunds.dart';
import '../../screens/splashScreen/splash_screen.dart';
import 'app_routes.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: AppRoutes.landingPage,
      page: () => const LandingScreen(),
    ),
    GetPage(
      name: AppRoutes.discount,
      page: () => const DiscountScreen(),
    ),
    GetPage(
      name: AppRoutes.walletScreen,
      page: () => const WalletScreen(),
    ),
    GetPage(
      name: AppRoutes.productDetails,
      page: () => const ProductDetailsScreen(),
    ),
    GetPage(
      name: AppRoutes.notificationScreen,
      page: () => const NotificationScreen(),
    ),
    GetPage(
      name: AppRoutes.addEditAddress,
      page: () => const AddEditAddress(),
    ),
    GetPage(
      name: AppRoutes.addEditAddress,
      page: () => const AddEditAddress(),
    ),
    GetPage(
      name: AppRoutes.myAddress,
      page: () => const MyAddress(),
    ),
    GetPage(
      name: AppRoutes.referEarn,
      page: () => const ReferEarn(),
    ),
    GetPage(
      name: AppRoutes.returnRefunds,
      page: () => const ReturnRefunds(),
    ),
    GetPage(
      name: AppRoutes.faq,
      page: () => const Faq(),
    ),
    GetPage(
      name: AppRoutes.aboutUs,
      page: () => const AboutUs(),
    ),
    GetPage(
      name: AppRoutes.contactUs,
      page: () => const ContactUs(),
    ),
    GetPage(
      name: AppRoutes.productList,
      page: () => const ProductList(),
    ),
    GetPage(
      name: AppRoutes.orderHistory,
      page: () => const OrderHistory(),
    ),
    GetPage(
      name: AppRoutes.orderHistoryDetails,
      page: () => const OrderHistoryDetails(),
    ),
    GetPage(
      name: AppRoutes.allReviewScreen,
      page: () => const AllReviewScreen(),
    ),
    GetPage(
      name: AppRoutes.searchProduct,
      page: () => const SearchProduct(),
    ),
    GetPage(
      name: AppRoutes.editProfile,
      page: () => const EditProfile(),
    ),
    GetPage(
      name: AppRoutes.proceedToPayment,
      page: () => const ProcceedToPaymentScreen(),
    ),
    GetPage(
      name: AppRoutes.orderSuccess,
      page: () => const OrderSuccess(),
    ),
    GetPage(
      name: AppRoutes.filterPage,
      page: () => const FilterPage(),
    ),
    GetPage(
      name: AppRoutes.cartScreen,
      page: () => const CartScreen(),
    ),
    GetPage(
      name: AppRoutes.forgetPasswordScreen,
      page: () => const ForgetPasswordScreen(),
    ),
    GetPage(
      name: AppRoutes.verifyOTPScreen,
      page: () => const VerifyOTPScreen(),
    ),
    GetPage(
      name: AppRoutes.setPassword,
      page: () => const SetPassword(),
    ),
    GetPage(
      name: AppRoutes.signinScreen,
      page: () => const SigninScreen(),
    ),
    GetPage(
      name: AppRoutes.signupScreen,
      page: () => const SignupScreen(),
    ),
  ];
}
