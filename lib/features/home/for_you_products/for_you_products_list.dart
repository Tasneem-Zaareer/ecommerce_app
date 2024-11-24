import 'package:ecommerce_app/features/products/view_model/product_model.dart';
import 'package:ecommerce_app/features/products/views/product_card.dart';
import 'package:ecommerce_app/features/products/views/product_details_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForYouProductsListGridView extends StatelessWidget {
  //should be a list of products
  final List<ProductModel> forYouProductsListItems;
  const ForYouProductsListGridView({
    super.key,
    required this.forYouProductsListItems,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 360.h,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        itemCount: forYouProductsListItems.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns (2 in this case)
          childAspectRatio: 3 / 2, // Aspect ratio of each item
          crossAxisSpacing: 40.h,
          mainAxisSpacing: 10.w,
        ),
        itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ProductDetailsView(
                    productImage: forYouProductsListItems[index].productImage,
                    productName: forYouProductsListItems[index].productName,
                    productDescription:
                        forYouProductsListItems[index].productDescription,
                    productPrice: forYouProductsListItems[index].productPrice,
                    productLink: forYouProductsListItems[index].productLink,
                  ),
                ),
              );
            },
            child: ProductCard(
              productImage: forYouProductsListItems[index].productImage,
              productName: forYouProductsListItems[index].productName,
              productLink: forYouProductsListItems[index].productLink,
              productImageHeight: 100.h,
              productImageWidth: 100.h,
              productNameFontSize: 10.sp,
              productPriceFontSize: 12.sp,
              buyNowButtonHeight: 25.h,
              buyNowButtonFontSize: 9.sp,
              horizontalPadding: 10.w,
            )),
      ),
    );
  }
}
