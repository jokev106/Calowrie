part of 'pages.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({Key? key}) : super(key: key);
  static const String routeName = "/myaccount";
  @override
  _MyAccountState createState() => _MyAccountState();
}

bool isLoading = false;
//
String uid = FirebaseAuth.instance.currentUser!.uid;
CollectionReference userCollection =
    FirebaseFirestore.instance.collection("users");

//
class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(top: 20),
            child: StreamBuilder<QuerySnapshot>(
              stream: userCollection.where('uid', isEqualTo: uid).snapshots(),
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return AcitivityServices.loadings();
                }

                return ListView(
                  children: snapshot.data!.docs.map((DocumentSnapshot doc) {
                    Users users;
                    users = Users(
                      doc['uid'],
                      doc['name'],
                      doc['email'],
                      doc['password'],
                      doc['createdAt'],
                      doc['updateAt'],
                    );

                    return Column(children: [
                      Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                Color(0xFF303030),
                                Color(0xFF212121),
                              ])),
                          child: Container(
                              width: double.infinity,
                              child: Center(
                                  child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  CircleAvatar(
                                    backgroundImage: NetworkImage(
                                      "TES.jpg",
                                    ),
                                    radius: 80.0,
                                  ),
                                  SizedBox(
                                    height: 40.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 8, 0, 0),
                                    child: Text(
                                      users.name,
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Divider(
                                    height: 1,
                                    thickness: 2,
                                    indent: 16,
                                    endIndent: 16,
                                    color: Color(0x250D9BF1),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24, 4, 0, 8),
                                    child: Text(
                                      "Email :",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24, 0, 24, 0),
                                      child: Text(
                                        users.email,
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Card(
                                    child: ListTile(
                                      title: Text("Payment"),
                                    ),
                                    elevation: 8,
                                    shadowColor: Colors.grey,
                                    margin: EdgeInsets.all(20),
                                  ),
                                  Container(
                                    alignment: Alignment.bottomCenter,
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 30, 0, 0),
                                    child: ElevatedButton.icon(
                                      label: const Text(
                                        "Logout",
                                        style: TextStyle(
                                          fontFamily: 'Lexend Duca',
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        primary: const Color(0xFFe03437),
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
                                        Icons.login_rounded,
                                        color: Colors.white,
                                      ),
                                      onPressed: () async {
                                        setState(() {
                                          isLoading = true;
                                        });
                                        await AuthServices.signOut()
                                            .then((value) {
                                          if (value) {
                                            setState(() {
                                              isLoading = false;
                                            });
                                            AcitivityServices.showToast(
                                                "Logout success",
                                                Colors.greenAccent);
                                            Navigator.pushReplacementNamed(
                                                context, Login.routeName);
                                          } else {
                                            setState(() {
                                              isLoading = false;
                                            });
                                            AcitivityServices.showToast(
                                                "Logout Failed",
                                                Colors.redAccent);
                                          }
                                        });
                                        // Navigator.pushReplacementNamed(
                                        //     context, SplashScreen.routeName);
                                      },
                                    ),
                                  )
                                ],
                              ))))
                    ]);
                  }).toList(),
                );
              },
            ),
          ),
          isLoading == true ? AcitivityServices.loadings() : Container()
        ],
      ),
    );
  }
}
