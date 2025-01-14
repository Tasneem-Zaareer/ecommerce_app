import 'package:flutter/material.dart';

class AnimationColorWidget extends StatefulWidget {
  final Widget? child;
  final EdgeInsetsGeometry? padding;

  const AnimationColorWidget({
    super.key,
    this.child,
    this.padding,
  });

  @override
  AnimationColorWidgetState createState() => AnimationColorWidgetState();
}

class AnimationColorWidgetState extends State<AnimationColorWidget>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;

  AnimationColorWidgetState();

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));
    fadingAnimation =
        Tween<double>(begin: .2, end: 1).animate(animationController!);

    animationController?.repeat(reverse: true);
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ?? EdgeInsets.zero,
      child: FadeTransition(
        opacity: fadingAnimation!,
        child: widget.child,
      ),
    );
  }
}
