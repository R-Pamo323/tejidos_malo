import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tejidosmalo/core/exports.dart';
import 'package:tejidosmalo/core/widgets/button_widget.dart';
import 'package:tejidosmalo/logic/detail_product/color/color_bloc.dart';

import 'package:tejidosmalo/logic/detail_product/size/size_bloc.dart';

class CustomOrderScreen extends StatelessWidget {
  const CustomOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => SizeBloc()),
        BlocProvider(create: (_) => ColorBloc()),
      ],
      child: const _CustomOrderView(),
    );
  }
}

class _CustomOrderView extends StatelessWidget {
  const _CustomOrderView();

  @override
  Widget build(BuildContext context) {
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
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 50),
                ButtonWidget(
                  onTap: () {},
                  text: "Cancel",
                  isFill: true,
                  icon: Icons.local_grocery_store_outlined,
                  height: 50,
                  isBorder: true,
                  borderRadius: 15,
                ),
                const SizedBox(height: 20),
                ButtonWidget(
                  onTap: () {},
                  text: "Submit Request",
                  isFill: true,
                  icon: Icons.create,
                  height: 50,
                  borderRadius: 15,
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
