part of 'pages.dart';

class AdminEditMenuPage extends StatefulWidget {
  const AdminEditMenuPage({Key? key}) : super(key: key);
  static const String routeName = "/editmenuadmin";

  

  @override
  _AdminEditMenuPageState createState() => _AdminEditMenuPageState();
}

class _AdminEditMenuPageState extends State<AdminEditMenuPage> {
  // final _formKey = GlobalKey<FormBuilderState>();
  String uploadedFileUrl = '';
  // Menus menus = ModalRoute.of(context).settings.arguments;
  final ctrlName = TextEditingController();
  final ctrlCalorie = TextEditingController();
  final ctrlTime = TextEditingController();
  final ctrlType = TextEditingController();
  final ctrlBahan = TextEditingController();
  final ctrlStep = TextEditingController();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final menus = ModalRoute.of(context)!.settings.arguments as Menus;
    // final ctrlName = TextEditingController(text: menus.name);
    // final textController2 = TextEditingController(text: menus.calorie);
    // final textController3 = TextEditingController(text: menus.time);
    // final textController4 = TextEditingController(text: menus.type);
    // final textController5 = TextEditingController(text: menus.ingredients);
    // final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 8, 0, 12),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.94,
                    decoration: const BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: TextFormField(
                                  controller: ctrlName,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: 'Name',
                                    hintStyle: const TextStyle(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF8B97A2),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            20, 32, 20, 12),
                                  ),
                                  style: const TextStyle(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF090F13),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                  textAlign: TextAlign.start,
                                  maxLines: 4,
                                  keyboardType: TextInputType.name,
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: TextFormField(
                                  controller: ctrlCalorie,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: 'Total Calorie',
                                    hintStyle: const TextStyle(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF8B97A2),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            20, 32, 20, 12),
                                  ),
                                  style: const TextStyle(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF090F13),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                  textAlign: TextAlign.start,
                                  maxLines: 4,
                                  keyboardType: TextInputType.name,
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: TextFormField(
                                  controller: ctrlTime,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: 'Time',
                                    hintStyle: const TextStyle(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF8B97A2),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            20, 32, 20, 12),
                                  ),
                                  style: const TextStyle(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF090F13),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                  textAlign: TextAlign.start,
                                  maxLines: 4,
                                  keyboardType: TextInputType.name,
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: TextFormField(
                                  controller: ctrlType,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: 'Type',
                                    hintStyle: const TextStyle(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF8B97A2),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            20, 32, 20, 12),
                                  ),
                                  style: const TextStyle(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF090F13),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                  textAlign: TextAlign.start,
                                  maxLines: 4,
                                  keyboardType: TextInputType.name,
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: TextFormField(
                                  controller: ctrlBahan,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: 'Ingredients',
                                    hintStyle: const TextStyle(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF8B97A2),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            20, 32, 20, 12),
                                  ),
                                  style: const TextStyle(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF090F13),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                  textAlign: TextAlign.start,
                                  maxLines: 4,
                                  keyboardType: TextInputType.name,
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: TextFormField(
                                  controller: ctrlStep,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: 'steps',
                                    hintStyle: const TextStyle(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF8B97A2),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            20, 32, 20, 12),
                                  ),
                                  style: const TextStyle(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF090F13),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                  textAlign: TextAlign.start,
                                  maxLines: 4,
                                  keyboardType: TextInputType.name,
                                ),
                              )
                            ],
                          ),
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: const Color(0xffd09484),
                              padding: const EdgeInsets.fromLTRB(20, 1, 20, 1),
                              primary: Colors.black,
                              textStyle: const TextStyle(fontSize: 16),
                            ),
                            child: const Text('Post'),
                            onPressed: () async {
                              Menus menus = Menus(
                                  "",
                                  ctrlName.text,
                                  ctrlCalorie.text,
                                  ctrlTime.text,
                                  ctrlType.text,
                                  ctrlBahan.text,
                                  ctrlStep.text,
                                  "",
                                  "",
                                  "");
                              await AdminServices.editMenu(menus).then((value) {
                                if (value == true) {
                                  AcitivityServices.showToast(
                                      "update Barang Berhasil!", Colors.green);
                                  Navigator.pushReplacementNamed(
                                      context, AdminArea.routeName);
                                  setState(() {
                                    isLoading = false;
                                  });
                                } else {
                                  AcitivityServices.showToast(
                                      "Simpan Barang Gagal!", Colors.red);
                                }
                              });
                            })
                        // Padding(
                        //   padding: const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                        //   child: Container(
                        //     width: MediaQuery.of(context).size.width * 0.96,
                        //     height: 350,
                        //     decoration: BoxDecoration(
                        //       color: const Color(0xFFF1F5F8),
                        //       image: DecorationImage(
                        //         fit: BoxFit.cover,
                        //         image: Image.asset(
                        //           'assets/images/emptyState@2x.png',
                        //         ).image,
                        //       ),
                        //       boxShadow: const [
                        //         BoxShadow(
                        //           blurRadius: 6,
                        //           color: Color(0x3A000000),
                        //           offset: Offset(0, 2),
                        //         )
                        //       ],
                        //       borderRadius: BorderRadius.circular(8),
                        //     ),
                        //   ),
                        // )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
