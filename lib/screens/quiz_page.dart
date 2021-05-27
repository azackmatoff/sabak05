import 'package:flutter/material.dart';
import 'package:sabak05/data/quiz_brain.dart';
import 'package:sabak05/data/tizme.dart';
import 'package:sabak05/models/suroo.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];
  List<Icon> jooptordunIkonkasi = [];

  @override
  void initState() {
    super.initState();
    // ifElse.funkciyaAty('Bul men jibergen string');
    // String data = ifElse.sanNolbu(12);
    print('kacnha suroo bar: ${Tizme().suroolor.length}');

    // bool tuuraKata = false;

    // int san = 2;

    // bool sanEkigeBarabarby(int jiberilgenSan) {
    //   return 2 == jiberilgenSan;
    // }

    // bool booleanBarabarby(bool jiberilgenJoop) {
    //   return tuuraKata == jiberilgenJoop;
    // }

    // print('sanEkigeBarabarby joobu: ${sanEkigeBarabarby(2)}');
    // print('boleanBarabarby joobu: ${booleanBarabarby(false)}');
  }

  // tizme.suroolor.add(Suroo(suroo: 'Osh Marstaby?', joop: true));

  void jooptuTeksher(bool koldonuuchununJoobu) {
    bool _tuuraJoop = tizme.jooptuTeksheruu();

    if (tizme.index == tizme.suroolor.length - 1) {
    } else {}

    if (koldonuuchununJoobu == _tuuraJoop) {
      // KOLDONUUCHU TUURA JOOP BERDI

      jooptordunIkonkasi.add(
        Icon(
          Icons.check,
          color: Colors.green,
        ),
      );

      setState(() {});
    } else {
      //  KOLDONUUCHU TUURA  EMES, KATA JOOP BERDI
      jooptordunIkonkasi.add(
        Icon(
          Icons.close,
          color: Colors.red,
        ),
      );
      setState(() {});
    }

    tizme.suroonuOtkor();

    print('tizme.index ${tizme.index}');

    // (koldonuuchununJoobu == true) ===== (koldonuuchununJoobu)
    // if (koldonuuchununJoobu == true) {
    //   //
    // } else {
    //   //
    // }
  }

  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = quizBrain.getCorrectAnswer();

    setState(() {
      //TODO: Step 4 - Use IF/ELSE to check if we've reached the end of the quiz. If so,
      //On the next line, you can also use if (quizBrain.isFinished()) {}, it does the same thing.
      if (quizBrain.isFinished() == true) {
        //TODO Step 4 Part A - show an alert using rFlutter_alert,

        //This is the code for the basic alert from the docs for rFlutter Alert:
        //Alert(context: context, title: "RFLUTTER", desc: "Flutter is awesome.").show();

        //Modified for our purposes:
        // Alert(
        //   context: context,
        //   title: 'Finished!',
        //   desc: 'You\'ve reached the end of the quiz.',
        // ).show();

        //TODO Step 4 Part C - reset the questionNumber,
        quizBrain.reset();

        //TODO Step 4 Part D - empty out the scoreKeeper.
        scoreKeeper = [];
      }

      //TODO: Step 6 - If we've not reached the end, ELSE do the answer checking steps below 👇
      else {
        if (userPickedAnswer == correctAnswer) {
          scoreKeeper.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else {
          scoreKeeper.add(Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
        quizBrain.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                tizme.textAlipKel(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'Tuura',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                jooptuTeksher(true);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'Tuura emes',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () => jooptuTeksher(false),
            ),
          ),
        ),
        Row(
          children: jooptordunIkonkasi,
        )
      ],
    );
  }
}
