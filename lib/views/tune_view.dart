import 'package:flutter/material.dart';
import 'package:tune_app/models/tune_model.dart';
import 'package:tune_app/widgets/tune_item.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});

  final List<TuneModel> Tunes = const [
    TuneModel(color: Color.fromRGBO(216, 27, 96, 1), sound: 'note1.wav'),
    TuneModel(color: Color.fromRGBO(233, 30, 99, 1), sound: 'note2.wav'),
    TuneModel(color: Color.fromRGBO(236, 64, 122, 1), sound: 'note3.wav'),
    TuneModel(color: Color.fromRGBO(240, 98, 146, 1), sound: 'note4.wav'),
    TuneModel(color: Color.fromRGBO(244, 143, 177, 1), sound: 'note5.wav'),
    TuneModel(color: Color.fromRGBO(248, 187, 208, 1), sound: 'note6.wav'),
    TuneModel(color: Color.fromRGBO(252, 228, 236, 1), sound: 'note7.wav')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff253238),
          title: Text(
            "Flutter Tune",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Column(children: Tunes.map((e) => TuneItem(tune: e)).toList()));
  }

  // List<TuneItem> getTuneItems() {
  //   List<TuneItem> items = [];
  //   for (var color in TuneColor) {
  //     items.add(TuneItem(color: color));
  //   }
  //   return items;
  // }
}
