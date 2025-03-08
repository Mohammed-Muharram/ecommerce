import 'package:ecommerccc/core/constant/routes.dart';
import 'package:ecommerccc/core/middleware/mymiddleware.dart';
import 'package:ecommerccc/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:ecommerccc/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:ecommerccc/view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'package:ecommerccc/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:ecommerccc/view/screen/auth/login.dart';
import 'package:ecommerccc/view/screen/auth/signup.dart';
import 'package:ecommerccc/view/screen/auth/success_signup.dart';
import 'package:ecommerccc/view/screen/auth/verifycodesignup.dart';
import 'package:ecommerccc/view/screen/homescreen.dart';
import 'package:ecommerccc/view/screen/items.dart';
import 'package:ecommerccc/view/screen/language.dart';
import 'package:ecommerccc/view/screen/myfavorite.dart';
import 'package:ecommerccc/view/screen/onboarding.dart';
import 'package:ecommerccc/view/screen/productdetails.dart';

import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(  name: "/", page: () => const Language(), middlewares: [MyMiddleWare()]),
  // GetPage(name: "/", page: () => ProductDetails()),
//  Auth
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.signUp, page: () => const SignUp()),
  GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.verfiyCode, page: () => const VerfiyCode()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(
      name: AppRoute.successResetpassword,
      page: () => const SuccessResetPassword()),
  GetPage(name: AppRoute.successSignUp, page: () => const SuccessSignUp()),
  GetPage(name: AppRoute.onBoarding, page: () => const OnBoarding()),
  GetPage(
      name: AppRoute.verfiyCodeSignUp, page: () => const VerfiyCodeSignUp()),
  //
  GetPage(name: AppRoute.homepage, page: () => const HomeScreen()), 
  GetPage(name: AppRoute.items, page: () => const Items()), 
  GetPage(name: AppRoute.productdetails, page: () => const ProductDetails()), 
  GetPage(name: AppRoute.myfavroite, page: () => const MyFavorite()), 

];
