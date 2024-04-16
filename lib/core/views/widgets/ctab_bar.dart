import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/core/models/enum/permission_enum.dart';
import 'package:flutter_boilerplate/core/providers/common_Provider.dart';
import 'package:flutter_boilerplate/core/views/resource/style_manager.dart';
import 'package:flutter_boilerplate/core/views/widgets/loader/cloader.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CTabBar<T> extends ConsumerStatefulWidget {
  const CTabBar({
    required this.itemCount,
    required this.appBarTitle,
    required this.tabBarItem,
    required this.tabBarViewItem,
    required this.child,
    super.key,
    this.onTap,
    this.permission,
    this.floatingWidget,
    this.screenName,
    this.floatingButtonName,
    this.initialIndex = 0,
    this.controller,
  });
  final int itemCount;
  final String appBarTitle;
  final List<T> tabBarItem;
  final List<T> tabBarViewItem;
  final void Function(int)? onTap;
  final Widget child;
  final Permission? permission;
  final Widget? screenName;
  final String? floatingButtonName;
  final Widget? floatingWidget;
  final int initialIndex;
  final TabController? controller;

  @override
  ConsumerState<CTabBar<T>> createState() => _CTabBarState();
}

class _CTabBarState<T> extends ConsumerState<CTabBar<T>> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: widget.itemCount,
      initialIndex: widget.initialIndex,
      child: Scaffold(
        floatingActionButton: widget.floatingWidget,
        appBar: AppBar(
          title: Column(
            children: [
              Text(
                widget.appBarTitle,
                style: getMediumStyle(color: Colors.white),
              ),
            ],
          ),
          bottom: TabBar(
            // controller: _controller,
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            padding: EdgeInsets.zero,
            onTap: widget.onTap,
            isScrollable: widget.tabBarItem.length > 4,
            tabAlignment:
                widget.tabBarItem.length > 4 ? TabAlignment.start : null,
            tabs:
                widget.tabBarItem.map((e) => Tab(text: e.toString())).toList(),
          ),
          leading: const BackButton(
            color: Colors.white,
          ),
        ),
        body: TabBarView(
          // controller: _controller,
          physics: const NeverScrollableScrollPhysics(),
          children: widget.tabBarViewItem
              .map(
                (_) => (ref.watch(showSkeletonLoadingProvider))
                    ? const CLoader.listTile(
                        showLeading: false,
                        padding:
                            EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                      )
                    : widget.child,
              )
              .toList(),
        ),
      ),
    );
  }
}

class TabBarFloatingButton extends StatelessWidget {
  const TabBarFloatingButton({
    required this.floatingButtonName,
    super.key,
    this.onPressed,
    this.screenName,
  });

  final String? floatingButtonName;
  final Widget? screenName;

  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return (floatingButtonName != null)
        ? FloatingActionButton.extended(
            label: Text(floatingButtonName!),
            icon: const Icon(Icons.add),
            onPressed: onPressed ??
                () => Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (_) => screenName!,
                      ),
                    ),
          )
        : const SizedBox();
  }
}
