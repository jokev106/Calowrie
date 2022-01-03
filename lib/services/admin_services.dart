part of 'services.dart';

class AdminServices {
  static CollectionReference menuCollection =
      FirebaseFirestore.instance.collection("menu");
  static DocumentReference? menuDocument;

  static Reference? ref;
  static UploadTask? uploadTask;

  static Future<bool> addMenu(Menus menus) async {
    await Firebase.initializeApp();
    String dateNow = AcitivityServices.dateNow();

    menuDocument = await menuCollection.add({
      'MenuUid': menus.uid,
      'MenuName': menus.name,
      'MenuCalorie': menus.calorie,
      'MenuTime': menus.time,
      'MenuType': menus.type,
      'MenuIngredients': menus.ingredients,
      'MenuSteps': menus.steps,
      // 'MenuFile': menus.file,
      'CreatedAt': dateNow,
      'UpdatedAt': dateNow,
    });
    if (menuDocument != null) {
      menuCollection.doc(menuDocument!.id).update({});
      return true;
    } else {
      return false;
    }
  }

  static Future<bool> deleteMenu(String id) async {
    bool hsl = true;
    await Firebase.initializeApp();
    await menuCollection.doc(menuDocument!.id).delete().then((value) {
      hsl = true;
    }).catchError((onError) {
      hsl = false;
    });

    return hsl;
  }
  // static Future<bool> deleteMenu (String id) async{
  //   bool hsl = true;
  //   await Firebase.initializeApp();
  //   await menuCollection.doc(id).delete().then((value){
  //     hsl = true;
  //   }).catchError((onError){
  //     hsl = false;
  //   });

  //   return hsl;
  // }

}
