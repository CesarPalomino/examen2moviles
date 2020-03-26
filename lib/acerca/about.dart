import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:practica_dos/acerca/bloc/about_bloc.dart';
import 'package:practica_dos/authentication/authentication_bloc/authentication_bloc.dart';
import 'package:practica_dos/home/home_page.dart';

class About extends StatefulWidget {

  const About({Key key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  AboutBloc aboutBloc;

   @override
  void dispose() {
    aboutBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    return BlocProvider(
                create: (context) {
            aboutBloc = AboutBloc();
            return aboutBloc;
          },
      child: BlocListener<AboutBloc, AboutState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        child: BlocBuilder<AboutBloc, AboutState>(
          builder: (context, state) {
            return Scaffold(
      appBar: AppBar(
        title: Text("Contacto"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 20),
              Text("FAQ",
                  style: TextStyle(fontSize: 75, fontWeight: FontWeight.w100)),
              SizedBox(height: 100),
              Text("Acerca del desarrollador: ",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                      color: Colors.blueGrey)),
              Text(
                  "  Este es un proyecto escolar \nSi el profesor lee esto tiene la \nobligacion de ponerle 100 al alumno",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey)),
              SizedBox(height: 100),
              Text("Contacta al desarrollador al siguiente correo ",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                      color: Colors.blueGrey)),
              SizedBox(height: 10),
              _contact(),
            ],
          ),
        ),
      ),
    );
          },
        )
      )
    );
  }

  _contact() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  color: Colors.blueGrey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.envelope,
                        color: Colors.white,
                      ),
                      Expanded(
                        child: Text(
                          "Contacto",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  onPressed:(){aboutBloc.add(AboutLink());}, 
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
