import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    surface: Color.fromARGB(255, 201, 133, 133),
    onSurface: Color.fromARGB(255, 103, 103, 103),
    primary: Color(0xffACC6AA),
    onPrimary: Color(0xFFFFFFFF),
    secondary: Color(0xffACC6AA),
    onSecondary: Color(0xffACC6AA),

    error: Color.fromARGB(255, 214, 130, 130),
    onError: Color.fromARGB(198, 111, 255, 157),

    // primaryContainer: Color(0xff01DC82),
    outline: Color.fromARGB(255, 194, 180, 196),
    //used in some conditions
    secondaryContainer: Color(0xff6C5070),
    tertiaryContainer: Color(0xFFDDDDDD),
    tertiary: Color.fromARGB(255, 43, 0, 255),
    scrim: Color(0xff94B3FD),
  ),
);

// theme dark mode
ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    surface: Color.fromARGB(255, 44, 27, 27),
    onSurface: Color(0xFFFFFFFF),
    primary: Color(0xff6C5070),
    onPrimary: Color(0xFFFFFFFF),
    secondary: Color.fromARGB(255, 254, 245, 255),
    onSecondary: Color.fromARGB(255, 121, 67, 128),

    error: Color(0xffEA728C),
    onError: Color.fromARGB(198, 111, 255, 157),

    // primaryContainer: Color(0xff01DC82),
    outline: Color.fromARGB(255, 194, 180, 196),
    secondaryContainer: Color(0xFFFFE15D),
    tertiaryContainer: Color(0xff6C5070),
    tertiary: Color.fromARGB(255, 93, 255, 236),
    scrim: Color(0xff94B3FD),
  ),
);








// import 'package:flutter/material.dart';

// //!  colorBorder   =   outLine
// //!  colorPrimary   =   primary
// //!  colorOnPrimary   =   oPrimary
// //!  colorFont   =    secondery
// //!  colorFont2   =   onSecondery
// //!  colorGreen   =   primaryContainer
// //!  colorRed   =     secondaryContainer
// //!  colorGrey   =    tertiaryContainer
// //
// // theme light mode
// ThemeData lightMode = ThemeData(
//   appBarTheme: const AppBarTheme(
//     color: Color(0xFFF0F2F4),
//   ),
//   brightness: Brightness.light,
//   colorScheme: const ColorScheme.light(
//     // colorPrimary
//     primary: Color(0xffF58025),
//     // colorOnPrimary
//     onPrimary: Color(0xFFFFFFFF),
//     // colorButtons and Icons
//     secondary: Color(0xffF58025),
//     // color Font
//     onSecondary: Color(0xff555555),
//     // background
//     background: Color(0xFFF0F2F4),

//     // colorGreen
//     primaryContainer: Color(0xff01DC82),
//     // colorBorder
//     outline: Color(0xffEBECF1),
//     // colorRed
//     secondaryContainer: Color(0xfff43f5e),
//     // colorGrey
//     // tertiaryContainer:const Color(0xffEBECF1),
//     tertiaryContainer: Color(0xFFDDDDDD),
//     // black color
//     tertiary: Colors.black,
//   ),
// );

// // theme dark mode
// ThemeData darkMode = ThemeData(
//   brightness: Brightness.dark,
//   colorScheme: const ColorScheme.dark(
//     //colorPrimary

//     primary: Color(0xffF58025),
//     //colorOnPrimary
//     onPrimary: Color.fromARGB(255, 0, 0, 0),
//     // colorFont
//     secondary: Color(0xffE9EEF5),
//     // colorFont2
//     onSecondary: Color(0xffBBBFCE),
//     //colorGreen
//     primaryContainer: Color(0xff01DC82),
//     //colorBorder
//     outline: Color(0xff21234C),
//     //colorRed
//     secondaryContainer: Color(0xfff43f5e),
//     //colorGrey
//     tertiaryContainer: Color(0xffF58025),
//     //background textfield
//     background: Color.fromARGB(255, 0, 0, 0),
//   ),
// );
