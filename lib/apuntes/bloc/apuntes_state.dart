part of 'apuntes_bloc.dart';

abstract class ApuntesState extends Equatable {
  const ApuntesState();
}

class ApuntesInitial extends ApuntesState {
  @override
  List<Object> get props => [];
}

class CloudStoreError extends ApuntesState {
  final String errorMessage;

  CloudStoreError({@required this.errorMessage});
  @override
  List<Object> get props => [errorMessage];
}

class CloudStoreRemoved extends ApuntesState {
  @override
  List<Object> get props => [];
}

class CloudStoreSaved extends ApuntesState {
  @override
  List<Object> get props => [];
}

class CloudStoreGetData extends ApuntesState {
  @override
  List<Object> get props => [];
}
// nuevos estdos
class CargandoDatos extends ApuntesState {
  final bool isLoading;

  CargandoDatos({@required this.isLoading});
   @override
  List<Object> get props => [isLoading];
}


class UrldeImagen extends ApuntesState {
  final String urlimagen;

  UrldeImagen({@required this.urlimagen});
   @override
  List<Object> get props => [urlimagen];
}


class BooldeApunte extends ApuntesState{
  final bool b;

  BooldeApunte({@required this.b});

  List<Object> get props => [b];
}
class ImagedeGaleria extends ApuntesState{
  final File imagen;

  ImagedeGaleria({@required this.imagen});

  List<Object> get props => [imagen];
}
