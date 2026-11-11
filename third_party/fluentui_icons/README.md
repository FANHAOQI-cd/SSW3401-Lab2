# Tutorial icon compatibility subset

Source: [fluentui_icons 1.0.0](https://pub.dev/packages/fluentui_icons/versions/1.0.0),
Copyright (c) 2020 Alberto Bonacina, MIT license (see LICENSE).

This local package includes only the eight Home, Search, Tickets and Profile icon
constants used by Lab 2, with their original code points and three original font
files copied unchanged from version 1.0.0. It is not a complete replacement for
the upstream package's full API.

The original package subclasses `IconData`. Current Flutter makes `IconData`
final, so that code no longer compiles. These definitions construct `IconData`
directly, preserving the glyphs, font families, and names used in the tutorial.
