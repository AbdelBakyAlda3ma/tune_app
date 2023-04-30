import 'package:flutter/material.dart';
import 'package:tune/data/item_tune_list.dart';
import 'package:tune/widgets/item_tune_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Flutter Tune'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ItemTuneWidget(tuneModel: itemTunelist[0]),
          ItemTuneWidget(tuneModel: itemTunelist[1]),
          ItemTuneWidget(tuneModel: itemTunelist[2]),
          ItemTuneWidget(tuneModel: itemTunelist[3]),
          ItemTuneWidget(tuneModel: itemTunelist[4]),
          ItemTuneWidget(tuneModel: itemTunelist[5]),
          ItemTuneWidget(tuneModel: itemTunelist[6]),
        ],
      ),
    );
  }
}
