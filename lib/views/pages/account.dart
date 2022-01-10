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
            padding: const EdgeInsets.only(top: 10),
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
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                Color(0xFF263238),
                                Color(0xFF263238),
                              ])),
                          child: Container(
                              width: double.infinity,
                              child: Center(
                                  child: Column(
                                children: <Widget>[
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                  const Text(
                                    "My Account",
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 40.0,
                                  ),
                                  CircleAvatar(
                                    child: Image.asset(
                                        'assets/images/CalowrieLogos.png'),
                                    radius: 100.0,
                                  ),
                                  const SizedBox(
                                    height: 40.0,
                                  ),
                                  const Text(
                                    "Name :",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Text(
                                    users.name,
                                    style: const TextStyle(
                                      fontSize: 22.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  const Divider(
                                    height: 1,
                                    thickness: 2,
                                    indent: 16,
                                    endIndent: 16,
                                    color: Color(0xFF212121),
                                  ),
                                  const SizedBox(
                                    height: 80,
                                  ),
                                  const Text(
                                    "Email :",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Text(
                                    users.email,
                                    style: const TextStyle(
                                      fontSize: 20.0,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white,
                                      letterSpacing: 2.0,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  const Divider(
                                    height: 1,
                                    thickness: 2,
                                    indent: 16,
                                    endIndent: 16,
                                    color: Color(0xFF212121),
                                  ),
                                  // SizedBox(
                                  //   height: 50,
                                  // ),
                                  // Text(
                                  //   "Created At :",
                                  //   style: TextStyle(
                                  //     color: Colors.grey,
                                  //     fontStyle: FontStyle.normal,
                                  //     fontSize: 18.0,
                                  //     fontWeight: FontWeight.normal,
                                  //   ),
                                  // ),
                                  // Text(
                                  //   users.createdAt,
                                  //   style: TextStyle(
                                  //     fontSize: 20.0,
                                  //     fontStyle: FontStyle.italic,
                                  //     fontWeight: FontWeight.w300,
                                  //     color: Colors.white,
                                  //     letterSpacing: 2.0,
                                  //   ),
                                  // ),
                                  const SizedBox(
                                    height: 150,
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
                                  ),
                                  const SizedBox(
                                    height: 60,
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
