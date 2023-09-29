import 'package:flutter/material.dart';
import 'package:mara/utils/appHelper/appFontFamily.dart';
import 'package:mara/utils/images.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget({super.key});

  List categoryList = [
    [ConstantImage.creative, "Creative"],
    [ConstantImage.business, "Business"],
    [ConstantImage.coding, "Coding"],
    [ConstantImage.gaming, "Gaming"],
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
          itemCount: categoryList.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          physics: AlwaysScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 64,
                    width: 77,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Theme.of(context).hintColor.withOpacity(0.11)),
                    child: Image.asset(
                      categoryList[index][0],
                      scale: 1.2,
                    ),
                  ),
                  Text(
                    "${categoryList[index][1]}",
                    textAlign: TextAlign.center,
                    style: AppFontFamily().roboto.copyWith(
                        fontSize: 14,
                        color: Theme.of(context).highlightColor,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
