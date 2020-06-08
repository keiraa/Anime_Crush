import 'package:animecrush/constants.dart';
import 'package:flutter/material.dart';
import 'DetailCard.dart';
import 'DateTime.dart';
import 'statusCreator.dart';

void main() => runApp(DetailPage());

class DetailPage extends StatefulWidget {
  DetailPage({this.details});
  final dynamic details;

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: DetailList(details: widget.details,),
    );
  }
}

class DetailList extends StatelessWidget {
  final details;
  DetailList({this.details});
  ConvertDate convert = ConvertDate();
  CreateStatus cStatus = CreateStatus();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(15),
          child: Text(
            details['attributes']['canonicalTitle'],
            style: kAppBarTitle,
            textAlign: TextAlign.center,

          ),
        ),
        Image(
        image: NetworkImage(details['attributes']['posterImage']['small']),
        ),
        DetailCard(
          title: 'Age Rating',
          detail: '${details['attributes']['ageRating']} : ${details['attributes']['ageRatingGuide']}',
        ),
        DetailCard(
          title: 'Started On',
          detail: convert.convert(details['attributes']['startDate']),
        ),
        DetailCard(
          title: 'Status',
          detail: cStatus.myStatus(details['attributes']['status'], details['attributes']['endDate'], details['attributes']['nextRelease']),
        ),
        DetailCard(
          title: 'Story Line',
          detail: details['attributes']['synopsis'],
        ),
        DetailCard(
          title: 'Average Rating',
          detail: details['attributes']['averageRating'],
        )
      ],
    );
  }
}

