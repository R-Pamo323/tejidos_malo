import 'package:flutter/material.dart';
import 'package:tejidosmalo/core/exports.dart';

class DetailProductScreen extends StatelessWidget {
  const DetailProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        centerTitle: true,
        title: Text(
          "Hand-Crocheted Cloud Baby Blankedasdat",
          textAlign: TextAlign.center,
          style: MyStyles.instance.yellow18W700Outfit,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        backgroundColor: MyColors.instance.bgBottomNavigationBar,
      ),
      body: Container(
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
        child: Column(children: [Text("Detail Crochet")]),
      ),
    );
  }
}
