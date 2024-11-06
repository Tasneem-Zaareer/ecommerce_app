import 'package:ecommerce_app/features/products/view_model/product_model.dart';
import 'package:ecommerce_app/features/products/views/product_card.dart';
import 'package:ecommerce_app/features/products/views/product_details_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForYouProductsList extends StatelessWidget {
  //should be a list of products
  final List<ProductModel> forYouproductsListItems;
  const ForYouProductsList({
    super.key,
    required this.forYouproductsListItems,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 390.h,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        itemCount: forYouproductsListItems.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns (2 in this case)
          childAspectRatio: 3 / 1.8, // Aspect ratio of each item
          crossAxisSpacing: 40.h.w,
          mainAxisSpacing: 10.w,
        ),
        itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ProductDetailsView(
                    productImage: '',
                    productName: forYouproductsListItems[index].productName,
                    productDescription:
                        forYouproductsListItems[index].productDescription,
                    productPrice: forYouproductsListItems[index].productPrice,
                    productLink: forYouproductsListItems[index].productLink,
                  ),
                ),
              );
            },
            child: ProductCard(
              productImage: forYouproductsListItems[index].productImage,
              productImageHeight: 100.h,
              productNameFontSize: 10.sp,
              productPriceFontSize: 12.sp,
              buyNowButtonHeight: 20.h,
              buyNowButtonFontSize: 9.sp,
            )),
      ),
    );
  }
}
