// ignore_for_file: sort_child_properties_last

import 'package:app1/widgets/constant_colors.dart';
import 'package:app1/widgets/item.dart';
import 'package:app1/widgets/row_content.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  item product;
  Details({required this.product});
  @override
  State<Details> createState() => _DetailsState();
}