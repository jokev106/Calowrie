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
        backgroundColor: const Color(0xFF1E2429),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 120),
                child: Image.asset(
                  'assets/images/CalowrieLogos.png',
                  width: 140,
                  height: 140,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                child: ElevatedButton.icon(
                  onPressed: () async {},
                  label: const Text(
                    'Login',
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
                  icon: const Icon(
                    Icons.login_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
              ElevatedButton.icon(
                onPressed: () async {},
                label: const Text(
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
                icon: const Icon(
                  Icons.login_rounded,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ));
  }
}
