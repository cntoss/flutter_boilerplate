import 'package:flutter_boilerplate/core/constants/stepper_color.dart';
import 'package:flutter_boilerplate/core/services/extensions.dart';
import 'package:flutter/material.dart';

class CSteps {
  const CSteps({
    required this.view,
    this.isComplete = false,
  });

  final bool isComplete;
  final Widget view;
}

class CStepperBar extends StatefulWidget {
  const CStepperBar({
    required this.tabController,
    required this.steps,
    this.isConnectNew = false,
    this.onTap,
    this.indicatorWidth,
    this.viewPadding = EdgeInsets.zero,
    this.margin = const EdgeInsets.symmetric(horizontal: 5),
    super.key,
  });

  final double? indicatorWidth;
  final bool isConnectNew;
  final EdgeInsetsGeometry margin;
  final GestureTapCallback? onTap;
  final List<CSteps> steps;
  final TabController tabController;
  final EdgeInsetsGeometry viewPadding;

  @override
  State<CStepperBar> createState() => _CStepperBarState();
}

class _CStepperBarState extends State<CStepperBar> {
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    widget.tabController.addListener(() {
      setState(() {
        selectedIndex = widget.tabController.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: widget.steps
              .mapIndexed(
                (index, element) => Flexible(
                  child: GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      widget.onTap?.call();
                      // if (index != selectedIndex) {
                      //   widget.tabController.animateTo(index);
                      // }
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Container(
                        margin: widget.margin,
                        height: 5,
                        width: widget.indicatorWidth,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: selectedIndex == index
                              ? StepperColor.active.value
                              : element.isComplete
                                  ? StepperColor.complete.value
                                  : StepperColor.inactive.value,
                        ),
                      ),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
        Expanded(
          child: TabBarView(
            // The parent must handle the scroll
            physics: const NeverScrollableScrollPhysics(),
            controller: widget.tabController,
            children: widget.steps
                .mapIndexed(
                  (int index, step) => Padding(
                    padding: widget.viewPadding,
                    child: step.view,
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
