import 'package:flutter/material.dart';
class CustomDialog extends StatelessWidget {
  // mana shu yerga kerakli atributlar kitiladi

  final String title;
  final String body;
  final Function() functionOne;
  final Function() functionTwo;
  final String textActionOne;
  final String textActionTwo;




  const CustomDialog({Key? key, required this.title, required this.body, required this.functionOne, required this.functionTwo, required this.textActionOne, required this.textActionTwo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actionsPadding: EdgeInsets.zero,
      backgroundColor: Colors.white,
      buttonPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      title: Text(
        title,
        textAlign: TextAlign.center,
      ),
      alignment: Alignment.center,
      content: Container(
        constraints: BoxConstraints(minWidth: 100, maxHeight: 250),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Text(
            body,
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      actions: [
        Container(
          height: 60,
          margin: EdgeInsets.only(top: 1),
          decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(color: Colors.grey, width: 0.5))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    functionOne();
                  },
                  child: Text(
                    textActionOne,
                    style: TextStyle(fontSize: 19, color: Colors.red),
                  ),
                ),
              ),
              VerticalDivider(
                color: Colors.grey,
                thickness: 0.5,
              ),
              Expanded(
                child: TextButton(
                  onPressed: functionTwo,
                  child: Text(
                    textActionTwo,
                    style: TextStyle(fontSize: 19, color: Colors.blue),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
