import 'package:courtside/store/api_store.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '/widgets/standing_container.dart';


class GamesContainer4 extends StatefulWidget {

  final int numberOfColumn;
  GamesContainer4({required this.numberOfColumn});

  @override
  _GamesContainerState4 createState() => _GamesContainerState4();
}

class _GamesContainerState4 extends State<GamesContainer4> {
  String apiKey =
      'rkcd9u7zu893xzms99pdmxtf';

  late String ? homeAlias;
  late String ? homeMarket;
  late String ? homeName;
  late int ? homeRecord;
  late String ? awayAlias;
  late String ? awayMarket;
  late String ? awayName;
  late int ? awayRecord;
  int dataLength=0;
  dynamic jsonData;

  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<void> getData() async {
    String apiUrl =
        'http://api.sportradar.us/nba/trial/v8/en/series/2022/PST/schedule.json?api_key=$apiKey';
    var response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      jsonData = jsonDecode(response.body);
      setState(() {
        dataLength = jsonData['series'].length;
        homeAlias =
            jsonData['series'][0]['participants'][0]['team']?['alias'] ??
                'NoAlias';
        homeMarket = jsonData['series'][0]['participants'][0]['team']['market'];
        homeName = jsonData['series'][0]['participants'][0]['team']['name'];
        homeRecord = jsonData['series'][0]['participants'][0]['record'];
        awayAlias = jsonData['series'][0]['participants'][1]['team']['alias'] ??
            'NoAlias';
        awayMarket = jsonData['series'][0]['participants'][1]['team']['market'];
        awayName = jsonData['series'][0]['participants'][1]['team']['name'];
        awayRecord = jsonData['series'][0]['participants'][1]['record'];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    List<GameContainer> gameContainers = [];
    var check = widget.numberOfColumn;
    if (widget.numberOfColumn == 1) {
      for (int i = 0; i < dataLength; i++) {
        if (jsonData['series'][i]['round'] == 4) {
          homeAlias =
              jsonData['series'][i]['participants'][0]['team']?['alias'] ??
                  'NoAlias';
          homeMarket =
              jsonData['series'][i]['participants'][0]['team']?['market'] ??
                  'Team A';
          homeName =
              jsonData['series'][i]['participants'][0]['team']?['name'] ??
                  'NoName';
          homeRecord = jsonData['series'][i]['participants'][0]['record'];
          awayAlias =
              jsonData['series'][i]['participants'][1]['team']?['alias'] ??
                  'NoAlias';
          awayMarket =
              jsonData['series'][i]['participants'][1]['team']?['market'] ??
                  'Team B';
          awayName =
              jsonData['series'][i]['participants'][1]['team']?['name'] ??
                  'NoName';
          awayRecord = jsonData['series'][i]['participants'][1]['record'];

          print('$homeAlias, $awayAlias, $homeRecord, $awayRecord');

          if (homeAlias != 'NoAlias') {
            gameContainers.add(GameContainer(homeAlias: homeAlias ?? '',
              homeMarket: homeMarket ?? '',
              homeName: homeName ?? '',
              homeRecord: homeRecord ?? 0,
              awayAlias: awayAlias ?? '',
              awayMarket: awayMarket ?? '',
              awayName: awayName ?? '',
              awayRecord: awayRecord ?? 0,
            ));

          }
          else if (homeAlias == 'NoAlias') {
            gameContainers.add(GameContainer(homeAlias: homeAlias ?? '',
              homeMarket: homeMarket ?? '',
              homeName: homeName ?? '',
              homeRecord: homeRecord ?? 0,
              awayAlias: awayAlias ?? '',
              awayMarket: awayMarket ?? '',
              awayName: awayName ?? '',
              awayRecord: awayRecord ?? 0,
            ));
          }
        }
      }
    }
    return Column(
      children: [...gameContainers],
    );
  }
}






