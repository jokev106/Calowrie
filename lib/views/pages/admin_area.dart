part of 'pages.dart';

class AdminArea extends StatefulWidget {
  const AdminArea({Key? key}) : super(key: key);
  static const String routeName = "/adminArea";

  @override
  _AdminAreaState createState() => _AdminAreaState();
}

class _AdminAreaState extends State<AdminArea> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B1B1B),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 184,
                        decoration: BoxDecoration(
                          color: const Color(0xFF090F13),
                          image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: Image.asset(
                              'assets/images/food.jpeg',
                            ).image,
                          ),
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 3,
                              color: Color(0x33000000),
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: const Color(0x65090F13),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16, 16, 16, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: const [
                                    Expanded(
                                      child: Text(
                                        'Add new menu',
                                        style: TextStyle(
                                          fontFamily: 'Lexend Deca',
                                          color: Colors.white,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16, 4, 16, 16),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      ElevatedButton.icon(
                                        onPressed: (){
                                          Navigator.pushNamed(context, AdminCreateMenu.routeName);
                                        },
                                        label: const Text(
                                          "Click",
                                          style: TextStyle(
                                            fontFamily: 'Lexend Duca',
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          primary: const Color(0xFF39d2c0),
                                          elevation: 3,
                                          minimumSize: const Size(130, 60),
                                          side: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                        ),
                                        icon: const Icon(
                                          Icons.add_rounded,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 184,
                        decoration: BoxDecoration(
                          color: const Color(0xFF090F13),
                          image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: Image.asset(
                              'assets/images/food.jpeg',
                            ).image,
                          ),
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 3,
                              color: Color(0x33000000),
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: const Color(0x65090F13),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16, 16, 16, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: const [
                                    Expanded(
                                      child: Text(
                                        'List menu',
                                        style: TextStyle(
                                          fontFamily: 'Lexend Deca',
                                          color: Colors.white,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16, 4, 16, 16),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      ElevatedButton.icon(
                                        onPressed: (){
                                          Navigator.pushNamed(context, AdminListMenu.routeName);
                                        },
                                        label: const Text(
                                          "Click",
                                          style: TextStyle(
                                            fontFamily: 'Lexend Duca',
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          primary: const Color(0xFF39d2c0),
                                          elevation: 3,
                                          minimumSize: const Size(130, 60),
                                          side: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                        ),
                                        icon: const Icon(
                                          Icons.list,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(120, 20, 0, 0),
                              child:  ElevatedButton.icon(                               
                                label: const Text("Logout",
                                style: TextStyle(
                                    fontFamily: 'Lexend Duca',
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                style:  ElevatedButton.styleFrom(
                                  primary: const Color(0xFFe03437),                                 
                                  elevation: 3,
                                  minimumSize: const Size(130, 60),
                                  side: const BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),                               
                                icon: const Icon(
                                  Icons.login_rounded,
                                  color: Colors.white,
                                  ),                               
                                onPressed: (){},
                              ),
                              ),
                          ],
                        ),
                        ),
                    // Padding(
                    //   padding: EdgeInsetsDirectional.fromSTEB(0, 60, 0, 0),
                    //   child: FFButtonWidget(
                    //     onPressed: () async {
                    //       setState(() => _loadingButton3 = true);
                    //       try {
                    //         await Navigator.push(
                    //           context,
                    //           MaterialPageRoute(
                    //             builder: (context) => SplashPageWidget(),
                    //           ),
                    //         );
                    //       } finally {
                    //         setState(() => _loadingButton3 = false);
                    //       }
                    //     },
                    //     text: 'Logout',
                    //     options: FFButtonOptions(
                    //       width: 130,
                    //       height: 40,
                    //       color: Color(0xFFE03437),
                    //       textStyle: FlutterFlowTheme.subtitle2.override(
                    //         fontFamily: 'Poppins',
                    //         color: Colors.white,
                    //       ),
                    //       borderSide: BorderSide(
                    //         color: Colors.transparent,
                    //         width: 1,
                    //       ),
                    //       borderRadius: 12,
                    //     ),
                    //     loading: _loadingButton3,
                    //   ),
                    // )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
