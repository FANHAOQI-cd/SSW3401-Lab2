// Preserve upstream constant names used in the tutorial.
// ignore_for_file: constant_identifier_names

import 'package:flutter/widgets.dart';

/// The tutorial icons from fluentui_icons 1.0.0, using its original font files.
///
/// Direct IconData constants replace the upstream subclass for current Flutter,
/// where IconData is final. See ../README.md and ../LICENSE for provenance.
class FluentSystemIcons {
  FluentSystemIcons._();

  static const ic_fluent_home_regular = IconData(
    0xe8fe,
    fontFamily: 'FluentSystemIconsP3',
    fontPackage: 'fluentui_icons',
  );
  static const ic_fluent_home_filled = IconData(
    0xe8fd,
    fontFamily: 'FluentSystemIconsP3',
    fontPackage: 'fluentui_icons',
  );
  static const ic_fluent_search_regular = IconData(
    0xe8a9,
    fontFamily: 'FluentSystemIconsP5',
    fontPackage: 'fluentui_icons',
  );
  static const ic_fluent_search_filled = IconData(
    0xe8a6,
    fontFamily: 'FluentSystemIconsP5',
    fontPackage: 'fluentui_icons',
  );
  static const ic_fluent_ticket_regular = IconData(
    0xe8ee,
    fontFamily: 'FluentSystemIconsP6',
    fontPackage: 'fluentui_icons',
  );
  static const ic_fluent_ticket_filled = IconData(
    0xe8ed,
    fontFamily: 'FluentSystemIconsP6',
    fontPackage: 'fluentui_icons',
  );
  static const ic_fluent_person_regular = IconData(
    0xe811,
    fontFamily: 'FluentSystemIconsP5',
    fontPackage: 'fluentui_icons',
  );
  static const ic_fluent_person_filled = IconData(
    0xe80e,
    fontFamily: 'FluentSystemIconsP5',
    fontPackage: 'fluentui_icons',
  );
}
