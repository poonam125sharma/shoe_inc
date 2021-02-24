import 'package:flutter/material.dart';
import 'dart:html' as html;

// import 'package:universal_html/html.dart' as html;

import 'package:shoe_inc/widgets/translate_on_hover.dart';

extension HoverExtensions on Widget {
  static final appContainer = html.window.document.getElementById('app-container');

  Widget get showCursorOnHover {
    return MouseRegion(
      child: this,  // 'this' refers to the Widget we're using the extension on
      onHover: (event) => appContainer.style.cursor = 'pointer',
      onExit: (event) => appContainer.style.cursor = 'default',
    );
  }

  Widget get moveUpOnHover {
    return TranslateOnHover(child: this);
  }
}