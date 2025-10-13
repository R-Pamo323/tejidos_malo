import 'dart:io';

import 'package:equatable/equatable.dart';

abstract class ImagePickerState extends Equatable {
  const ImagePickerState();

  @override
  List<Object?> get props => [];
}

// Estado inicial, no hay imagen seleccionada
class ImagePickerInitial extends ImagePickerState {}

// Estado cuando la imagen se ha seleccionado correctamente
class ImagePickerSuccess extends ImagePickerState {
  final File image;
  const ImagePickerSuccess(this.image);

  @override
  List<Object?> get props => [image];
}

// Estado en caso de error al seleccionar la imagen
class ImagePickerFailure extends ImagePickerState {
  final String error;
  const ImagePickerFailure(this.error);

  @override
  List<Object?> get props => [error];
}
