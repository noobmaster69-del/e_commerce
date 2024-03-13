import 'package:e_commerce/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:flutter/material.dart';

class ECurvedWidgets extends StatelessWidget {
  const ECurvedWidgets({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: ECustomCurves(), child: child);
  }
}
