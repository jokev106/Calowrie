part of 'pages.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);
  static const String routeName = "/register";

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailAddressController1 = TextEditingController();
  final passwordController = TextEditingController();
  bool passwordVisibility = false;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            padding: const EdgeInsets.all(24),
            child: ListView(
              children: [
                Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        const SizedBox(height: 24),
                        const Text(
                          'Register',
                          style: TextStyle(fontFamily: 'Poopins', fontSize: 64),
                        ),
                        const SizedBox(height: 40),
                        TextFormField(
                          controller: nameController,
                          keyboardType: TextInputType.name,
                          decoration: const InputDecoration(
                            labelText: "Name",
                            prefixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(),
                            hintText: 'Enter your name here...',
                            hintStyle: TextStyle(
                              fontFamily: 'Lexend Deca',
                              color: Color(0xFF95A1AC),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please fill the field!!";
                            } else {
                              return null;
                            }
                          },
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        TextFormField(
                          controller: emailAddressController1,
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                              labelText: "Email",
                              prefixIcon: Icon(Icons.mail_outline_rounded),
                              border: OutlineInputBorder(),
                              hintText: 'Enter your email here...',
                              hintStyle: TextStyle(
                                fontFamily: 'Lexend Deca',
                                color: Color(0xFF95A1AC),
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              )),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter your email!";
                            } else {
                              if (!EmailValidator.validate(value)) {
                                return "Email not valid!";
                              } else {
                                return null;
                              }
                            }
                          },
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        TextFormField(
                          controller: passwordController,
                          obscureText: passwordVisibility,
                          decoration: InputDecoration(
                            labelText: "Password",
                            prefixIcon: const Icon(Icons.vpn_key),
                            border: const OutlineInputBorder(),
                            hintText: 'Enter your name here...',
                            hintStyle: const TextStyle(
                              fontFamily: 'Lexend Deca',
                              color: Color(0xFF95A1AC),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  passwordVisibility = !passwordVisibility;
                                });
                              },
                              child: Icon(passwordVisibility
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                            ),
                          ),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            return value!.length < 6
                                ? "password must have at least 6 characters!"
                                : null;
                          },
                        ),
                        const SizedBox(height: 24),
                        ElevatedButton.icon(
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              setState(() {
                                isLoading = true;
                              });
                              Users users = Users(
                                  "",
                                  nameController.text,
                                  emailAddressController1.text,
                                  passwordController.text,
                                  "",
                                  "");
                              await AuthServices.signUp(users).then((value) {
                                if (value == "success") {
                                  setState(() {
                                    isLoading = false;
                                  });
                                  AcitivityServices.showToast(
                                      "Register success", Colors.green);
                                  Navigator.pushReplacementNamed(
                                      context, Login.routeName);
                                } else {
                                  setState(() {
                                    isLoading = false;
                                  });
                                  AcitivityServices.showToast(
                                      value, Colors.red);
                                }
                              });

                              //Navigator.pushReplacementNamed(context, MainMenu.routeName);
                            } else {
                              Fluttertoast.showToast(
                                msg: "Please check the fields",
                              );
                            }
                          },
                          icon: const Icon(
                            Icons.save,
                            color: Colors.white,
                          ),
                          label: const Text(
                            "Register",
                            style: TextStyle(
                              fontFamily: 'Lexend Duca',
                              color: Colors.white,
                              fontSize: 18,
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
                        ),
                        const SizedBox(height: 24),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacementNamed(
                                context, Login.routeName);
                          },
                          child: const Text(
                            "Already registered? Login.",
                            style: TextStyle(
                              color: Colors.cyan,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ),
          isLoading == true ? AcitivityServices.loadings() : Container()
        ],
      ),
    );
  }
}
