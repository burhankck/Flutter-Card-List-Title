import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardveListtitleKullanimi extends StatelessWidget {
  const CardveListtitleKullanimi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card ve List title'),
      ),
      body: Center(
        child: ListView(
          reverse: true,
          children: [
            Column(
              children: [
                TekListeElemani(),
                TekListeElemani(),
                TekListeElemani(),
                TekListeElemani(),
                TekListeElemani(),
                TekListeElemani(),
                TekListeElemani(),
                TekListeElemani(),
                TekListeElemani(),
                TekListeElemani(),
                TekListeElemani(),
                TekListeElemani(),
              ],
            ),
            Center(child: Text('Selam')),
            ElevatedButton(onPressed: () {}, child: Text('button')),
          ],
        ),
      ),
    );
  }

  SingleChildScrollView SingleChildScrollKullan() {
    return SingleChildScrollView(
      child: Column(
        children: [
          TekListeElemani(),
          TekListeElemani(),
          TekListeElemani(),
          TekListeElemani(),
          TekListeElemani(),
          TekListeElemani(),
          TekListeElemani(),
          TekListeElemani(),
          TekListeElemani(),
          TekListeElemani(),
          TekListeElemani(),
          TekListeElemani(),
        ],
      ),
    );
  }

  Column TekListeElemani() {
    return Column(
      children: [
        Card(
          color: Colors.blue.shade200,
          shadowColor: Colors.red,
          elevation: 12,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: ListTile(
            leading: CircleAvatar(child: Icon(Icons.add)),
            title: Text('Başlık kısmı'),
            subtitle: Text('Alt Başlık kısmı'),
            trailing: Icon(Icons.home),
          ),
        ),
        Divider(
          color: Colors.red,
          thickness: 3,
          height: 10,
          indent: 60,
          endIndent: 60,
        )
      ],
    );
  }
}
