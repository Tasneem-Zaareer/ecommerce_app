import 'package:ecommerce_app/features/search/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/general/custom_text.dart';
import '../../../declaration/declaration_viw.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomText(
                text: 'Gifts4All',
                color: Colors.grey,
              ),
              SizedBox(width: 2),
              CustomText(
                text: 'STORE',
                color: Colors.grey,
                fontSize: 8,
              ),
            ],
          ),
          // GestureDetector(
          //   onTap: () {
          //     Navigator.of(context).push(
          //       MaterialPageRoute(
          //         builder: (context) => const SearchView(),
          //       ),
          //     );
          //   },
          //   child: Icon(Icons.search, color: Colors.grey, size: 24.sp),
          // )

          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const DeclarationView(),
                ),
              );
            },
            child: Icon(Icons.info, color: Colors.grey, size: 24.sp),
          )
        ],
      ),
    );
  }
}
