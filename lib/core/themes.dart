// burada temalandirma + renkler + ... yazicaz.

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

const colors = {
  "primary": Color.fromARGB(255, 39, 95, 187), // red green blue
  "onPrimary": Color.fromARGB(255, 255, 255, 255),
  "secondary": Color.fromARGB(255, 214, 139, 41),
  "onSecondary": Color.fromARGB(255, 0, 0, 0),
  "surface": Color.fromARGB(255, 255, 255, 255),
  "onSurface": Color.fromARGB(255, 43, 43, 43),
};

const darkColors = {
  "primary": Color.fromARGB(255, 39, 95, 187), // red green blue
  "onPrimary": Color.fromARGB(255, 255, 255, 255),
  "secondary": Color.fromARGB(255, 214, 139, 41),
  "onSecondary": Color.fromARGB(255, 0, 0, 0),
  "surface": Color.fromARGB(255, 43, 43, 43),
  "onSurface": Color.fromARGB(255, 255, 255, 255),
};

final lightTheme = ThemeData(
  brightness: Brightness.light,
  primarySwatch: Colors.blue,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  textTheme: GoogleFonts.latoTextTheme().copyWith(
    titleSmall: GoogleFonts.raleway(
      textStyle: TextStyle(
        color: colors["onSurface"],
      ),
    ),
    titleMedium: GoogleFonts.raleway(
      textStyle: TextStyle(
        color: colors["onSurface"],
      ),
    ),
    titleLarge: GoogleFonts.raleway(
      textStyle: TextStyle(
        color: colors["onSurface"],
      ),
    ),
    bodySmall: GoogleFonts.raleway(
      textStyle: TextStyle(
        color: colors["onSurface"],
      ),
    ),
    bodyMedium: GoogleFonts.raleway(
      textStyle: TextStyle(
        color: colors["onSurface"],
      ),
    ),
    bodyLarge: GoogleFonts.raleway(
      textStyle: TextStyle(
        color: colors["onSurface"],
      ),
    ),
    headlineSmall: GoogleFonts.bebasNeue(
      textStyle: TextStyle(
        color: colors["onSurface"],
      ),
    ),
    headlineMedium: GoogleFonts.bebasNeue(
      textStyle: TextStyle(
        color: colors["onSurface"],
      ),
    ),
    headlineLarge: GoogleFonts.bebasNeue(
      textStyle: TextStyle(
        color: colors["onSurface"],
      ),
    ),
    displaySmall: GoogleFonts.bebasNeue(
      textStyle: TextStyle(
        color: colors["onSurface"],
      ),
    ),
    displayMedium: GoogleFonts.bebasNeue(
      textStyle: TextStyle(
        color: colors["onSurface"],
      ),
    ),
    displayLarge: GoogleFonts.bebasNeue(
      textStyle: TextStyle(
        color: colors["onSurface"],
      ),
    ),
    labelSmall: GoogleFonts.raleway(
      textStyle: TextStyle(
        color: colors["onSurface"],
      ),
    ),
    labelMedium: GoogleFonts.raleway(
      textStyle: TextStyle(
        color: colors["onSurface"],
      ),
    ),
    labelLarge: GoogleFonts.raleway(
      textStyle: TextStyle(
        color: colors["onSurface"],
      ),
    ),
  ),
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.blue,
  textTheme: GoogleFonts.latoTextTheme().copyWith(
    titleSmall: GoogleFonts.raleway(
      textStyle: TextStyle(
        color: darkColors["onSurface"],
      ),
    ),
    titleMedium: GoogleFonts.raleway(
      textStyle: TextStyle(
        color: darkColors["onSurface"],
      ),
    ),
    titleLarge: GoogleFonts.raleway(
      textStyle: TextStyle(
        color: darkColors["onSurface"],
      ),
    ),
    bodySmall: GoogleFonts.raleway(
      textStyle: TextStyle(
        color: darkColors["onSurface"],
      ),
    ),
    bodyMedium: GoogleFonts.raleway(
      textStyle: TextStyle(
        color: darkColors["onSurface"],
      ),
    ),
    bodyLarge: GoogleFonts.raleway(
      textStyle: TextStyle(
        color: darkColors["onSurface"],
      ),
    ),
    headlineSmall: GoogleFonts.bebasNeue(
      textStyle: TextStyle(
        color: darkColors["onSurface"],
      ),
    ),
    headlineMedium: GoogleFonts.bebasNeue(
      textStyle: TextStyle(
        color: darkColors["onSurface"],
      ),
    ),
    headlineLarge: GoogleFonts.bebasNeue(
      textStyle: TextStyle(
        color: darkColors["onSurface"],
      ),
    ),
    displaySmall: GoogleFonts.bebasNeue(
      textStyle: TextStyle(
        color: darkColors["onSurface"],
      ),
    ),
    displayMedium: GoogleFonts.bebasNeue(
      textStyle: TextStyle(
        color: darkColors["onSurface"],
      ),
    ),
    displayLarge: GoogleFonts.bebasNeue(
      textStyle: TextStyle(
        color: darkColors["onSurface"],
      ),
    ),
    labelSmall: GoogleFonts.raleway(
      textStyle: TextStyle(
        color: darkColors["onSurface"],
      ),
    ),
    labelMedium: GoogleFonts.raleway(
      textStyle: TextStyle(
        color: darkColors["onSurface"],
      ),
    ),
    labelLarge: GoogleFonts.raleway(
      textStyle: TextStyle(
        color: darkColors["onSurface"],
      ),
    ),
  ),
);
