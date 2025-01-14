import 'package:ecommerce_app/core/widgets/buttons/custom_back_icon.dart';
import 'package:ecommerce_app/core/widgets/buttons/custom_button.dart';
import 'package:ecommerce_app/core/widgets/general/custom_text.dart';
import 'package:flutter/material.dart';

import '../../core/constants/image_path.dart';

class DeclarationView extends StatelessWidget {
  const DeclarationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            AppImages.homeHeaderImage,
            fit: BoxFit.cover,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.7),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CustomText(
                  text:
                      'Thank you for supporting our efforts! We participate in the Amazon Affiliate Program, which allows us to earn a small commission at no extra cost to you when you purchase products through the links we provide. The images and product recommendations we share are carefully chosen to help you make informed decisions. Your trust and support mean the world to us.',
                  color: Colors.white,
                  fontSize: 16,
                  textAlign: TextAlign.justify,
                  maxLines: 20,
                ),
                SizedBox(height: 25),
                Container(
                  // height: 10,
                  // width: 10,
                  child: CustomButton(
                    title: 'Got it 🤍',
                    background: Colors.orange,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
