import 'package:flutter/material.dart';
import './controller.dart';

class DetailKategoriView extends StatefulWidget {
  final String? hallo;

  DetailKategoriView({this.hallo});
  @override
  _DetailKategoriViewState createState() => _DetailKategoriViewState();
}

class _DetailKategoriViewState extends DetailKategoriController {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Kategori'),
      ),
      body: Container(
        child: Text(widget.hallo ?? 'sasa'),
      ),
    );
  }
}
