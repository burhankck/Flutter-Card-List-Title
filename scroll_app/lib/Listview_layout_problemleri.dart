import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListviewLayoutProblemleri extends StatelessWidget {
  const ListviewLayoutProblemleri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListView Layout Problems')),
      body: Container(
        child: Column(
          children: [
            Text('Başladı'),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    height: 200,
                    color: Colors.orange.shade100,
                  ),
                  Container(
                    height: 200,
                    color: Colors.orange.shade300,
                  ),
                  Container(
                    height: 200,
                    color: Colors.orange.shade200,
                  ),
                  Container(
                    height: 200,
                    color: Colors.orange.shade500,
                  ),
                ],
              ),
            ),
            Text('Bitti'),
          ],
        ),
        decoration: BoxDecoration(
          border: Border.all(width: 4, color: Colors.red),
        ),
      ),
    );
  }
}
