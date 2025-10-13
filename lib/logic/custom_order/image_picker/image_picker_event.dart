import 'package:equatable/equatable.dart';

abstract class ImagePickerEvent extends Equatable {
  const ImagePickerEvent();

  @override
  List<Object> get props => [];
}

// Evento que se dispara cuando el usuario quiere seleccionar una imagen
class PickImageEvent extends ImagePickerEvent {}
