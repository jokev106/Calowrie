part of 'pages.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  bool _loadingButton1 = false;
  bool _loadingButton2 = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 1000,
      delay: 1000,
      fadeIn: true,
    ),
    'columnOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 100,
      fadeIn: true,
    ),
    'imageOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 1100,
      fadeIn: true,
      scale: 0.4,
    ),
  };

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF1E2429),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 120),
              child: Image.asset(
                'assets/images/ff_logo_white.png',
                width: 140,
                height: 140,
                fit: BoxFit.fitHeight,
              ).animated([animationsMap['imageOnPageLoadAnimation']]),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
              child: FFButtonWidget(
                onPressed: () async {
                  setState(() => _loadingButton1 = true);
                  try {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPageWidget(),
                      ),
                    );
                  } finally {
                    setState(() => _loadingButton1 = false);
                  }
                },
                text: 'Login',
                options: FFButtonOptions(
                  width: 130,
                  height: 40,
                  color: Colors.white,
                  textStyle: FlutterFlowTheme.subtitle2.override(
                    fontFamily: 'Poppins',
                    color: Color(0xFF1B1B1B),
                  ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: 12,
                ),
                loading: _loadingButton1,
              ),
            ),
            FFButtonWidget(
              onPressed: () async {
                setState(() => _loadingButton2 = true);
                try {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegisterPageWidget(),
                    ),
                  );
                } finally {
                  setState(() => _loadingButton2 = false);
                }
              },
              text: 'Register',
              options: FFButtonOptions(
                width: 130,
                height: 40,
                color: Color(0xFF1B1B1B),
                textStyle: FlutterFlowTheme.subtitle2.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                ),
                borderSide: BorderSide(
                  color: Colors.white,
                  width: 1,
                ),
                borderRadius: 12,
              ),
              loading: _loadingButton2,
            )
          ],
        ).animated([animationsMap['columnOnPageLoadAnimation']]),
      ).animated([animationsMap['containerOnPageLoadAnimation']]),
    );
  }
}
