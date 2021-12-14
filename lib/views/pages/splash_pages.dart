part of 'pages.dart';

class SplashPageWidget extends StatefulWidget {
  const SplashPageWidget({Key? key}) : super(key: key);
  static const String routeName = "/splashpage";

  @override
  _SplashPageWidgetState createState() => _SplashPageWidgetState();
}

class _SplashPageWidgetState extends State<SplashPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFF6c757d),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 75),
                child: Image.asset(
                  'assets/images/CalowrieLogos.png',
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                child: ElevatedButton(
                  onPressed: () async {
                    Navigator.pushReplacementNamed(context, Login.routeName);
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xFF1B1B1B),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFFFFFFFF),
                    elevation: 3,
                    minimumSize: const Size(130, 40),
                    side: const BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                   Navigator.pushReplacementNamed(context, Register.routeName);
                },
                child: const Text(
                  'Register',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF1B1B1B),
                  elevation: 3,
                  minimumSize: const Size(130, 40),
                  side: const BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
