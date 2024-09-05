// import 'package:flutter/material.dart';

// import 'app_colors.dart';
// import 'app_text_styles.dart';

// class AppThemes {
//   static ThemeData get darkTheme {
//     return ThemeData(
//       splashColor: Colors.transparent,
//       useMaterial3: true,
//       canvasColor: AppColors.transparent,
//       brightness: Brightness.dark,
//       fontFamily: AppTextStyles.fontFamily,
//       primaryColor: AppColors.getMaterialColorFromColor(AppColors.primary),
//       scaffoldBackgroundColor: AppColors.primary,
//       textTheme: TextThemes.darkTextTheme,
//       primaryTextTheme: TextThemes.primaryTextTheme,
//       appBarTheme: AppBarTheme(
//         titleTextStyle: TextThemes.darkTextTheme.titleLarge,
//         actionsIconTheme: const IconThemeData(
//           color: AppColors.accent,
//         ),
//         iconTheme: const IconThemeData(
//           color: AppColors.accent, //change your color here
//         ),
//         elevation: 0,
//         backgroundColor: AppColors.primary,
//       ),
//       navigationRailTheme: NavigationRailThemeData(
//         backgroundColor: AppColors.primary,
//         useIndicator: true,
//         indicatorColor: AppColors.transparent,
//         labelType: NavigationRailLabelType.all,
//         selectedLabelTextStyle:
//             AppTextStyles.subtitleSm.copyWith(color: AppColors.accent),
//         unselectedLabelTextStyle:
//             AppTextStyles.subtitleSm.copyWith(color: AppColors.white20),
//         selectedIconTheme: const IconThemeData(
//           color: AppColors.accent,
//         ),
//         unselectedIconTheme: IconThemeData(
//           color: AppColors.white20,
//         ),
//       ),
//       bottomNavigationBarTheme: BottomNavigationBarThemeData(
//         backgroundColor: AppColors.primary,
//         selectedItemColor: AppColors.accent,
//         unselectedItemColor: AppColors.white20,
//       ),
//       elevatedButtonTheme: ElevatedButtonThemeData(
//         style: ElevatedButton.styleFrom(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(26.0),
//           ),
//           backgroundColor: AppColors.accent,
//           foregroundColor: AppColors.black,
//           disabledBackgroundColor: AppColors.accent,
//           disabledForegroundColor: AppColors.black,
//           textStyle: AppTextStyles.h4,
//           visualDensity: VisualDensity.compact,
//         ),
//       ),
//       textButtonTheme: TextButtonThemeData(
//         style: ElevatedButton.styleFrom(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(26.0),
//           ),
//           backgroundColor: AppColors.accent,
//           textStyle: AppTextStyles.h4,
//         ),
//       ),
//       inputDecorationTheme: InputDecorationTheme(
//         errorStyle: AppTextStyles.subtitle.copyWith(color: AppColors.primary),
//         filled: true,
//         fillColor: AppColors.secondary,
//         border: OutlineInputBorder(
//           borderSide: BorderSide(color: AppColors.white6),
//           borderRadius: BorderRadius.circular(4.0),
//         ),
//         enabledBorder: OutlineInputBorder(
//           borderSide: BorderSide(color: AppColors.white6),
//           borderRadius: BorderRadius.circular(4.0),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderSide: const BorderSide(color: AppColors.accent),
//           borderRadius: BorderRadius.circular(4.0),
//         ),
//         floatingLabelStyle:
//             WidgetStateTextStyle.resolveWith((Set<WidgetState> states) {
//           final Color color = states.contains(WidgetState.focused)
//               ? AppColors.accent
//               : AppColors.white50;
//           return TextStyle(color: color);
//         }),
//         labelStyle: AppTextStyles.subtitleLg.copyWith(color: AppColors.white50),
//         suffixIconColor: AppColors.accent,
//       ),
//       iconTheme: const IconThemeData(
//         color: AppColors.accent,
//       ),
//       disabledColor: AppColors.white20,
//       expansionTileTheme: const ExpansionTileThemeData(
//         collapsedIconColor: AppColors.accent,
//         iconColor: AppColors.accent,
//         textColor: AppColors.white,
//       ),
//       dialogTheme: DialogTheme(
//         titleTextStyle: AppTextStyles.h2.copyWith(color: AppColors.white),
//         contentTextStyle: AppTextStyles.h4.copyWith(color: AppColors.white),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10.0),
//         ),
//         backgroundColor: AppColors.secondary,
//       ),
//       checkboxTheme: CheckboxThemeData(
//         shape: const CircleBorder(),
//         checkColor: WidgetStateProperty.all(AppColors.black),
//         fillColor: WidgetStateProperty.all(
//           AppColors.accent,
//         ),
//         side: BorderSide(color: AppColors.white20),
//       ),
//       colorScheme: const ColorScheme.dark(
//         primary: AppColors.primary,
//         secondary: AppColors.accent,
//         surface: AppColors.primary,
//       ).copyWith(surface: AppColors.black),
//     );
//   }

//   static ThemeData get lightTheme {
//     return ThemeData(
//       brightness: Brightness.light,
//       primaryColor: AppColors.getMaterialColorFromColor(AppColors.primary),
//       textTheme: TextThemes.lightTextTheme,
//       primaryTextTheme: TextThemes.primaryTextTheme,
//       colorScheme: const ColorScheme.light(
//         primary: AppColors.primary,
//         secondary: AppColors.secondary,
//       ),
//       appBarTheme: AppBarTheme(
//         titleTextStyle: TextThemes.lightTextTheme.titleLarge,
//         actionsIconTheme: const IconThemeData(
//           color: AppColors.black,
//         ),
//         elevation: 0,
//         backgroundColor: AppColors.white,
//       ),
//     );
//   }
// }

// class TextThemes {
//   static TextTheme get textTheme {
//     return TextTheme(
//       bodyLarge: AppTextStyles.bodyLg,
//       bodyMedium: AppTextStyles.body,
//       titleLarge: AppTextStyles.subtitleLg,
//       titleMedium: AppTextStyles.subtitle,
//       titleSmall: AppTextStyles.subtitleSm,
//       displayLarge: AppTextStyles.h1,
//       displayMedium: AppTextStyles.h2,
//       displaySmall: AppTextStyles.h3,
//       headlineMedium: AppTextStyles.h4,
//       headlineSmall: AppTextStyles.h5,
//     );
//   }
// }

//   static TextTheme get darkTextTheme {
//     return TextTheme(
//       bodyLarge: AppTextStyles.bodyLg.copyWith(color: AppColors.white),
//       bodyMedium: AppTextStyles.body.copyWith(color: AppColors.white),
//       titleLarge: AppTextStyles.subtitleLg.copyWith(color: AppColors.white),
//       titleMedium: AppTextStyles.subtitle.copyWith(color: AppColors.white),
//       titleSmall: AppTextStyles.subtitleSm.copyWith(color: AppColors.white),
//       displayLarge: AppTextStyles.h1.copyWith(color: AppColors.white),
//       displayMedium: AppTextStyles.h2.copyWith(color: AppColors.white),
//       displaySmall: AppTextStyles.h3.copyWith(color: AppColors.white),
//       headlineMedium: AppTextStyles.h4.copyWith(color: AppColors.white),
//       headlineSmall: AppTextStyles.h5.copyWith(color: AppColors.white),
//     );
//   }

//   static TextTheme get lightTextTheme {
//     return TextTheme(
//       bodyLarge: AppTextStyles.bodyLg.copyWith(color: AppColors.black),
//       bodyMedium: AppTextStyles.body.copyWith(color: AppColors.black),
//       titleLarge: AppTextStyles.subtitleLg.copyWith(color: AppColors.black),
//       titleMedium: AppTextStyles.subtitle.copyWith(color: AppColors.black),
//       titleSmall: AppTextStyles.subtitleSm.copyWith(color: AppColors.black),
//       displayLarge: AppTextStyles.h1.copyWith(color: AppColors.black),
//       displayMedium: AppTextStyles.h2.copyWith(color: AppColors.black),
//       displaySmall: AppTextStyles.h3.copyWith(color: AppColors.black),
//       headlineMedium: AppTextStyles.h4.copyWith(color: AppColors.black),
//       headlineSmall: AppTextStyles.h5.copyWith(color: AppColors.black),
//     );
//   }

//   static TextTheme get primaryTextTheme {
//     return TextTheme(
//       bodyLarge: AppTextStyles.bodyLg.copyWith(color: AppColors.white),
//       bodyMedium: AppTextStyles.body.copyWith(color: AppColors.white),
//       titleLarge: AppTextStyles.subtitleLg.copyWith(color: AppColors.white),
//       titleMedium: AppTextStyles.subtitle.copyWith(color: AppColors.white),
//       titleSmall: AppTextStyles.subtitleSm.copyWith(color: AppColors.white),
//       displayLarge: AppTextStyles.h1.copyWith(color: AppColors.white),
//       displayMedium: AppTextStyles.h2.copyWith(color: AppColors.white),
//       displaySmall: AppTextStyles.h3.copyWith(color: AppColors.white),
//       headlineMedium: AppTextStyles.h4.copyWith(color: AppColors.white),
//       headlineSmall: AppTextStyles.h5.copyWith(color: AppColors.white),
//     );
//   }
// }
