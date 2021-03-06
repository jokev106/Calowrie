part of 'services.dart';

class AdminServices {
  static CollectionReference menuCollection =
      FirebaseFirestore.instance.collection("menu");
  static DocumentReference? menuDocument;

  static Reference? ref;
  static UploadTask? uploadTask;
  static String imgUrl = "";

  static Future<bool> addMenu(Menus menus, PickedFile imgFile) async {
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
      'MenuFile': menus.image,
      'CreatedAt': dateNow,
      'UpdatedAt': dateNow,
    });
    if (menuDocument != null) {
      ref = FirebaseStorage.instance
          .ref()
          .child("images")
          .child(menuDocument!.id + ".png");
      uploadTask = ref!.putFile(File(imgFile.path));

      await uploadTask!.whenComplete(() => ref!.getDownloadURL().then(
            (value) => imgUrl = value,
          ));

      menuCollection.doc(menuDocument!.id).update({
        'MenuUid': menuDocument!.id,
        'MenuFile': imgUrl,
      });
      return true;
    } else {
      return false;
    }
  }

  static Future<bool> deleteMenu(String id) async {
    bool hsl = true;
    await Firebase.initializeApp();
    await menuCollection.doc(id).delete().then((value) {
      hsl = true;
    }).catchError((onError) {
      hsl = false;
    });

    return hsl;
  }

  static Future<bool> editMenu(Menus menus) async {
    await Firebase.initializeApp();
    await menuCollection.doc(menuDocument!.id).update({
      'MenuName': menus.name,
      'MenuCalorie': menus.calorie,
      'MenuTime': menus.time,
      'MenuType': menus.type,
      'MenuIngredients': menus.ingredients,
      'MenuStep': menus.steps,
    });

    return true;
  }
}
