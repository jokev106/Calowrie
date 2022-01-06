part of 'widgets.dart';

class AdminMenuCard extends StatefulWidget {
  final Menus menus;

  const AdminMenuCard({Key? key, required this.menus}) : super(key: key);

  @override
  _AdminMenuCardState createState() => _AdminMenuCardState();
}

class _AdminMenuCardState extends State<AdminMenuCard> {
  @override
  Widget build(BuildContext context) {
    Menus menus = widget.menus;
    return Card(
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 184,
          decoration: BoxDecoration(
            color: const Color(0xFF090F13),
            image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: NetworkImage(menus.image,
              ),
            ),
            boxShadow: const [
              BoxShadow(
                blurRadius: 3,
                color: Color(0x33000000),
                offset: Offset(0, 2),
              )
            ],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: const Color(0x65090F13),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          menus.name,
                          style: const TextStyle(
                            fontFamily: 'Lexend Deca',
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16, 4, 16, 16),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        ElevatedButton.icon(
                          label: const Text(
                            "Edit",
                            style: TextStyle(
                              fontFamily: 'Lexend Duca',
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          // onPressed: () {
                          //         Navigator.pushNamed(
                          //             context, AdminEditMenuPageWidget.routeName,
                          //             );
                          //       },
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xFF39d2c0),
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
                            Icons.edit,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              AdminEditMenuPageWidget.routeName,
                            );
                          },
                        ),
                        ElevatedButton.icon(
                          label: const Text(
                            "Delete",
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
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          icon: const Icon(
                            Icons.add_rounded,
                            color: Colors.white,
                          ),
                          onPressed: () async {
                            bool result =
                                await AdminServices.deleteMenu(menus.uid);
                            if (result) {
                              AcitivityServices.showToast(
                                  "Delete data success!", Colors.green);
                            } else {
                              AcitivityServices.showToast(
                                  "Delete data failed!", Colors.red);
                            }
                            // bool result =
                            //     await AdminServices.deleteMenu(menus.uid);
                            // if (result) {
                            //   AcitivityServices.showToast(
                            //       "Delete success!", Colors.white);
                            // } else {
                            //   AcitivityServices.showToast(
                            //       "Delete  failed!", Colors.white);
                            // }
                          },
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
