//Reusable Animated List view Container
import 'package:flutter_boilerplate/core/services/helpers/ui_helper.dart';
import 'package:flutter/material.dart';

class ReusableAnimationContainer extends StatefulWidget {
  const ReusableAnimationContainer({
    required this.index,
    required this.child,
    super.key,
  });
  final int index;
  final Widget child;

  @override
  State<ReusableAnimationContainer> createState() =>
      _ReusableAnimationContainerState();
}

class _ReusableAnimationContainerState extends State<ReusableAnimationContainer>
    with AutomaticKeepAliveClientMixin {
  bool startAnimation = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        startAnimation = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return AnimatedContainer(
      width: mediaWidth(context),
      curve: Curves.easeInOut,
      duration: Duration(milliseconds: 300 + (widget.index * 60)),
      transform: Matrix4.translationValues(
        startAnimation ? 0 : mediaWidth(context),
        0,
        0,
      ),
      child: widget.child,
    );
  }

  @override
  bool get wantKeepAlive => true;
}
