import 'package:e_commerce/features/authentication/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  ///Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  //Update current index data when page scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  //Jump to specific dot selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  //Update  current index & jump to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.off(const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  //Update current Index & jump to the last page
  void skipPage() {
    if (currentPageIndex.value == 0) {
      Get.offAll(const LoginScreen());
    } else {
      double page = currentPageIndex.value + 1;
      pageController.jumpTo(page);
    }
  }
}
