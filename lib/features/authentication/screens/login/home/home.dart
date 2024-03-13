import 'package:e_commerce/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:e_commerce/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          ECurvedWidgets(
            child: Container(
              color: EColors.primary,
              padding: const EdgeInsets.all(0),
              child: SizedBox(
                height: 400,
                child: Stack(
                  children: [
                    Positioned(
                        top: -150,
                        right: -250,
                        child: CircularContainer(
                            backGroundcolor:
                                EColors.textWhite.withOpacity(0.1))),
                    Positioned(
                        top: 100,
                        right: -300,
                        child: CircularContainer(
                            backGroundcolor:
                                EColors.textWhite.withOpacity(0.1))),
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
