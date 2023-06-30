import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;
//const ini sudah di simpan walaupun blm di execute, karena datanya pasti.
// final ini untuk value yang baru di calculate / ada hasilnya setelah di execute.

class GradientContainer extends StatelessWidget {
  GradientContainer({super.key, required this.colors});

  GradientContainer.purple({super.key})
      : colors = const [Colors.indigo, Colors.purple];

  final List<Color> colors;

  var activeDiceImage = 'assets/images/dice-6.png';

  void rollDice() {
    activeDiceImage = 'assets/images/dice-1.png';
    print('changing image');
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const StyledText('Roll the dice'),
            Image.asset(
              activeDiceImage,
              width: 200,
            ),
            const SizedBox(
              // semacam br di html
              height: 20,
            ),
            // ElevatedButton(onPressed: () {}, child: const Text('Roll Dice')) // anonimus
            ElevatedButton(
                onPressed: rollDice,
                style: ElevatedButton.styleFrom(
                    padding:
                        const EdgeInsets.all(20), // all padding 3 disemua sisi
                    // padding: const EdgeInsets.only(
                    //     top: 20), // all padding 3 disemua sisi
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black12,
                    textStyle: const TextStyle(fontSize: 28)),
                child: const Text('Roll Dice'))
          ],
        ),

        // child: StyledText('Hello world!'),
      ),
    );
  }
}
