import 'package:flutter/material.dart';
import './controller.dart';
import './detail/view.dart';

class KategoriView extends StatefulWidget {
  @override
  _KategoriViewState createState() => _KategoriViewState();
}

class _KategoriViewState extends KategoriController {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Kategori'),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext _) => DetailKategoriView(
                      hallo: 'Seafood',
                    ))),
            leading: CircleAvatar(
              backgroundColor: Colors.red.withOpacity(.2),
              child: Icon(
                Icons.restaurant,
                color: Colors.red,
              ),
            ),
            title: Text('Seafood'),
          )
        ],
      ),
    );
  }
}
