import 'package:flutter/material.dart';
import 'glass_morphism.dart';

class GlassDrawer extends StatelessWidget {
  final double blur;
  final double opacity;
  final double borderRadius;
  final Color? borderColor;
  final Widget? drawerHeader;
  final List<Widget> children;

  const GlassDrawer({
    Key? key,
    this.blur = 20.0,
    this.opacity = 0.15,
    this.borderRadius = 20.0,
    this.borderColor,
    this.drawerHeader,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: GlassMorphism(
        blur: blur,
        opacity: opacity,
        borderRadius: borderRadius,
        borderColor: borderColor,
        child: Column(
          children: [
            if (drawerHeader != null)
              Container(
                child: drawerHeader,
              ),
            ...children,
          ],
        ),
      ),
    );
  }
}
