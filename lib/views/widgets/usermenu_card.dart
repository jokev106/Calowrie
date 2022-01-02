part of 'widgets.dart';

class UserMenuCard extends StatefulWidget {
  final Menus menus;
  const UserMenuCard({Key? key, required this.menus}) : super(key: key);
  

  @override
  _UserMenuCardState createState() => _UserMenuCardState();
}

class _UserMenuCardState extends State<UserMenuCard> {
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
              image: Image.asset(
                'assets/images/food.jpeg',
              ).image,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}