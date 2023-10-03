import 'package:flutter/material.dart';
import 'basic_widgets/loading_cupertino.dart';
import 'basic_widgets/fab_widget.dart';
import 'basic_widgets/input_selection_widget.dart';
import 'basic_widgets/dialog_widget.dart';
import 'basic_widgets/date_time_pickers.dart';
import 'basic_widgets/scaffold_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Row(
        children: [
          Expanded(child: MyLoadingCupertino()),
          Expanded(child: MyFabWidget()),
          Expanded(child: MyInputSelectionWidget()),
          Expanded(child: MyDialogWidget()),
          Expanded(child: MyDateTimePickers()),
          Expanded(child: MyScaffoldWidget()),
          ],
      ),
    );
  }
}
