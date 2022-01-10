part of 'pages.dart';

class ListMenu extends StatefulWidget {
  static const String routeName = "/listmenu";
  const ListMenu({ Key? key }) : super(key: key);

  @override
  _ListMenuState createState() => _ListMenuState();
}

class _ListMenuState extends State<ListMenu> {

  CollectionReference menuCollection = FirebaseFirestore.instance.collection("menu");
  final _formkey = GlobalKey<FormState>();

    Widget buildBody() {
    return SizedBox(
        
        width: double.infinity,
        height: double.infinity,
        child: StreamBuilder<QuerySnapshot>(
          stream: menuCollection.snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return const Text("Failed to load data");
            }

            // if (snapshot.connectionState == ConnectionState.waiting) {
            //   return AcitivityServices.loadings();
            // }
            return ListView(
              key: _formkey,
              children: snapshot.data!.docs.map((DocumentSnapshot doc) {
                Menus menus = Menus(
                  doc['MenuUid'],
                  doc['MenuName'],
                  doc['MenuCalorie'],
                  doc['MenuTime'],
                  doc['MenuType'],
                  doc['MenuIngredients'],
                  doc['MenuSteps'],
                  doc['MenuFile'],
                  doc['CreatedAt'],
                  doc['UpdatedAt'],
                );
                return UserMenuCard(menus: menus);
              }).toList(),
            );
          },
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: buildBody(),
    );
  }
}