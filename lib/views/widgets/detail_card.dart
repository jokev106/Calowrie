part of 'widgets.dart';

class DetailCard extends StatefulWidget {
  final Menus menus;

  const DetailCard({Key? key, required this.menus}) : super(key: key);

  @override
  _DetailCardState createState() => _DetailCardState();
}

class _DetailCardState extends State<AdminMenuCard> {
  @override
  Widget build(BuildContext context) {
    Menus menus = widget.menus;
    return SizedBox(
      height: 50,
      width: 100,
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),       
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
                          menus.calorie,
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
        ));
     
    
  }
}
