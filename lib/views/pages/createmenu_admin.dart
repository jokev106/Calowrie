part of 'pages.dart';

class AdminCreateMenu extends StatefulWidget {
  const AdminCreateMenu({Key? key}) : super(key: key);
  static const String routeName = "/admincreatemenu";

  @override
  _AdminCreateMenuState createState() => _AdminCreateMenuState();
}

class _AdminCreateMenuState extends State<AdminCreateMenu> {
  final textController1 = TextEditingController();
  final textController2 = TextEditingController();
  final textController3 = TextEditingController();
  final textController4 = TextEditingController();
  final textController5 = TextEditingController();
  final textController6 = TextEditingController();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  PickedFile? imageFile;
  final ImagePicker imagePicker = ImagePicker();
  
  Future chooseFile(String type) async{
    ImageSource imgSrc;
    if(type == "camera"){
      imgSrc = ImageSource.camera;
    } else {
      imgSrc = ImageSource.gallery;
    }

    // ignore: deprecated_member_use
    final selectedImage = await imagePicker.getImage(
      source: imgSrc,
      imageQuality: 50
    );
    setState(() {
      imageFile = selectedImage!;
    });
  }

  void showFileDialog(BuildContext ctx){
    showDialog(
      context: ctx, 
      builder: (ctx){
        return AlertDialog(
          title: Text("Confirmation"),
          content: Text("Pick image from:"),
          actions: [
            ElevatedButton.icon(
              onPressed: (){
                chooseFile("camera");
              }, 
              icon: Icon(Icons.camera_alt), 
              label: Text("Camera"),
              style: ElevatedButton.styleFrom(
                elevation: 0,
              ),
            ),
            ElevatedButton.icon(
              onPressed: (){
                chooseFile("gallery");
              }, 
              icon: Icon(Icons.folder_open), 
              label: Text("Gallery"),
              style: ElevatedButton.styleFrom(
                elevation: 0,
              ),
            ),
          ],
        );
      }
    );
  }

  // void clearForm(){
  //   textController1.clear();
  //   textController2.clear();
  //   textController3.clear();
  //   textController4.clear();
  //   textController5.clear();
  //   textController6.clear();
  //   setState(() {
  //     imageFile = null;
  //   });
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 12, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    controller: textController1,
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
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 12, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    controller: textController2,
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
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 12, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    controller: textController3,
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
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 12, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    controller: textController4,
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
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 12, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    controller: textController5,
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
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 12, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    controller: textController6,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      hintText: 'Steps',
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
                          imageFile == null ?
                          Row(
                          children: [
                            ElevatedButton.icon(
                              onPressed: (){
                                showFileDialog(context);
                              },
                              icon: Icon(Icons.photo_camera),
                              label: Text("Ambil Gambar"),
                              style: ElevatedButton.styleFrom(
                              primary: Color(0xFFC72C41),

                            ),
                            ),
                            SizedBox(width:16),
                            Text("File tidak ditemukan.")
                          ],
                        )
                        :
                        Row(
                          children: [
                            ElevatedButton.icon(
                              onPressed: (){
                                showFileDialog(context);
                              },
                              icon: Icon(Icons.photo_camera),
                              label: Text("Ulangi Gambar"),
                              style: ElevatedButton.styleFrom(
                              primary: Color(0xFFC72C41),

                            ),
                            ),
                            SizedBox(width:16),
                            Semantics(
                              child: Image.file(
                                File(imageFile!.path),
                                width: 100,
                              )
                            )
                          ],
                        ),
                          TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: const Color(0xffd09484),
                                padding:
                                    const EdgeInsets.fromLTRB(20, 1, 20, 1),
                                primary: Colors.black,
                                textStyle: const TextStyle(fontSize: 16),
                              ),
                              child: const Text('Post'),
                              onPressed: () async {
                                // if (_formKey.currentState!.validate()) {
                                // final uid = AuthServices.auth.currentUser!.uid;
                                // final name = textController1.text;
                                // final calorie = textController2.text;
                                // final time = textController3.text;
                                // final type = textController4.text;
                                // final ingredient = textController5.text;
                                // final step = textController6.text;

                                // AdminServices.addMenu(Menus(
                                //   uid,
                                //   name,
                                //   calorie,
                                //   time,
                                //   type,
                                //   ingredient,
                                //   step,
                                //   '',
                                //   '',
                                // ));
                                // Navigator.pushReplacementNamed(
                                //     context, AdminArea.routeName);
                                // Fluttertoast.showToast(
                                //     msg: "Save Menu Successful.",
                                //     textColor: Colors.black,
                                //     backgroundColor: Colors.white);
                          
                              Menus menus = Menus("",textController1.text, textController2.text, textController3.text, textController4.text, textController5.text, textController6.text, "", "","");
                              await AdminServices.addMenu(menus, imageFile!).then((value){
                              if(value == true){
                                AcitivityServices.showToast("Simpan Barang Berhasil!", Colors.green);
                                Navigator.pushReplacementNamed(context, AdminArea.routeName);
                                setState(() {
                                  isLoading = false;
                                });
                              }else{
                                AcitivityServices.showToast("Simpan Barang Gagal!", Colors.red);
                              }
                            });
                           } 
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
