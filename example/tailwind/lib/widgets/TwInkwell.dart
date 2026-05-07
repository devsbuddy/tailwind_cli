import 'package:flutter/material.dart';
import 'package:tailwind/tailwind.dart';

import 'TwBuilder.dart';

/// [TwInkwell] widget is wrapper around the actual [InkWell] Widget
///

class TwInkWell extends TwWidgetBuilder<Widget> with TwGestureMixin<TwInkWell> {
  TwInkWell({this.child}) {
    setChildForGestureDetection(this);
  }

  Widget? child;
  InteractiveInkFeatureFactory? _splashFactory;
  bool _autofocus = false;
  BorderRadius? _borderRadius;
  MouseCursor? _mouseCursor;
  Color? _focusColor;
  Color? _hoverColor;
  Color? _highlightColor;
  WidgetStateProperty<Color?>? _overlayColor;
  Color? _splashColor;
  double? _radius;
  ShapeBorder? _customBorder;
  bool _enableFeedback = true;
  bool _excludeFromSemantics = false;
  FocusNode? _focusNode;
  bool _canRequestFocus = true;

  /// Provided splash factory to [InkWell]
  TwInkWell get noSplash => this.._splashFactory = NoSplash.splashFactory;

  /// Handle Booleans
  TwInkWell autoFocus(bool autoFocus) => this.._autofocus = autoFocus;
  TwInkWell enableFeedback(bool enableFeedback) => this.._enableFeedback = enableFeedback;
  TwInkWell excludeFromSemantics(bool excludeFromSemantics) => this.._excludeFromSemantics = excludeFromSemantics;
  TwInkWell canRequestFocus(bool canRequestFocus) => this.._canRequestFocus = canRequestFocus;

  /// Handle Colors
  TwInkWell focusColor(Color focusColor) => this.._focusColor = focusColor;
  TwInkWell hoverColor(Color hoverColor) => this.._hoverColor = hoverColor;
  TwInkWell highlightColor(Color highlightColor) => this.._highlightColor = highlightColor;
  TwInkWell overlayColor(WidgetStateProperty<Color?> overlayColor) => this.._overlayColor = overlayColor;
  TwInkWell splashColor(Color splashColor) => this.._splashColor = splashColor;

  /// Handle Misc Options
  TwInkWell borderRadius(BorderRadius borderRadius) => this.._borderRadius = borderRadius;
  TwInkWell mouseCursor(MouseCursor mouseCursor) => this.._mouseCursor = mouseCursor;
  TwInkWell customBorder(ShapeBorder customBorder) => this.._customBorder = customBorder;
  TwInkWell focusNode(FocusNode focusNode) => this.._focusNode = focusNode;

  /// It Renders [InkWell] Widget
  ///
  @override
  Widget render({Key? key}) {
    return InkWell(
      child: child!,
      splashFactory: _splashFactory,
      onTap: twOnTap,
      onDoubleTap: twOnDoubleTap,
      onLongPress: twOnLongPress,
      onTapDown: twOnTapDown,
      onTapUp: twOnTapUp,
      onFocusChange: twOnFocusChange,
      onHighlightChanged: twOnHighlightChanged,
      onTapCancel: twOnTapCancel,
      onHover: twOnHover,
      autofocus: _autofocus,
      borderRadius: _borderRadius,
      mouseCursor: _mouseCursor,
      focusColor: _focusColor,
      hoverColor: _hoverColor,
      highlightColor: _highlightColor,
      overlayColor: _overlayColor,
      splashColor: _splashColor,
      radius: _radius,
      customBorder: _customBorder,
      enableFeedback: _enableFeedback,
      excludeFromSemantics: _excludeFromSemantics,
      focusNode: _focusNode,
      canRequestFocus: _canRequestFocus,
    );
  }
}

extension InkwellExtensions on Widget {
  /// Extension method to directly access [TwInkWell]
  /// with any widget without wrapping or with dot operator.

  TwInkWell get inkWell => TwInkWell(child: this);

  TwInkWell get withInkWell => TwInkWell(child: this);

  TwInkWell get isInkWell => TwInkWell(child: this);
}
