import 'package:alqe_flutter/container_widget/container_widget.dart';
import 'package:alqe_flutter/container_widget/latihan_container.dart';
import 'package:alqe_flutter/gridview/grid_basic.dart';
import 'package:alqe_flutter/gridview/grid_builder_widget.dart';
import 'package:alqe_flutter/gridview/grid_latihan.dart';
import 'package:alqe_flutter/listview_widget/lisr_builder2.dart';
import 'package:alqe_flutter/listview_widget/list_basic.dart';
import 'package:alqe_flutter/listview_widget/list_builder_widget.dart';
import 'package:alqe_flutter/listview_widget/list_separated.dart';
import 'package:alqe_flutter/listview_widget/tugas_list.dart';
import 'package:alqe_flutter/navigation/about_page.dart';
import 'package:alqe_flutter/navigation/contoh_nav.dart';
import 'package:alqe_flutter/row_column.dart/column_widget.dart';
import 'package:alqe_flutter/row_column.dart/latihan_row_widget.dart';
import 'package:alqe_flutter/row_column.dart/layout_widget.dart';
import 'package:alqe_flutter/row_column.dart/row_column.dart';
import 'package:alqe_flutter/row_column.dart/row_widget.dart';
import 'package:alqe_flutter/sized_box_stack_expanded_position/ExpendedWisget.dart';
import 'package:alqe_flutter/sized_box_stack_expanded_position/LatihanSatu.dart';
import 'package:alqe_flutter/sized_box_stack_expanded_position/LayoutDua.dart';
import 'package:alqe_flutter/sized_box_stack_expanded_position/LayoutEmpat.dart';
import 'package:alqe_flutter/sized_box_stack_expanded_position/LayoutSatu.dart';
import 'package:alqe_flutter/sized_box_stack_expanded_position/LayoutTiga.dart';
import 'package:alqe_flutter/sized_box_stack_expanded_position/SizeBoxWidget.dart';
import 'package:alqe_flutter/sized_box_stack_expanded_position/StackWidget.dart';
import 'package:flutter/material.dart';

// bagian main app
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => ContohNav(),
        '/about': (context) => AboutPage(
          nama: 'Alqe yarfha Nur Muslim',
          kelas: 'XII RPL 3',
          umur: 17,
        ),
        '/container': (context) => BelajarContainer(),
        '/latihan-container': (context) => LatihanContainer(),
        '/grid': (context) => GridGalerifoto(),
        '/grid-basic': (context) => GridBasic(),
        '/grid-builder': (context) => GridBuilderWidget(),
        '/grid-latihan': (context) => GridGalerifoto(),
        '/list': (context) => ListSeparated(),
        '/list-basic': (context) => ListBasic(),
        '/list-builder': (context) => ListBuilderWidget(),
        '/list-builder2': (context) => ListBuilder2(),
        '/list-separated': (context) => ListSeparated(),
        '/tugas-list': (context) => TugasList(),
        '/row': (context) => RowWidget(),
        '/column': (context) => ColumnWidget(),
        '/layout-row': (context) => LayoutRowWidget(),
        '/latihan-row': (context) => LatihanLayoutDua(),
        '/row-column': (context) => RowColumnWidget(),
        '/size-box': (context) => SizeBoxWidget(),
        '/stack': (context) => Stackwidget(),
        '/expanded': (context) => Expendedwisget(),
        '/latihan-satu': (context) => Latihansatu(),
        '/layout-satu': (context) => KartuProfil(),
        '/layout-dua': (context) => LayoutDua(),
        '/layout-tiga': (context) => KartuDashboard(),
        '/layout-empat': (context) => ProfileWidget(),
      },

      // debugShowCheckedModeBanner: false,
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: const Text("Belajar Flutter"),
      //     backgroundColor: const Color.fromARGB(255, 249, 248, 250),
      //   ),
      //   body: ContohNav(),
      // ),
    );
  }
}

class HelloWidget extends StatelessWidget {
  const HelloWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "hello flutter",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          backgroundColor: Colors.amber,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
