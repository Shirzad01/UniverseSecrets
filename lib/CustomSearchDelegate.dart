import 'package:flutter/material.dart';
import 'Pages/Milky-way.dart';
import 'Pages/spaceInfo.dart';
import 'Pages/Earth.dart';
import 'Pages/Jupeter.dart';
import 'Pages/Mars.dart';
import 'Pages/Neptun.dart';
import 'Pages/Sun.dart';
import 'Pages/Uranos.dart';
import 'Pages/Zuhal.dart';
import 'Pages/mercure.dart';
import 'Pages/solarSystem.dart';
import 'Pages/venus.dart';

class CutomSearchDelegate extends SearchDelegate{
  List<String> SearchTerms = [
    'کیهان(جهان)',
    'کهکشان راه شیری',
    'منظومه شمسی',
    'خورشید',
    'عطارد',
    'زهره',
    'زمین',
    'مریخ',
    'مشتری',
    'زحل',
    'اورانوس',
    'نپتون',
  ];
  Widget? selectedPage;
  List SearchPages = [
    const spaceInfo(),
    MilkyWay(),
    SolarSystem(),
    const Sun(),
    const Mercure(),
    const venus(),
    const Earth(),
    const Mars(),
    const Jupeter(),
    const Saturn(),
    const Uranos(),
    const Neptun(),
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(onPressed: (){
        query = '';
      }, icon: Icon(Icons.clear),
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context){
    return IconButton(
        onPressed: (){
          close(context, null);
        }, icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context){
    List<Widget> matchPages = [];
    List<String> matchQuery = [];
    for (var i = 0; i < SearchTerms.length; i++) {
      var term = SearchTerms[i];
      if (term.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(term);
        matchPages.add(SearchPages[i]);
      }
    }
    if (matchQuery.isEmpty) {
      return Center(
        child: Text('موردی یافت نشد'),
      );
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context ,index){
          var result = matchQuery[index];
          var page = matchPages[index];
          return ListTile(
            onTap: (){
              close(context, page);
            },
            title: Text(result),
          );
        });
  }

  @override
  Widget buildSuggestions(BuildContext context){
    List<String> matchQuery = [];
    List<Widget> matchPages = [];

    for (var i = 0; i < SearchTerms.length; i++) {
      var term = SearchTerms[i];
      if (term.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(term);
        matchPages.add(SearchPages[i]);
      }
    }

    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        var page = matchPages[index];

        return ListTile(
          title: Text(
            result,
            textAlign: TextAlign.right,
            style: const TextStyle(color: Colors.white),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => page),
            );
          },
        );
      },
    );
  }

}