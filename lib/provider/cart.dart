import 'package:app1/widgets/item.dart';
import 'package:flutter/material.dart';

class Cart with ChangeNotifier {
  List selectitems=[
  
  ];
  double coast = 0;
  add(item product){
    selectitems.add(product);
    coast +=product.price;
    notifyListeners();
  }