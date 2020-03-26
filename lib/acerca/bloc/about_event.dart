part of 'about_bloc.dart';

@immutable
abstract class AboutEvent extends  Equatable{
  const AboutEvent();
}

class AboutLink extends AboutEvent {

  @override
  List<Object> get props => [];
}