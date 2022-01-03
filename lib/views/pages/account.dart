part of 'pages.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // key: scaffoldKey,
        backgroundColor: const Color(0xFF262D34),
        body: SingleChildScrollView(
          child: Column(mainAxisSize: MainAxisSize.max, children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                color: const Color(0xFF4B39EF),
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/images/food.jpeg',
                      width: 90,
                      height: 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                              child: Text(
                                '[User Name]',
                                style: TextStyle(
                                    fontFamily: 'Lexend Deca',
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                              child: Text(
                                'User.name@domainname.com',
                                style: TextStyle(
                                    fontFamily: 'Lexend Deca',
                                    fontSize: 14,
                                    color: Color(0xFF95A1AC),
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              height: 1,
              thickness: 2,
              indent: 16,
              endIndent: 16,
              color: Color(0x250D9BF1),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 12),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: const [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(24, 4, 0, 8),
                        child: Text(
                          'User Bio',
                          style: TextStyle(
                              fontFamily: 'Lexend Deca',
                              fontSize: 14,
                              color: Color(0xFF95A1AC),
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: const [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                          child: Text(
                            'TEXT',
                            style: TextStyle(
                                fontFamily: 'Lexend Deca',
                                fontSize: 14,
                                color: Color(0xFF95A1AC),
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 12),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: const [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(24, 4, 0, 8),
                        child: Text(
                          'Height',
                          style: TextStyle(
                              fontFamily: 'Lexend Deca',
                              fontSize: 14,
                              color: Color(0xFF95A1AC),
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: const [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                          child: Text(
                            '178cm',
                            style: TextStyle(
                                fontFamily: 'Lexend Deca',
                                fontSize: 14,
                                color: Color(0xFF95A1AC),
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 12),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: const [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(24, 4, 0, 8),
                        child: Text(
                          'Weight',
                          style: TextStyle(
                              fontFamily: 'Lexend Deca',
                              fontSize: 14,
                              color: Color(0xFF95A1AC),
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: const [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                          child: Text(
                            '78 kg',
                            style: TextStyle(
                                fontFamily: 'Lexend Deca',
                                fontSize: 14,
                                color: Color(0xFF95A1AC),
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16, 80, 16, 12),
              child: ElevatedButton.icon(
                  onPressed: () async {
                    setState(() {
                      isLoading = true;
                    });
                    await AuthServices.signOut().then((value) {
                      if (value) {
                        setState(() {
                          isLoading = false;
                        });
                        AcitivityServices.showToast(
                            "Logout success", Colors.greenAccent);
                        Navigator.pushReplacementNamed(
                            context, Login.routeName);
                      } else {
                        setState(() {
                          isLoading = false;
                        });
                        AcitivityServices.showToast(
                            "Logout Failed", Colors.redAccent);
                      }
                    });
                  },
                  icon: const Icon(Icons.logout),
                  label: const Text("Logout"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey[400],
                    elevation: 0,
                  )),
            ),
            isLoading == true ? AcitivityServices.loadings() : Container()
          ]),
        ));
  }
}