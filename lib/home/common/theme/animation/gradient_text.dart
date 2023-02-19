import 'package:flutter/material.dart';

class GradientText extends StatefulWidget {
  const GradientText({Key? key}) : super(key: key);

  @override
  _GradientTextState createState() => _GradientTextState();
}

class _GradientTextState extends State<GradientText>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 2000));
    _animationController.repeat(reverse: true);
    _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: ShaderMask(
          child: Text(
            'Animation Text',
            textAlign: TextAlign.center,
          ),
          shaderCallback: (rect) {
            return LinearGradient(stops: [
              _animation.value - 0.5,
              _animation.value,
              _animation.value + 0.5,
            ], colors: [
              Color(int.parse("0xFF00c3ff")),
              Color(int.parse("0xFFffff1c")),
              Color(int.parse("0xFF00c3ff")),
            ]).createShader(rect);
          },
        ),
      ),
    );
  }
}
