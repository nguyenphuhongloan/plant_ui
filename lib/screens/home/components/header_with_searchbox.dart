import 'package:flutter/material.dart';

import '../../../constants.dart';

class headerWithSearchBox extends StatelessWidget {
  const headerWithSearchBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),
      height: size.height * 0.2,
      width: size.width,
      
      child: Stack(
        children: [
          Container(
            padding:
                EdgeInsets.fromLTRB(kDefaultPadding, 0, kDefaultPadding, 55),
            height: size.height * 0.2 - 27,
            width: size.height,
            decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36))),
            child: Row(
              children: [
                Text(
                  "Hello",
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Image.asset("assets/images/logo.png")
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 54,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.4))
                  ]),

              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle:
                            TextStyle(color: kPrimaryColor.withOpacity(0.5)),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),

              //SvgPicture.asset("assets/icons/search.svg"),
            ),
          )
        ],
      ),
    );
  }
}
