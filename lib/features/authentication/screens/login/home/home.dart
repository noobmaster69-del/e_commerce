import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/custom_shapes/container/primary_header_container.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Header
            PrimaryHeaderWidget(
              child: Column(
                children: [
                  EAppBar(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
