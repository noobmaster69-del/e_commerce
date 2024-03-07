import 'package:e_commerce/features/authentication/screens/login/login.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
              //Image
            ],
          ),
        ),
      ),
    );
  }
}
