import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:meta/meta.dart';

part 'about_event.dart';
part 'about_state.dart';

class AboutBloc extends Bloc<AboutEvent, AboutState> {
  @override
  AboutState get initialState => AboutInitial();

  @override
  Stream<AboutState> mapEventToState(
    AboutEvent event,
  ) async* {
    if(event is AboutLink){
      await _email();
      yield AboutInitial();
    }
    // TODO: implement mapEventToState
  }

  
  _email() async{final Email email = Email(
  body: 'Email body',
  subject: 'Envio de comentario',
  recipients: ['is716790@iteso.mx'],
  isHTML: false,
);
  await FlutterEmailSender.send(email);
} 


}
