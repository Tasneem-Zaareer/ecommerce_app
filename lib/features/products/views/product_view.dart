import 'package:easy_localization/easy_localization.dart';
import 'package:ecommerce_app/core/widgets/buttons/custom_button.dart';
import 'package:ecommerce_app/core/widgets/general/custom_container.dart';
import 'package:ecommerce_app/core/widgets/general/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductView extends StatelessWidget {
  final String productImage;
  final String productName;
  final String productDescription;
  final String productPrice;
  final String productLink;
  const ProductView({
    super.key,
    required this.productImage,
    required this.productName,
    required this.productDescription,
    required this.productPrice,
    required this.productLink,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 234, 240),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomContainer(
              height: MediaQuery.of(context).size.height * 0.45,
              child: const Center(child: CustomText(text: 'I M G')),
            ),
            Expanded(
              child: CustomContainer(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.r),
                    topRight: Radius.circular(20.r),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CustomText(
                                text: tr(productName),
                                color: Colors.black,
                              ),
                            ],
                          ),
                          CustomText(
                            text: tr(productDescription),
                            color: Colors.grey.shade700,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w300,
                          ),
                          CustomText(
                            text: tr(productPrice),
                            color: Colors.grey.shade700,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                          ),
                          GestureDetector(
                            onTap: () {
                              
                            },
                            child: CustomButton(
                              title: tr('buyNow'),
                              textColor: Colors.white,
                              onPressed: () {
                                
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
