import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tejidosmalo/logic/custom_order/image_picker/image_picker_bloc.dart';
import 'package:tejidosmalo/logic/custom_order/image_picker/image_picker_event.dart';
import 'package:tejidosmalo/logic/custom_order/image_picker/image_picker_state.dart';

import '../../../core/exports.dart';

class ImageUploadWidget extends StatelessWidget {
  const ImageUploadWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // BlocBuilder reconstruye la UI en respuesta a los cambios de estado
        BlocBuilder<ImagePickerBloc, ImagePickerState>(
          builder: (context, state) {
            Widget content;
            if (state is ImagePickerSuccess) {
              // Si la imagen se seleccionó, muéstrala
              content = Image.file(
                state.image,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              );
            } else {
              // Estado inicial o de error, muestra el placeholder
              content = Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.cloud_upload_outlined,
                    size: 40,
                    color: MyColors.instance.gray4B4A4E,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    state is ImagePickerFailure
                        ? state
                            .error // Muestra el mensaje de error si existe
                        : 'Toca para seleccionar una imagen',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color:
                          state is ImagePickerFailure
                              ? Colors.red
                              : MyColors.instance.gray4B4A4E,
                    ),
                  ),
                ],
              );
            }

            return GestureDetector(
              onTap: () {
                // Envía el evento al BLoC para iniciar la selección de imagen
                context.read<ImagePickerBloc>().add(PickImageEvent());
              },
              child: DottedBorderContainer(child: content),
            );
          },
        ),
      ],
    );
  }
}

class DottedBorderContainer extends StatelessWidget {
  final Widget child;

  const DottedBorderContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        color: MyColors.instance.background,
        border: Border.all(
          color: MyColors.instance.grayE3E4E8,
          style: BorderStyle.solid,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(child: child),
    );
  }
}
