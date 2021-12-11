part of 'pages.dart';

<<<<<<< HEAD
class CookDetailPageWidget extends StatefulWidget {
  CookDetailPageWidget({Key key}) : super(key: key);

  @override
  _CookDetailPageWidgetState createState() => _CookDetailPageWidgetState();
}

class _CookDetailPageWidgetState extends State<CookDetailPageWidget> {
=======
// import '../flutter_flow/flutter_flow_theme.dart';
// import '../flutter_flow/flutter_flow_util.dart';
// import '../menu_detail_page/menu_detail_page_widget.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class CookDetail extends StatefulWidget {
  const CookDetail({Key? key}) : super(key: key);
  static const String routeName = "/cookDetail";
  @override
  _CookDetailState createState() => _CookDetailState();
}

class _CookDetailState extends State<CookDetail> {
>>>>>>> 1993dd22f9dc8c11794f91976cf586ae4f8f6096
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        leading: InkWell(
          onTap: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MenuDetailPageWidget(),
              ),
            );
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 24,
          ),
        ),
        title: Text(
          'How to Cook',
          style: FlutterFlowTheme.title1,
        ),
        actions: [],
        centerTitle: true,
      ),
      backgroundColor: Color(0xFFF1F4F8),
=======
      // key: scaffoldKey,
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   automaticallyImplyLeading: true,
      //   leading: InkWell(
      //     onTap: () async {
      //       await Navigator.push(
      //         context,
      //         MaterialPageRoute(
      //           builder: (context) => const MenuDetail(),
      //         ),
      //       );
      //     },
      //     child: const Icon(
      //       Icons.arrow_back,
      //       color: Colors.black,
      //       size: 24,
      //     ),
      //   ),
      //   title: Text(
      //     'How to Cook',
      //     style: FlutterFlowTheme.title1,
      //   ),
      //   actions: [],
      //   centerTitle: true,
      // ),
      backgroundColor: const Color(0xFFF1F4F8),
>>>>>>> 1993dd22f9dc8c11794f91976cf586ae4f8f6096
      body: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Padding(
<<<<<<< HEAD
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
=======
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
>>>>>>> 1993dd22f9dc8c11794f91976cf586ae4f8f6096
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
<<<<<<< HEAD
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
=======
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0, 10, 0, 10),
>>>>>>> 1993dd22f9dc8c11794f91976cf586ae4f8f6096
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 90,
<<<<<<< HEAD
                                decoration: BoxDecoration(
=======
                                decoration: const BoxDecoration(
>>>>>>> 1993dd22f9dc8c11794f91976cf586ae4f8f6096
                                  color: Colors.white,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
<<<<<<< HEAD
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8, 8, 8, 8),
=======
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(8, 8, 8, 8),
>>>>>>> 1993dd22f9dc8c11794f91976cf586ae4f8f6096
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.asset(
<<<<<<< HEAD
                                              'assets/images/imageList@2x.png',
=======
                                              'assets/images/food.jpeg',
>>>>>>> 1993dd22f9dc8c11794f91976cf586ae4f8f6096
                                              width: 74,
                                              height: 74,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Expanded(
                                      child: Padding(
<<<<<<< HEAD
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8, 1, 0, 0),
=======
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(8, 1, 0, 0),
>>>>>>> 1993dd22f9dc8c11794f91976cf586ae4f8f6096
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
<<<<<<< HEAD
                                              children: [
                                                Text(
                                                  'First, ......',
                                                  style: FlutterFlowTheme
                                                      .subtitle1
                                                      .override(
                                                    fontFamily: 'Lexend Deca',
                                                    color: Color(0xFF15212B),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 90,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8, 8, 8, 8),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.asset(
                                              'assets/images/imageList@2x.png',
                                              width: 74,
                                              height: 74,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8, 1, 0, 0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  'Second, ......',
                                                  style: FlutterFlowTheme
                                                      .subtitle1
                                                      .override(
=======
                                              children: const [
                                                Text(
                                                  'First, ......',
                                                  style: TextStyle(
>>>>>>> 1993dd22f9dc8c11794f91976cf586ae4f8f6096
                                                    fontFamily: 'Lexend Deca',
                                                    color: Color(0xFF15212B),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
<<<<<<< HEAD
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
=======
                        // Padding(
                        //   padding: const EdgeInsetsDirectional.fromSTEB(
                        //       0, 10, 0, 10),
                        //   child: Row(
                        //     mainAxisSize: MainAxisSize.max,
                        //     children: [
                        //       Container(
                        //         width: MediaQuery.of(context).size.width,
                        //         height: 90,
                        //         decoration: const BoxDecoration(
                        //           color: Colors.white,
                        //         ),
                        //         child: Row(
                        //           mainAxisSize: MainAxisSize.max,
                        //           children: [
                        //             Column(
                        //               mainAxisSize: MainAxisSize.max,
                        //               children: [
                        //                 Padding(
                        //                   padding: const EdgeInsetsDirectional
                        //                       .fromSTEB(8, 8, 8, 8),
                        //                   child: ClipRRect(
                        //                     borderRadius:
                        //                         BorderRadius.circular(8),
                        //                     child: Image.asset(
                        //                       'assets/images/imageList@2x.png',
                        //                       width: 74,
                        //                       height: 74,
                        //                       fit: BoxFit.cover,
                        //                     ),
                        //                   ),
                        //                 )
                        //               ],
                        //             ),
                        //             Expanded(
                        //               child: Padding(
                        //                 padding: const EdgeInsetsDirectional
                        //                     .fromSTEB(8, 1, 0, 0),
                        //                 child: Column(
                        //                   mainAxisSize: MainAxisSize.max,
                        //                   mainAxisAlignment:
                        //                       MainAxisAlignment.center,
                        //                   children: [
                        //                     Row(
                        //                       mainAxisSize: MainAxisSize.max,
                        //                       children: const [
                        //                         Text(
                        //                           'Second, ......',
                        //                           style: TextStyle(
                        //                             fontFamily: 'Lexend Deca',
                        //                             color: Color(0xFF15212B),
                        //                             fontSize: 18,
                        //                             fontWeight: FontWeight.w500,
                        //                           ),
                        //                         )
                        //                       ],
                        //                     )
                        //                   ],
                        //                 ),
                        //               ),
                        //             )
                        //           ],
                        //         ),
                        //       )
                        //     ],
                        //   ),
                        // ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0, 10, 0, 10),
>>>>>>> 1993dd22f9dc8c11794f91976cf586ae4f8f6096
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 90,
<<<<<<< HEAD
                                decoration: BoxDecoration(
=======
                                decoration: const BoxDecoration(
>>>>>>> 1993dd22f9dc8c11794f91976cf586ae4f8f6096
                                  color: Colors.white,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
<<<<<<< HEAD
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8, 8, 8, 8),
=======
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(8, 8, 8, 8),
>>>>>>> 1993dd22f9dc8c11794f91976cf586ae4f8f6096
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.asset(
<<<<<<< HEAD
                                              'assets/images/imageList@2x.png',
=======
                                              'assets/images/food.jpeg',
>>>>>>> 1993dd22f9dc8c11794f91976cf586ae4f8f6096
                                              width: 74,
                                              height: 74,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Expanded(
                                      child: Padding(
<<<<<<< HEAD
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8, 1, 0, 0),
=======
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(8, 1, 0, 0),
>>>>>>> 1993dd22f9dc8c11794f91976cf586ae4f8f6096
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
<<<<<<< HEAD
                                              children: [
                                                Text(
                                                  'Next step is .....',
                                                  style: FlutterFlowTheme
                                                      .subtitle1
                                                      .override(
=======
                                              children: const [
                                                Text(
                                                  'Next step is .....',
                                                  style: TextStyle(
>>>>>>> 1993dd22f9dc8c11794f91976cf586ae4f8f6096
                                                    fontFamily: 'Lexend Deca',
                                                    color: Color(0xFF15212B),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
<<<<<<< HEAD
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
=======
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0, 10, 0, 10),
>>>>>>> 1993dd22f9dc8c11794f91976cf586ae4f8f6096
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 90,
<<<<<<< HEAD
                                decoration: BoxDecoration(
=======
                                decoration: const BoxDecoration(
>>>>>>> 1993dd22f9dc8c11794f91976cf586ae4f8f6096
                                  color: Colors.white,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
<<<<<<< HEAD
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8, 8, 8, 8),
=======
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(8, 8, 8, 8),
>>>>>>> 1993dd22f9dc8c11794f91976cf586ae4f8f6096
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.asset(
<<<<<<< HEAD
                                              'assets/images/imageList@2x.png',
=======
                                              'assets/images/food.jpeg',
>>>>>>> 1993dd22f9dc8c11794f91976cf586ae4f8f6096
                                              width: 74,
                                              height: 74,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Expanded(
                                      child: Padding(
<<<<<<< HEAD
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8, 1, 0, 0),
=======
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(8, 1, 0, 0),
>>>>>>> 1993dd22f9dc8c11794f91976cf586ae4f8f6096
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
<<<<<<< HEAD
                                              children: [
                                                Text(
                                                  'Then .....',
                                                  style: FlutterFlowTheme
                                                      .subtitle1
                                                      .override(
=======
                                              children: const [
                                                Text(
                                                  'Then .....',
                                                  style: TextStyle(
>>>>>>> 1993dd22f9dc8c11794f91976cf586ae4f8f6096
                                                    fontFamily: 'Lexend Deca',
                                                    color: Color(0xFF15212B),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
<<<<<<< HEAD
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
=======
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0, 10, 0, 10),
>>>>>>> 1993dd22f9dc8c11794f91976cf586ae4f8f6096
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 90,
<<<<<<< HEAD
                                decoration: BoxDecoration(
=======
                                decoration: const BoxDecoration(
>>>>>>> 1993dd22f9dc8c11794f91976cf586ae4f8f6096
                                  color: Colors.white,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
<<<<<<< HEAD
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8, 8, 8, 8),
=======
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(8, 8, 8, 8),
>>>>>>> 1993dd22f9dc8c11794f91976cf586ae4f8f6096
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.asset(
<<<<<<< HEAD
                                              'assets/images/imageList@2x.png',
=======
                                              'assets/images/food.jpeg',
>>>>>>> 1993dd22f9dc8c11794f91976cf586ae4f8f6096
                                              width: 74,
                                              height: 74,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Expanded(
                                      child: Padding(
<<<<<<< HEAD
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8, 1, 0, 0),
=======
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(8, 1, 0, 0),
>>>>>>> 1993dd22f9dc8c11794f91976cf586ae4f8f6096
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
<<<<<<< HEAD
                                              children: [
                                                Text(
                                                  'Finally ....',
                                                  style: FlutterFlowTheme
                                                      .subtitle1
                                                      .override(
=======
                                              children: const [
                                                Text(
                                                  'Finally ....',
                                                  style: TextStyle(
>>>>>>> 1993dd22f9dc8c11794f91976cf586ae4f8f6096
                                                    fontFamily: 'Lexend Deca',
                                                    color: Color(0xFF15212B),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
