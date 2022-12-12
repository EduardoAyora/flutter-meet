import 'package:flutter/material.dart';

// class SelectableButton extends StatelessWidget {
//   const SelectableButton({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
//       child: TextButton(
//           onPressed: () {},
//           child: Text(
//             'Esta Semana',
//             style: TextStyle(
//               color: Theme.of(context).colorScheme.primary,
//               fontSize: 15,
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//     );
//   }
// }

class SelectableButton extends StatefulWidget {
  const SelectableButton({
    super.key,
    required this.selected,
    required this.onPressed,
    required this.child,
  });

  final bool selected;
  final VoidCallback? onPressed;
  final Widget child;

  @override
  State<SelectableButton> createState() => _SelectableButtonState();
}

class _SelectableButtonState extends State<SelectableButton> {
  late final MaterialStatesController statesController;

  @override
  void initState() {
    super.initState();
    statesController = MaterialStatesController(
        <MaterialState>{if (widget.selected) MaterialState.selected});
  }

  @override
  void didUpdateWidget(SelectableButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.selected != oldWidget.selected) {
      statesController.update(MaterialState.selected, widget.selected);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
      child: SizedBox(
        height: 30,
        child: TextButton(
          statesController: statesController,
          style: ButtonStyle(
            textStyle: MaterialStateProperty.all(
              const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: const BorderSide(width: 1, color: Colors.transparent),
              ),
            ),
            foregroundColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.selected)) {
                  return Colors.white;
                }
                return Theme.of(context)
                    .colorScheme
                    .tertiary; // defer to the defaults
              },
            ),
            backgroundColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.selected)) {
                  return Theme.of(context).colorScheme.secondary;
                }
                return Colors.white; // defer to the defaults
              },
            ),
          ),
          onPressed: widget.onPressed,
          child: widget.child,
        ),
      ),
    );
  }
}
