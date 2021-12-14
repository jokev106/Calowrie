part of 'pages.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  static const String routeName = "/login";

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final _formkey = GlobalKey<FormState>();
  final emailAddressController = TextEditingController();
  final  passwordController = TextEditingController();
  bool passwordVisibility = false;

  bool isVisible = true;
  bool isLoading = false;
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(       
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white
      ), 
      backgroundColor: Colors.white,
      body:  Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 1,
        decoration: const BoxDecoration(
        color: Colors.white,
          ),
          child:  Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
            child: SingleChildScrollView(
              child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:  [
                     const Padding(
                      padding:  EdgeInsetsDirectional.fromSTEB(0, 30, 0, 150),
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontFamily: 'Poopins',
                          fontSize: 64
                          ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                          Expanded(
                            child: TextFormField(
                              controller: emailAddressController,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Email',
                                labelStyle: const TextStyle(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0xFF95A1AC),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                                hintText: 'example@mail.com',
                                hintStyle: const TextStyle(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0xFF95A1AC),
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
                                focusedBorder:  OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0xFFDBE2E7),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                contentPadding: 
                                  const EdgeInsetsDirectional.fromSTEB(16, 24, 0, 24),
                              ),
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              validator: (value) {
                          email = value!;
                          if (value.isEmpty) {
                            return "Please fill the field!";
                          } else {
                            if (!EmailValidator.validate(value)) {
                              return "Email isn't valid!";
                            } else {
                              return null;
                            }
                          }
                        },
                              style: const TextStyle(
                                fontFamily: 'Lexend Deca',
                                color: Color(0xFF2B343A),
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                              keyboardType: TextInputType.emailAddress,
                            )
                          )
                        ],
                      ),
                      ),
                      Padding(padding: const EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                          Expanded(
                            child: TextFormField(
                              controller: passwordController,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Password',
                                labelStyle: const TextStyle(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0xFF95A1AC),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),                               
                                hintText: 'Your Password',
                                hintStyle: const TextStyle(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0xFF95A1AC),
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
                                focusedBorder:  OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0xFFDBE2E7),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                contentPadding: 
                                  const EdgeInsetsDirectional.fromSTEB(16, 24, 24, 24),
                                  suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                isVisible = !isVisible;
                              });
                            },
                            child: Icon(isVisible == true
                                ? Icons.visibility
                                : Icons.visibility_off),
                                  )                                  
                              ),
                               autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        return value!.length < 6
                            ? "Password contains at least 6 character!"
                            : null;
                      },
                              style: const TextStyle(
                                fontFamily: 'Lexend Deca',
                                color: Color(0xFF2B343A),
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),                             
                            ),
                          ),
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
                              padding: const EdgeInsetsDirectional.fromSTEB(120, 20, 0, 0),
                              child:  ElevatedButton.icon(  
                                onPressed: () async {
                          if (_formkey.currentState!.validate()) {
                            setState(() {
                              isLoading = true;
                            });
                            await AuthServices.signIn(emailAddressController.text, passwordController.text).then((value) {
                              if (value == "success") {
                                setState(() {
                                  isLoading = false;
                                });
                                AcitivityServices.showToast("Login success", Colors.blueGrey);
                                Navigator.pushReplacementNamed(context, HomePageWidget.routeName);
                              } else {
                                setState(() {
                                  isLoading = false;
                                });
                                AcitivityServices.showToast(
                                    value, Colors.redAccent);
                              }
                            });
                            Navigator.pushReplacementNamed(
                            context, HomePageWidget.routeName);

                          } else {
                            Fluttertoast.showToast(
                            msg: "Please check the field",
                            backgroundColor: Colors.red,
                            textColor: Colors.white);
                          }
                        },                             
                                label: const Text("Login",
                                style: TextStyle(
                                    fontFamily: 'Lexend Duca',
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                style:  ElevatedButton.styleFrom(
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
                              ),
                              ),
                          ],
                        ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0, 24, 0, 24),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                               Text('Don\'t have an account?',
                              style:  TextStyle(
                                fontFamily: 'Lexend Deca',
                                color: Color(0xFF1B1B1B),
                                fontSize: 14,
                                fontWeight: FontWeight.normal
                              ),
                              ),
                          ],),
                          ),
                  ],
              ),
            ),
          ), 
       ) 
    );
  }
}
