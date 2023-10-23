import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tunes_player_app/models/TuneModel.dart';
import 'package:tunes_player_app/widgets/tune_item.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});
 final List <TuneModel> tunes = const [
  TuneModel(color:  Color(0xffF44336), sound: 'note1.wav' ),
   TuneModel(color:  Color(0xffF89800), sound: 'note1.wav' ),
   TuneModel(color:  Color(0xffFEEB3B), sound: 'note1.wav' ),
   TuneModel(color:  Color(0xff4CAF50), sound: 'note1.wav' ),
   TuneModel(color:  Color(0xff2F9688), sound: 'note1.wav' ),
   TuneModel(color:  Color(0xff2896F3), sound: 'note1.wav' ),
   TuneModel(color:  Color(0xff9C27B0), sound: 'note1.wav' ),


 ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text('Flutter Tune'),
        backgroundColor:const Color(0xff253238),
      ),
      body:  Column(
        children:
        tunes.map((e) => TuneItem(tune: e)).toList(),
        
      ),

    );
  }

//   List <TuneItem>  getTuneItems() {
//     List <TuneItem> items = [];
//     for (var color in tuneColors){
//       items.add(TuneItem(color: color));
//     }
//     return items;
//   }
 }
