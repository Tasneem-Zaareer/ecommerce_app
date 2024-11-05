import 'package:easy_localization/easy_localization.dart';
import 'package:ecommerce_app/core/widgets/general/custom_text.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/image_path.dart';

class AllProductsView extends StatelessWidget {
  final String title;
  final List productsList;
  const AllProductsView({
    super.key,
    required this.title,
    required this.productsList,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
        
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) => Column(
          children: [
            Image.asset(
              AppImages.categoryTestImage,
            ),
            CustomText(
              text: tr('Product Name'),
            )
          ],
        ),
      ),
    );
  }
}
