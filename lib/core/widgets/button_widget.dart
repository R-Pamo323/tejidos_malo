import 'package:flutter/material.dart';
import 'package:tejidosmalo/app/theme/my_colors.dart';
import 'package:tejidosmalo/app/theme/my_styles.dart';

class ButtonWidget extends StatelessWidget {
  final String? text;
  final double? width;
  final double? height;
  final bool? isFill;
  final bool? isBlocked;
  final bool? isBorder;
  final double? borderRadius;
  final IconData? icon;
  final double? paddingHorizontal;
  final void Function() onTap;

  const ButtonWidget({
    super.key,
    this.text,
    this.width,
    this.height = 60,
    required this.onTap,
    this.isFill,
    this.isBlocked,
    this.isBorder,
    this.icon,
    this.borderRadius = 50,
    this.paddingHorizontal = 20,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (isBlocked ?? false) ? () {} : onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: paddingHorizontal!),
        height: height,
        width:
            (isFill ?? false)
                ? MediaQuery.of(context).size.width * 0.85
                : width,
        decoration: BoxDecoration(
          border:
              (isBlocked ?? false)
                  ? Border.all(width: 1, color: MyColors.instance.gray4B4A4E)
                  : (isBorder ?? false)
                  ? Border.all(width: 1, color: MyColors.instance.black171717)
                  : Border.all(width: 1, color: MyColors.instance.yellowCF9201),
          color:
              (isBlocked ?? false)
                  ? MyColors.instance.gray4B4A4E
                  : (isBorder ?? false)
                  ? Colors.transparent
                  : MyColors.instance.yellowCF9201,
          borderRadius: BorderRadius.circular(borderRadius!),
        ),
        child: Center(
          child:
              (icon != null)
                  ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        icon,
                        size: 18,
                        color:
                            (isBorder ?? false)
                                ? MyColors.instance.black171717
                                : MyColors.instance.white,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        text ?? '',
                        style:
                            (isBorder ?? false)
                                ? MyStyles.instance.black17171714W500OpenSans
                                : MyStyles.instance.white14W700OpenSans,
                      ),
                    ],
                  )
                  : Text(
                    text ?? '',
                    style:
                        (isBlocked ?? false)
                            ? MyStyles.instance.gray16W500OpenSans
                            : (isBorder ?? false)
                            ? MyStyles.instance.black17171716W500OpenSans
                            : MyStyles.instance.white16W500Outfit,
                  ),
        ),
      ),
    );
  }
}
