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
                                Color(0xFF37474F),
                                Color(0xFF263238),
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
                                      "https://thesmokingcuban.com/wp-content/uploads/getty-images/2017/07/1193632471.jpeg",
                                    ),
                                    radius: 80.0,
                                  ),
                                  SizedBox(
                                    height: 40.0,
                                  ),
                                  Text(
                                    users.name,
                                    style: TextStyle(
                                      fontSize: 22.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "Email :",
                                    style: TextStyle(
                                        color: Colors.redAccent,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 22.0),
                                  ),
                                  Text(
                                    users.email,
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white,
                                      letterSpacing: 2.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Created At :",
                                    style: TextStyle(
                                        color: Colors.redAccent,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 18.0),
                                  ),
                                  Text(
                                    users.createdAt,
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white,
                                      letterSpacing: 2.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
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
