import 'package:easy_localization/easy_localization.dart';
import 'package:ecommerce_app/core/widgets/buttons/custom_button.dart';
import 'package:ecommerce_app/core/widgets/general/custom_container.dart';
import 'package:ecommerce_app/core/widgets/general/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class ProductDetailsView extends StatelessWidget {
  final String productImage;
  final String productName;
  final String productDescription;
  final String productPrice;
  final String productLink;
  const ProductDetailsView({
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
            Center(
              child: CustomContainer(
                height: MediaQuery.of(context).size.height * 0.45,
                child: Image.network(
                  productImage,
                  height: MediaQuery.of(context).size.height * 0.45,
                ),
              ),
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
                child: Padding(
                  padding: EdgeInsets.all(10.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: tr(productName),
                            color: Colors.black,
                          ),
                          CustomText(
                            text: tr(
                                'youCanEasilyGetThisProductByClickingOnBuyNowButtonAndYouCanSeeThePriceAndAllDetailsYouNeedBeforeYouBuyIt'),
                            // color: Theme.of(context)
                            //     .colorScheme
                            //     .secondary
                            color: Colors.grey.withOpacity(0.7),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w300,
                          ),
                        ],
                      ),
                      CustomButton(
                        height: 45.h,
                        title: tr('buyNow'),
                        textColor: Colors.white,
                        onPressed: () async {
                          await launchUrl(Uri.parse(productLink));
                        },
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
