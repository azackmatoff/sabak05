import 'package:sabak05/models/suroo.dart';

//Munu ishtetebiz
class Tizme {
  int index = 0;

  List<Suroo> suroolor = [
    Suroo(suroo: 'KG din borobur Tashkent', joop: false),
    Suroo(suroo: 'KG din borobur Bishkek', joop: true),
    Suroo(suroo: 'Batken shaary Djalal-Abad oblusuna karayt', joop: false),
  ];

  String textAlipKel() {
    print('textAlipKel $index');
    return suroolor[index].suroo;
  }

  bool jooptuTeksheruu() {
    return suroolor[index].joop;
  }

  void suroonuOtkor() {
    if (index == suroolor.length - 1) {
      return;
    } else {
      index++;
    }
  }

  bool jooptuAlipKel2(int san) {
    return suroolor[index].joop;
  }
}

final Tizme tizme = Tizme();
