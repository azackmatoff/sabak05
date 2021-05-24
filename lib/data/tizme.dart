import 'package:quizzler/models/suroo.dart';

//Munu ishtetebiz
class Tizme {
  int _index = 0;

  List<Suroo> suroolor = [
    Suroo(suroo: 'KG din borobur Tashkent', joop: false),
    Suroo(suroo: 'KG din borobur Bishkek', joop: true),
    Suroo(suroo: 'Batken shaary Djalal-Abad oblusuna karayt', joop: false),
  ];

  final Suroo _question = Suroo();

//  _question.joop;

  String textAlipKel() {
    return suroolor[_index].suroo;
  }

  bool jooptuAlipKel() {
    return suroolor[_index].joop;
  }

  bool jooptuAlipKel2(int san) {
    return suroolor[_index].joop;
  }
}
