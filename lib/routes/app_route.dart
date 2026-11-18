

import 'package:flutter/material.dart';
import 'package:alqe_flutter/gridview/grid_latihan.dart';
import 'package:alqe_flutter/listview_widget/list_basic.dart';
import 'package:alqe_flutter/navigation/menu.dart';

class AppRoute {
  static const menu = '/';
  static const list = '/list';
  static const grid = '/grid';
  static const listBasic = '/list-basic';
  

  static Map<String, WidgetBuilder> routes = {
    menu: (context) => ContohNav(),
    list: (context) => GridGalerifoto(),
    listBasic: (context) => ListBasic(),
  };
}
