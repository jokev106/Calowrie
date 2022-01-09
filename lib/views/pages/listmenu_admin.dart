part of 'pages.dart';

class AdminListMenu extends StatefulWidget {
  const AdminListMenu({Key? key}) : super(key: key);
  static const String routeName = "/adminListMenu";

  @override
  _AdminListMenuState createState() => _AdminListMenuState();
}

class _AdminListMenuState extends State<AdminListMenu> {

  CollectionReference menuCollection = FirebaseFirestore.instance.collection("menu");
  final _formkey = GlobalKey<FormState>();
  // @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Column(
//         mainAxisSize: MainAxisSize.max,
//         children: [
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
//               child: SingleChildScrollView(
//                 child: Column(
//                   mainAxisSize: MainAxisSize.max,
//                   children: [
                    
//                   ],
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
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

            if (snapshot.connectionState == ConnectionState.waiting) {
              return AcitivityServices.loadings();
            }
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
                return AdminMenuCard(menus: menus);
              }).toList(),
            
            );
            
          },
        
        )
        
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: buildBody(),
    );
  }
}
