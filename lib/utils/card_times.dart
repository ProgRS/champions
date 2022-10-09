
import 'package:flutter/material.dart';

import '../pages/detalhes_times.dart';

class CardTime extends StatelessWidget {

  late String _nome;
   late String _imagem;
    late   Map _dataTime;

  CardTime(Map signo){
    this._nome = signo['Nome'];
    this._imagem = signo['Imagem'];
    this._dataTime = signo;
  }

  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: Colors.white,
          padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20)
      ),
      child: Column(
        children: [

          Image.asset("$_imagem", width: 90),

          SizedBox(height: 10),

          Text(
              "$_nome", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), textAlign: TextAlign.center
          ),

          SizedBox(height: 10),

        ],
      ),
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetalhesTime(this._dataTime)
            )
        );
      },
    );

  }
}