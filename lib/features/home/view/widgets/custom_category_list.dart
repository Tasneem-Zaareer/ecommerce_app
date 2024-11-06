import 'package:easy_localization/easy_localization.dart';
import 'package:ecommerce_app/core/constants/image_path.dart';
import 'package:ecommerce_app/core/widgets/general/custom_text.dart';
import 'package:ecommerce_app/features/products/view_model/product_model.dart';
import 'package:ecommerce_app/features/products/views/product_card.dart';
import 'package:ecommerce_app/features/products/views/product_details_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/widgets/general/custom_container.dart';

class CustomCategoryList extends StatelessWidget {
  final String categoryName;
  final List<ProductModel> productsList;
  const CustomCategoryList({
    super.key,
    required this.categoryName,
    required this.productsList,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Container(
        height: 250.h,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Column(
            children: [
              GestureDetector(
                  onTap: () => {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ProductDetailsView(
                              productImage: productsList[index].productImage,
                              productName: productsList[index].productName,
                              productDescription:
                                  productsList[index].productDescription,
                              productPrice: productsList[index].productPrice,
                              productLink: productsList[index].productLink,
                            ),
                          ),
                        ),
                      },
                  child: Container(
                    height: 200.h,
                    width: 100.h,
                    child: ProductCard(
                      productImage: productsList[index].productImage,
                      productLink: productsList[index].productLink,
                      productImageHeight: 100.h,
                      productImageWidth: 100.h,
                    ),
                  )),
              SizedBox(height: 5.h),
              CustomText(
                text: tr('kids'),
                fontSize: 12.sp,
              )
            ],
          ),
          separatorBuilder: (context, index) => SizedBox(width: 10.w),
          itemCount: productsList.length,
        ),
      ),
    );
  }
}
