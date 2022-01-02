part of 'pages.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({ Key? key }) : super(key: key);

  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(     
      body: Stack(
        children: [Container(
          alignment: Alignment.center,
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
                          AcitivityServices.showToast("Logout Failed", Colors.redAccent);
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
          isLoading == true ? AcitivityServices.loadings()
            : Container()
        ]
      ),
    );
  }
}