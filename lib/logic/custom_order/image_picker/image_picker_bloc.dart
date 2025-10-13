import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tejidosmalo/logic/custom_order/image_picker/image_picker_event.dart';
import 'package:tejidosmalo/logic/custom_order/image_picker/image_picker_state.dart';

class ImagePickerBloc extends Bloc<ImagePickerEvent, ImagePickerState> {
  final ImagePicker _picker = ImagePicker();

  ImagePickerBloc() : super(ImagePickerInitial()) {
    on<PickImageEvent>(_onPickImage);
  }

  Future<void> _onPickImage(
    PickImageEvent event,
    Emitter<ImagePickerState> emit,
  ) async {
    try {
      final pickedFile = await _picker.pickImage(source: ImageSource.gallery);

      if (pickedFile != null) {
        // Si se selecciona un archivo, emite el estado de éxito
        emit(ImagePickerSuccess(File(pickedFile.path)));
      } else {
        // Opcional: Podrías emitir un estado de "cancelado" si lo necesitas
        // Por ahora, simplemente no cambiamos el estado
      }
    } catch (e) {
      // Si ocurre un error, emite el estado de fallo
      emit(ImagePickerFailure('Error al seleccionar la imagen: $e'));
    }
  }
}
