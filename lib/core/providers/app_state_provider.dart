import 'package:flutter_boilerplate/core/constants/ui_colors.dart';
import 'package:flutter_boilerplate/core/models/app_environment.dart';
import 'package:flutter/material.dart';

/// Root class for handling global app state.
///
/// This should be used as a top level widget in the widget tree.
/// It includes a state object which holds localized texts, color codes etc.
/// which needs to be reflected through the app.
///
/// It is generally used directly in the `runApp()` function
/// ```
///  runApp(
///    ProviderScope(
///      child: AppState(
///        root: StateRoot(
///          localization: const Localization(),
///          palette: UIColors(),
///        ),
///        child: const erpApp(),
///      ),
///    ),
///  );
/// ```
class AppState extends InheritedWidget {
  /// Takes a state object and a child [Widget].
  const AppState({
    required this.palette,
    required this.environment,
    required super.child,
    super.key,
  });

  /// A state variable, responsible for the descendants of this class
  /// to rebuild, when changed.
  final UIColors palette;

  // Determines which app environment to use
  final AppEnvironment environment;

  @override
  bool updateShouldNotify(AppState oldWidget) => true;

  /// The static method that finds the [AppState] value specified for the
  /// nearest [BuildContext] ancestor.
  ///
  /// It allows to access the dependant and helps to read or modify its value.

  static AppState? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppState>();
  }
}
