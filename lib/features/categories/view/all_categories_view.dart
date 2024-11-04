import 'package:ecommerce_app/core/widgets/general/custom_text.dart';
import 'package:flutter/material.dart';

class AllCategoriesView extends StatelessWidget {
  const AllCategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: CustomText(text: ' all categories')),
            ],
          ),
        ));
  }
}
