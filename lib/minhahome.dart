import 'package:flutter/material.dart';

class minhaHome extends StatefulWidget {
  const minhaHome({Key? key}) : super(key: key);

  @override
  _minhaHomeState createState() => _minhaHomeState();
}

class _minhaHomeState extends State<minhaHome> {
  int numero = 0;

  void entrou() {
    setState(() {
      numero++;
    });
  }

  void saiu() {
    setState(() {
      numero--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        centerTitle: true,
        title: const Text(
          'Controle',
          style: TextStyle(),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Pode mostrar',
            style: TextStyle(fontSize: 30),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '$numero',
              style: TextStyle(fontSize: 30),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      backgroundColor: Colors.brown,
                      fixedSize: Size(100, 40)),
                  onPressed: entrou,
                  child: Text(
                    'Entrar',
                    style: TextStyle(color: Colors.white),
                  )),
              SizedBox(
                height: 0,
                width: 5,
              ),
              TextButton(
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      backgroundColor: numero!=0 ? Colors.brown:Colors.redAccent.withOpacity(0.8) ,
                      fixedSize: Size(100, 40)),
                  onPressed:numero!=0 ? saiu:null, child: Text('Saiu')) ,
            ],
          )
        ],
      ),
    );
  }
}
