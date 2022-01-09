part of 'pages.dart';

class MenuDetail extends StatefulWidget {
  
  const MenuDetail({Key? key}) : super(key: key);
  static const String routeName = "/menudetail";

  @override
  _MenuDetailState createState() => _MenuDetailState();
}

CollectionReference menuCollection =
    FirebaseFirestore.instance.collection("menus");


class _MenuDetailState extends State<MenuDetail> {
   CollectionReference menuCollection = FirebaseFirestore.instance.collection("menu");
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      body:
 SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  // child:
                  // Image.network(
                  //   menus.image,
                  //   width: MediaQuery.of(context).size.width,
                  //   height: 230,
                  //   fit: BoxFit.cover,
                  // ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
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
            SizedBox(
                    width: 200.0,
                    height: 70.0,
                    child: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('menu').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView(
            children: snapshot.data!.docs.map((document) {
              return Container(
                child: Center(child: Text(document['MenuCalorie'])),
              );
            }).toList(),
          );
          }
            ),),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: const [
                  Expanded(
                    child: Text(
                      'Time :',
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
            SizedBox(
                    width: 200.0,
                    height: 70.0,
                    child: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('menu').where('MenuUid').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView(
            children: snapshot.data!.docs.map((document) {
              return Container(
                child: Center(child: Text(document['MenuTime'])),
              );
            }).toList(),
          );
          }
            ),),
            // Padding(
            //   padding: const EdgeInsetsDirectional.fromSTEB(20, 4, 20, 0),
            //   child: Row(
            //     mainAxisSize: MainAxisSize.max,
            //     children: const [
            //       Expanded(
            //         child: 
                    
            //         Padding(
            //           padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
            //           child: Text(
            //             menus.calorie,
            //             style: TextStyle(
            //               fontFamily: 'Lexend Deca',
            //               color: Color(0xFF1B1B1B),
            //               fontSize: 18,
            //               fontWeight: FontWeight.w500,
            //             ),
            //           ),
            //         ),
            //       )
            //     ],
            //   ),
            // ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
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
            SizedBox(
                    width: 200.0,
                    height: 300.0,
                    child: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('menu').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView(
            children: snapshot.data!.docs.map((document) {
              return Container(
                child: Center(child: Text(document['MenuIngredients'])),
              );
            }).toList(),
          );
          }
            ),),
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
        ])
            ));
      }
      }