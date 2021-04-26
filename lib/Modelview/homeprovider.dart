import 'package:flutter/cupertino.dart';


class homeprovider extends ChangeNotifier {

  int counter=0;
  int get counternb => counter;


  void addcounter(){
    counter++;
    notifyListeners();//kl class e5dni ana provders 3ti 5abar eni 8ayrt counter
  }


}