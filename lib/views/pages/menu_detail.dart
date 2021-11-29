part of 'pages.dart';

class MenuDetail extends StatefulWidget {
  const MenuDetail({Key? key}) : super(key: key);
  static const String routeName = "/menudetail";

  @override
  _MenuDetailState createState() => _MenuDetailState();
}

class _MenuDetailState extends State<MenuDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: scaffoldKey,
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   automaticallyImplyLeading: false,
      //   leading: Icon(
      //     Icons.chevron_left_rounded,
      //     color: Color(0xFF1B1B1B),
      //     size: 32,
      //   ),
      //   title: Text(
      //     'Menu Details',
      //     style: FlutterFlowTheme.title2.override(
      //       fontFamily: 'Lexend Deca',
      //       color: Color(0xFF1B1B1B),
      //       fontSize: 22,
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      //   actions: [],
      //   centerTitle: false,
      //   elevation: 0,
      // ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: Image.asset(
                    'assets/images/food.jpeg',
                    width: MediaQuery.of(context).size.width,
                    height: 230,
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: const [
                  Expanded(
                    child: Text(
                      'Calories :',
                      style: TextStyle(
                        fontFamily: 'Lexend Deca',
                        color: Color(0xFF1B1B1B),
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 4, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: const [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: Text(
                        '400 Cal',
                        style: TextStyle(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF1B1B1B),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: const [
                  Expanded(
                    child: Text(
                      'Ingredients :',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Lexend Deca',
                        color: Color(0xFF1B1B1B),
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 4, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: const [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                        child: Text(
                          'Lorem Ipsum',
                          style: TextStyle(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xFF1B1B1B),
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                        child: Text(
                          'Lorem Ipsum',
                          style: TextStyle(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xFF1B1B1B),
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                        child: Text(
                          'Lorem Ipsum',
                          style: TextStyle(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xFF1B1B1B),
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                        child: Text(
                          'Lorem Ipsum',
                          style: TextStyle(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xFF1B1B1B),
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                        child: Text(
                          'Lorem Ipsum',
                          style: TextStyle(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xFF1B1B1B),
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(140, 20, 0, 0),
                    child: ElevatedButton.icon(
                      label: const Text(
                        "Cook",
                        style: TextStyle(
                          fontFamily: 'Lexend Duca',
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF090F13),
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
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
