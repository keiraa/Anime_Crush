import 'package:animecrush/constants.dart';
import 'package:flutter/material.dart';
import 'CardContainer.dart';
import 'Details.dart';

void main()
{
  runApp(MaterialApp(
    home: ListAnime(),
  ));
}

class ListAnime extends StatefulWidget {
  ListAnime({this.animeData,this.searchText});
  final dynamic animeData;
  final String searchText;

  @override
  _ListAnimeState createState() => _ListAnimeState();
}

class _ListAnimeState extends State<ListAnime> {

  List<Widget> animeList = [];

  @override
  void initState() {
    super.initState();
    for(int i=0;i<10;i++)
    {
      if(widget.animeData[i] == Null)
        {
          break;
        }
      Widget temp = CardContainer(animeName: widget.animeData['data'][i]['attributes']['canonicalTitle'],imageAddress: widget.animeData['data'][i]['attributes']['posterImage']['tiny'],index: i,);
      animeList.add(GestureDetector(
        child: temp,
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return DetailPage(details: widget.animeData['data'][i],);
          }));
        },
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Results for ${widget.searchText}...',
            style: kAppBarTitle,
          ),
        ),
        body: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 10,
            primary: false,
            padding: EdgeInsets.all(10),
            children: animeList,
        ),
      ),
    );
  }
}

