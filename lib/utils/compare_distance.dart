import 'package:kt_dart/kt.dart';

KtList<double> compareDistance(KtList<double> distances) {
  KtList<double> temp = KtList.from(distances.asList()).toMutableList();
  if (temp.isNotEmpty()) {
    temp.asList().sort(((a, b) => a.compareTo(b)));
  }

  var filteredList = temp;

  return filteredList;
}
