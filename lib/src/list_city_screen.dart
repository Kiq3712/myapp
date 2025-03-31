import 'package:flutter/material.dart';

class ListCityScreen extends StatefulWidget {
  const ListCityScreen({super.key});

  @override
  State<ListCityScreen> createState() => _ListCityScreenState();
}

class _ListCityScreenState extends State<ListCityScreen> {
  final TextEditingController controler = TextEditingController();
  String texto = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(title: Text("Lista de Cidades")),
      body: DecoratedBox(
        decoration:BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[Color(0xFF00457D), Color(0xFF05051F)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                style: TextStyle(color: Colors.white),
                controller: controler,
                onChanged: (text) {
                  setState(() {
                    texto = text;
                  });
                },
                decoration: InputDecoration(
                  fillColor: Color(0xFF15FFFFFF),
                  filled: true,
                  hintText: "Digite uma cidade",
                  hintStyle: TextStyle(color: Colors.white),
                  suffixIcon: Icon(Icons.search, color: Colors.white),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
              ),
        ),
        SizedBox(height: 15.0),
        Text(texto, style: TextStyle(color: Colors.red, fontSize: 20.0)),
            ],
          ),
        )
      )
    );
  }
}