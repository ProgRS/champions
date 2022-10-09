

import 'package:flutter/material.dart';
import '/utils/card_times.dart';
import '../data/dados_times.dart' as colecao_signos;

class ListaSignos extends StatelessWidget {

  var signos = colecao_signos.signos;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text("Principais Campeões Brasileiros"),
          centerTitle: true,
        ),
        body: GridView.count(
          padding: EdgeInsets.only(top: 20),
          crossAxisCount: 2,
          children: List.generate(
              signos.length,
                  (index) => CardTime(signos[index])
          ),
        )

    );

  }
}
