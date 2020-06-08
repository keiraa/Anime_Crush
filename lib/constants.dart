import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const kApiPath = 'https://kitsu.io/api/edge/anime?filter[text]=';

const kAppBarTitle = TextStyle(
  color: Colors.white,
  fontFamily: 'Piedra',
  fontSize: 35,
);

const kDetailTitle = TextStyle(
  color: Colors.white,
  fontFamily: 'BlackOpsOne',
  fontSize: 30,
);

const kDetail = TextStyle(
  color: Colors.white,
  fontSize: 25,
  fontFamily: 'DancingScript',
);

const ksubTitleText = TextStyle(
  color: Colors.white,
  fontSize: 15,
  fontFamily: 'MetalMania',
);

const kTextFieldDecoration = InputDecoration(
  border: OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(20)),
  borderSide: BorderSide.none,
  ),
  fillColor: Colors.white,
  filled: true,
  hintText: 'Boruto',
  icon: FaIcon(FontAwesomeIcons.search,color: Colors.white,),
  hintStyle: TextStyle(
  color: Colors.grey,
  )
  );