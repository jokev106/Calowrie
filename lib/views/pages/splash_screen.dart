part of 'pages.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const String routeName = "/splashscreen";
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    _loadSplash();
  }

  _loadSplash() async {
    var _duration = const Duration(seconds: 3);
    return Timer(_duration, checkAuth);
  }

  void checkAuth() async {
    // FirebaseAuth auth = FirebaseAuth.instance;
    // if (auth.currentUser != null) {
    //   Navigator.pushReplacementNamed(context, AdminListMenu.routeName);
    //   AcitivityServices.showToast("Welcome Back", Colors.blue);
    // } else {
      Navigator.pushReplacementNamed(context, AdminListMenu.routeName);
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF6c757d),
        body: Container(
          alignment: Alignment.center,
          child: Image.asset('assets/images/CalowrieLogos.png'),
        ));
  }
}
