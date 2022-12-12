import 'package:flutter/material.dart';
import 'package:flutter_meet2go/widgets/home/selectable_button.dart';

class SelectableButtonsGroup extends StatefulWidget {
  const SelectableButtonsGroup({super.key});

  @override
  State<SelectableButtonsGroup> createState() => _SelectableButtonsGroup();
}

class _SelectableButtonsGroup extends State<SelectableButtonsGroup> {
  bool weekButtonSelected = true;
  bool monthButtonSelected = false;
  bool dateButtonSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SelectableButton(
            selected: weekButtonSelected,
            onPressed: () {
              setState(() {
                weekButtonSelected = true;
                monthButtonSelected = false;
                dateButtonSelected = false;
              });
            },
            child: const Text('Esta Semana'),
          ),
          SelectableButton(
            selected: monthButtonSelected,
            onPressed: () {
              setState(() {
                weekButtonSelected = false;
                monthButtonSelected = true;
                dateButtonSelected = false;
              });
            },
            child: const Text('Este Mes'),
          ),
          SelectableButton(
            selected: dateButtonSelected,
            onPressed: () {
              setState(() {
                weekButtonSelected = false;
                monthButtonSelected = false;
                dateButtonSelected = true;
              });
            },
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(right: 8),
                  child: Icon(Icons.calendar_month),
                ),
                Text('Fecha')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
