import 'package:flutter/material.dart';
import 'package:flutter_pto/dice_rollor.dart';
//import 'package:flutter_pto/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomLeft;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colour1, this.colour2, {super.key});

  const GradientContainer.purple({super.key})
      : colour1 =   Colors.deepPurple,
        colour2 =   Colors.indigo;

  final Color colour1;
  final Color colour2;
  


  @override
  Widget build(Context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            colour1,
            colour2,
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
 