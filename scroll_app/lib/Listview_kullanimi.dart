import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class ListViewKullanimi extends StatelessWidget {
  ListViewKullanimi({Key? key}) : super(key: key);

  List<Ogrenci> tumOgrenciler = List.generate(
    50,
    (index) => Ogrenci(
        index + 1, 'Ogrenci adı ${index + 1}', 'Ogrencı soyadı ${index + 1}'),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Öğrenci Listesi')),
      body: ListViewSeparated(),
    );
  }

  ListView ListViewSeparated() {
    return ListView.separated(
        // Ekrandaki elemanları oluşturuyor. Yukarı aşağı inildikçe diğer elemanları oluşturuyor.
        itemBuilder: (BuildContext context, int index) {
          var oankiOgrenci = tumOgrenciler[index];
          return Card(
            color: index % 2 == 0
                ? Colors.orange.shade100
                : Colors.purple.shade100,
            child: ListTile(
              onTap: (() {
                if (index % 2 == 0) {
                  EasyLoading.instance.backgroundColor = Colors.red;
                } else {
                  EasyLoading.instance.backgroundColor = Colors.blue;
                }
                EasyLoading.showToast('Tıklandı',
                    duration: Duration(
                      seconds: 3,
                    ),
                    dismissOnTap: true,
                    toastPosition: EasyLoadingToastPosition.bottom);
              }),
              onLongPress: () {
                _alertDialogIslemleri(context);
              },
              title: Text(oankiOgrenci.isim),
              subtitle: Text(oankiOgrenci.soyisim),
              leading: CircleAvatar(
                child: Text(oankiOgrenci.id.toString()),
              ),
            ),
          );
        },
        itemCount: tumOgrenciler.length,
        separatorBuilder: (context, index) {
          var newindex = index + 1;
          if (newindex % 4 == 0) {
            return Divider(
              thickness: 2,
              color: Colors.teal,
            );
          }
          return SizedBox();
        });
  }

  ListView ClassicListView() {
    return ListView(
      children: tumOgrenciler
          .map((Ogrenci ogr) => ListTile(
                title: Text(ogr.isim),
                subtitle: Text(ogr.soyisim),
                leading: CircleAvatar(
                  child: Text(ogr.id.toString()),
                ),
              ))
          .toList(),
    );
  }
}

//context = Bu pencereyi neyden sonra neyin içine yerleştiriyim anlamına gelir.
void _alertDialogIslemleri(BuildContext myContext) {
  showDialog(
      barrierDismissible: false,
      context: myContext,
      builder: (context) {
        return AlertDialog(
          title: Text('Dialog Baslık'),
          content: SingleChildScrollView(
              child: ListBody(
            children: [
              Text('Burhan' * 50),
              Text('Burhan1' * 50),
              Text('Burhan2' * 50),
            ],
          )),
          actions: [
            ButtonBar(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Kapat'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Tamam'),
                )
              ],
            )
          ],
        );
      });
}

class Ogrenci {
  final int id;
  final String isim;
  final String soyisim;

  Ogrenci(this.id, this.isim, this.soyisim);
}
