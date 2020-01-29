import 'package:flutter/material.dart';
import 'funcoes_auxiliares.dart';
import 'dart:async';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  final _formKey = GlobalKey<FormState>();
  Future<TimeOfDay> tempo;
  final nomeRemedio = TextEditingController();
  int hora;
  int minuto;

  @override
  void dispose() {
    nomeRemedio.dispose();
    super.dispose();
  }

  @override
  void initState() {
    TimeOfDay timeNow = new TimeOfDay.now();
    this.hora = timeNow.hour;
    this.minuto = timeNow.minute;
    super.initState();
  }

  void _setTempo(TimeOfDay time){
    setState(() {
        this.hora = time.hour;
        this.minuto = time.minute;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de Remédio"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: nomeRemedio,
                decoration: InputDecoration(labelText: "Nome do Remédio"),
              ),
              SizedBox(
                height: 30,
              ),
              RaisedButton(
                child: Text("Horário"),
                onPressed: () {
                  tempo = showTimePicker(
                    initialTime: TimeOfDay.now(),
                    context: context,
                  );
                  tempo.then((value){
                    if(value != null) {
                      _setTempo(value);
                    } 
                  });
                },
              ),
              SizedBox(
                height: 30,
              ),
              Text('Horario selecionado: $hora\h e $minuto\m'),
              SizedBox(
                height: 30,
              ),
              RaisedButton(
                child: Text("Obter Imagem do celular"),
                onPressed: (){
                   FuncoesAuxiliares().openFileExplorerFirebase();
                },
              ),
              SizedBox(
                height: 30,
              ),
              RaisedButton(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.camera),
                    Text("Tirar Foto"),
                  ],
                ),
                onPressed: (){
                  Navigator.pushNamed(context, '/widgetCamera');
                },
              ),
              SizedBox(
                height: 30,
              ),
              RaisedButton(
                child: Text("Cadastrar"),
                onPressed: (){

                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
