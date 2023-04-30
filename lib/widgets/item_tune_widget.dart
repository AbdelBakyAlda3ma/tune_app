import 'package:flutter/material.dart';
import 'package:tune/models/item_tune_model.dart';
import 'package:audioplayers/audioplayers.dart';

class ItemTuneWidget extends StatelessWidget {
  final ItemTuneModel tuneModel;
  const ItemTuneWidget({super.key, required this.tuneModel});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GestureDetector(
      onTap: () async {
        final player = AudioPlayer();
        await player.play(AssetSource(tuneModel.note));
      },
      child: Container(
        color: tuneModel.color,
      ),
    ));
  }
}
