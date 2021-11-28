part of 'shared.dart';

class MyTheme {
  static ThemeData myTheme() {
    return ThemeData(
      primarySwatch: Colors.grey,
      backgroundColor:const Color(0xFFFFFFFF),
      scaffoldBackgroundColor: const Color(0xFFf4f4f4),
      primaryColor: const Color(0xff1B1B1B),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      brightness: Brightness.light,
      fontFamily: GoogleFonts.rubik().fontFamily,
    );
  }
}
