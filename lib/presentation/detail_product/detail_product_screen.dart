import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tejidosmalo/core/exports.dart';
import 'package:tejidosmalo/core/widgets/button_widget.dart';

class DetailProductScreen extends StatelessWidget {
  const DetailProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0; // índice del botón seleccionado

    final List<String> sizes = [
      'Small (30x40")',
      'Medium (40x50")',
      'Large (50x60")',
    ];

    final List<String> colors = [
      'Sky Blue',
      'Blush Pink',
      'Cream White',
      'Soft Grey',
    ];

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
                    "Hand-Crocheted Cloud Baby Blanket",
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
                CarouselSlider.builder(
                  itemCount: 6,
                  options: CarouselOptions(
                    height: 280.0,
                    viewportFraction: 1,
                    autoPlay: true,
                  ),
                  itemBuilder: (
                    BuildContext context,
                    int itemIndex,
                    int pageViewIndex,
                  ) {
                    return SizedBox(
                      height: 280.0,
                      width: double.infinity,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.asset(MyImages.splash1, fit: BoxFit.cover),
                          Positioned.fill(
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.center,
                                  colors: [
                                    Colors.white.withValues(alpha: 0.5),
                                    Colors.white.withValues(alpha: 0.000001),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                bottom: 10,
                                left: 10,
                              ),
                              child: Text(
                                "Chunky Knit Beanie with Pom",
                                style: MyStyles.instance.black18W500OpenSans,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hand-Crocheted Cloud Baby Blanket",
                        style: MyStyles.instance.yellow24W700Outfit,
                      ),
                      const SizedBox(height: 15),
                      Text(
                        "S/. 59.99",
                        style: MyStyles.instance.black20W500Outfit,
                      ),
                      const SizedBox(height: 15),
                      Text(
                        "Wrap your little one in pure comfort with our Hand-Crocheted Cloud Baby Blanket. Lovingly crafted from the softest organic cotton yarn, this blanket features a delicate, airy cloud design that is perfect for nursery decor, stroller rides, or snuggle time. Each stitch is made with care, ensuring a durable yet gentle texture against sensitive skin. Ideal for gifting, it’s a timeless piece that brings warmth and coziness. Dimensions: Approximately 30x40 inches. Machine washable on gentle cycle.",
                        style: MyStyles.instance.gray14W400OpenSans,
                      ),
                      const SizedBox(height: 40),
                      Text("Size", style: MyStyles.instance.black18W500Outfit),
                      const SizedBox(height: 20),
                      Wrap(
                        spacing: 12,
                        runSpacing: 12,
                        children: List.generate(sizes.length, (index) {
                          final isSelected = selectedIndex == index;

                          return InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(50),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 8,
                              ),
                              decoration: BoxDecoration(
                                color: isSelected ? Colors.black : Colors.white,
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                  color:
                                      isSelected
                                          ? Colors.black
                                          : const Color(0xFFE3E4E8),
                                  width: 1.5,
                                ),
                              ),
                              child: Text(
                                sizes[index],
                                style: TextStyle(
                                  color:
                                      isSelected ? Colors.white : Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                      const SizedBox(height: 40),
                      Text("Color", style: MyStyles.instance.black18W500Outfit),
                      const SizedBox(height: 20),
                      Wrap(
                        spacing: 12,
                        runSpacing: 12,
                        children: List.generate(colors.length, (index) {
                          final isSelected = selectedIndex == index;
                          return InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(50),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 8,
                              ),
                              decoration: BoxDecoration(
                                color: isSelected ? Colors.black : Colors.white,
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                  color:
                                      isSelected
                                          ? Colors.black
                                          : const Color(0xFFE3E4E8),
                                  width: 1.5,
                                ),
                              ),
                              child: Text(
                                colors[index],
                                style: TextStyle(
                                  color:
                                      isSelected ? Colors.white : Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                      const SizedBox(height: 50),
                      ButtonWidget(
                        onTap: () {},
                        text: "Add to Cart",
                        isFill: true,
                        icon: Icons.local_grocery_store_outlined,
                        height: 50,
                      ),
                      const SizedBox(height: 20),
                      ButtonWidget(
                        onTap: () {},
                        text: "Request Custom Order",
                        isFill: true,
                        icon: Icons.note_add,
                        isBorder: true,
                        height: 50,
                      ),
                      const SizedBox(height: 40),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
