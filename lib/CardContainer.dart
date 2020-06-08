import 'package:flutter/material.dart';
import 'constants.dart';

class CardContainer extends StatelessWidget {
  CardContainer({this.animeName,this.imageAddress,this.index});
  final String animeName,imageAddress;
  final index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
            Container(
              child: Expanded(
                child: Image(
                    image: NetworkImage(imageAddress),
                    fit: BoxFit.contain,
                  ),
              ),
            ),
            Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
                    animeName,
                    style: ksubTitleText,
                    textAlign: TextAlign.center,
                  ),
            )
            ],
          )
      ),
    );
  }
}


