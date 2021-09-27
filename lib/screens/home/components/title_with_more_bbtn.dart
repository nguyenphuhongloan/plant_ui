import 'package:flutter/material.dart';

import '../../../constants.dart';

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: kDefaultPadding),
              height: 7,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}

class TitleWithMoreBtn extends StatelessWidget {
  final String title;
  final Function() press;
  const TitleWithMoreBtn({
    Key? key,
    required this.title,
    required this.press
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWithCustomUnderline(
            text: title,
          ),
          Spacer(),
          TextButton(
              onPressed: press,
              child: Text("More"),
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                )),
                backgroundColor: MaterialStateProperty.all(kPrimaryColor),
                foregroundColor: MaterialStateProperty.all(Colors.white),
              ))
          //style: TextButton.styleFrom(primary: Colors.white, backgroundColor: kPrimaryColor),)
        ],
      ),
    );
  }
}
