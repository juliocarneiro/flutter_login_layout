import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtonWidget extends StatelessWidget {
  final Color color;
  final String text;
  final IconData iconData;

  const ButtonWidget(
      {Key key,
      this.color = Colors.grey,
      this.text = "",
      this.iconData = Icons.crop})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
        child: Container(
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(40.0),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    offset: Offset(0.0, 0.0),
                    blurRadius: 10,
                    color: Colors.black.withOpacity(0.3))
              ],
            ),
            alignment: Alignment.center,
            width: double.infinity,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Icon(
                    iconData,
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Text(
                    text,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
