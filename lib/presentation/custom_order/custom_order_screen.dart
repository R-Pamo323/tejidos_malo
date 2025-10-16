import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:tejidosmalo/core/exports.dart';
import 'package:tejidosmalo/core/widgets/button_widget.dart';
import 'package:tejidosmalo/logic/custom_order/color_palette/color_palette_bloc.dart';
import 'package:tejidosmalo/logic/custom_order/color_palette/color_palette_event.dart';
import 'package:tejidosmalo/logic/custom_order/color_palette/color_palette_state.dart';
import 'package:tejidosmalo/logic/custom_order/image_picker/image_picker_bloc.dart';
import 'package:tejidosmalo/logic/custom_order/image_picker/image_picker_state.dart';
import 'package:tejidosmalo/logic/custom_order/selected_checkbox/selected_checbox_bloc.dart';
import 'package:tejidosmalo/logic/custom_order/selected_checkbox/selected_checkbox_event.dart';
import 'package:tejidosmalo/logic/custom_order/selected_checkbox/selected_checkbox_state.dart';

import 'package:tejidosmalo/presentation/custom_order/widgets/image_upload.dart';

class CustomOrderScreen extends StatelessWidget {
  const CustomOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ColorPaletteBloc()),
        BlocProvider(create: (_) => ImagePickerBloc()),
        BlocProvider(create: (_) => SelectedCheckboxBloc()),
      ],
      child: const _CustomOrderView(),
    );
  }
}

class _CustomOrderView extends StatelessWidget {
  const _CustomOrderView();

  @override
  Widget build(BuildContext context) {
    final List<Color> colorsPalette = [
      MyColors.instance.yellowFDF1E6,
      MyColors.instance.greenD6EADD,
      MyColors.instance.redF0D8D8,
      MyColors.instance.blueD9ECF5,
      MyColors.instance.purpleE7DCF2,
      MyColors.instance.brownE1BBA4,
    ];

    final state = context.watch<ColorPaletteBloc>().state;
    final selectedColor =
        state.isCustomColorSelected
            ? state.customColor
            : (state.selectedIndex >= 0 &&
                    state.selectedIndex < colorsPalette.length
                ? colorsPalette[state.selectedIndex]
                : MyColors.instance.white);

    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: MyColors.instance.bgBottomNavigationBar,
            titleSpacing: 0,
            title: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 48),
                  child: Text(
                    "Custom Order Request",
                    textAlign: TextAlign.center,
                    style: MyStyles.instance.yellow18W700Outfit,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            width: double.infinity,
            decoration: BoxDecoration(
              color: MyColors.instance.white,
              border: Border.symmetric(
                horizontal: BorderSide(
                  color: MyColors.instance.grayE3E4E8,
                  width: 2,
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Design Preferences",
                  style: MyStyles.instance.yellow20W700Outfit,
                ),
                const SizedBox(height: 10),
                Text(
                  "Tell us about the custom crochet item you envision",
                  style: MyStyles.instance.gray14W400OpenSans,
                ),
                const SizedBox(height: 15),
                Text(
                  "Tamaño deseado",
                  style: MyStyles.instance.black17171716W500OpenSans,
                ),
                const SizedBox(height: 10),
                ButtonTheme(
                  alignedDropdown: true,
                  padding: EdgeInsets.zero,
                  child: DropdownButtonFormField(
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: MyColors.instance.gray4B4A4E,
                      size: 24,
                    ),
                    value: "2",
                    style: MyStyles.instance.gray16W500OpenSans,
                    dropdownColor: MyColors.instance.background,
                    hint: Text(
                      "Selecciona",
                      style: MyStyles.instance.gray16W500OpenSans,
                    ),
                    /*items: controller.refillServiceModel.data == null
                          ? []
                          : controller.refillServiceModel.data!
                              .map<DropdownMenuItem<String>>((e) {
                              return DropdownMenuItem<String>(
                                  value: e.id.toString(), child: Text(e.name!));
                            }).toList(),*/
                    items: [
                      DropdownMenuItem<String>(
                        value: "2",
                        child: Text("30x40 inches"),
                      ),
                      DropdownMenuItem<String>(
                        value: "3",
                        child: Text("30x50 inches"),
                      ),
                      DropdownMenuItem<String>(
                        value: "4",
                        child: Text("30x60 inches"),
                      ),
                      DropdownMenuItem<String>(
                        value: "5",
                        child: Text("40x40 inches"),
                      ),
                      DropdownMenuItem<String>(
                        value: "6",
                        child: Text("40x50 inches"),
                      ),
                      DropdownMenuItem<String>(
                        value: "7",
                        child: Text("40x60 inches"),
                      ),
                      DropdownMenuItem<String>(
                        value: "8",
                        child: Text("50x50 inches"),
                      ),
                      DropdownMenuItem<String>(
                        value: "9",
                        child: Text("50x60 inches"),
                      ),
                      DropdownMenuItem<String>(
                        value: "10",
                        child: Text("50x70 inches"),
                      ),
                    ],
                    onChanged: (value) {
                      //controller.dropDownCountryBank(value as String);
                    },
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 10,
                      ),
                      filled: true,
                      isDense: true,
                      fillColor: MyColors.instance.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(
                          color: MyColors.instance.grayE3E4E8,
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(
                          color: MyColors.instance.grayE3E4E8,
                          width: 2.0,
                        ),
                      ),
                      hintStyle: MyStyles.instance.gray16W500OpenSans,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  "Color Preferido",
                  style: MyStyles.instance.black17171716W500OpenSans,
                ),
                const SizedBox(height: 10),
                BlocBuilder<ColorPaletteBloc, ColorPaletteState>(
                  builder: (context, state) {
                    return SizedBox(
                      height: 45,
                      child: ListView.builder(
                        itemCount: colorsPalette.length,
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          final isSelected = state.selectedIndex == index;
                          return InkWell(
                            onTap: () {
                              context.read<ColorPaletteBloc>().add(
                                ColorPaletteSelected(index),
                              );
                            },
                            borderRadius: BorderRadius.circular(50),
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 250),
                              curve: Curves.easeOut,
                              margin: const EdgeInsets.only(right: 15),
                              height: isSelected ? 55 : 45,
                              width: isSelected ? 55 : 45,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    isSelected
                                        ? Border.all(
                                          color: MyColors.instance.black,
                                          width: 3,
                                        )
                                        : null,
                              ),
                              child: Container(
                                margin: const EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  color: colorsPalette[index],
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: MyColors.instance.gray727272,
                                    width: 1.5,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),

                const SizedBox(height: 10),
                BlocBuilder<SelectedCheckboxBloc, SelectedCheckboxState>(
                  builder: (context, state) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Checkbox(
                              activeColor: MyColors.instance.yellowCF9201,
                              value: state.checkSelected,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              onChanged: (bool? newValue) {
                                context.read<SelectedCheckboxBloc>().add(
                                  CheckboxSelected(!state.checkSelected),
                                );
                              },
                            ),
                            Text(
                              'Escoge un color personalizado',
                              style:
                                  MyStyles.instance.black17171714W500OpenSans,
                            ),
                          ],
                        ),
                        Visibility(
                          visible: state.checkSelected == true,
                          child: AlertDialog(
                            title: const Text('Pick a color!'),
                            content: SingleChildScrollView(
                              child: ColorPicker(
                                paletteType: PaletteType.hueWheel,
                                pickerColor: Colors.yellow,
                                onColorChanged: (color) {
                                  context.read<ColorPaletteBloc>().add(
                                    CustomColorSelected(color),
                                  );
                                },
                              ),
                            ),
                            actions: <Widget>[
                              ElevatedButton(
                                child: const Text('Got it'),
                                onPressed: () {
                                  //setState(() => currentColor = pickerColor);
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),

                const SizedBox(height: 15),
                Text(
                  "Preferencias de estilo y diseño",
                  style: MyStyles.instance.black17171716W500OpenSans,
                ),
                const SizedBox(height: 10),
                TextFormField(
                  maxLines: 5,
                  minLines: 5,
                  keyboardType: TextInputType.multiline,
                  style: MyStyles.instance.black14W400OpenSans,
                  onChanged: (value) {
                    //controller.email = value;
                  },
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 10,
                    ),
                    filled: true,
                    isDense: true,
                    fillColor: MyColors.instance.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(
                        color: MyColors.instance.grayE3E4E8,
                        width: 2.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(
                        color: MyColors.instance.grayE3E4E8,
                        width: 2.0,
                      ),
                    ),
                    hintText:
                        "Describe any specific design elements, patterns, or inspirations you have in mind.",
                    hintStyle: MyStyles.instance.gray14W400OpenSans,
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  "Imagen de Referencia",
                  style: MyStyles.instance.yellow20W700Outfit,
                ),
                const SizedBox(height: 10),
                Text(
                  "Sube una imagen para ayudarnos a entender mejor tu visión (opcional)",
                  style: MyStyles.instance.gray14W400OpenSans,
                ),
                const SizedBox(height: 15),
                Text(
                  "Upload Image",
                  style: MyStyles.instance.black17171716W500OpenSans,
                ),
                const SizedBox(height: 15),
                BlocListener<ImagePickerBloc, ImagePickerState>(
                  listener: (context, state) {
                    if (state is ImagePickerSuccess) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('¡Imagen seleccionada!'),
                          backgroundColor: Colors.green,
                        ),
                      );
                      // Aquí puedes, por ejemplo, habilitar un botón de "Guardar"
                    } else if (state is ImagePickerFailure) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Error: ${state.error}'),
                          backgroundColor: Colors.red,
                        ),
                      );
                    }
                  },
                  child: ImageUploadWidget(),
                ),
                const SizedBox(height: 20),
                Divider(color: MyColors.instance.grayE3E4E8, thickness: 2),
                const SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonWidget(
                      onTap: () {},
                      text: "Cancel",
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.42,
                      isBorder: true,
                      borderRadius: 10,
                      paddingHorizontal: 15,
                    ),

                    ButtonWidget(
                      onTap: () {},
                      text: "Submit Request",
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.42,
                      borderRadius: 10,
                      paddingHorizontal: 15,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
