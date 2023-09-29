import 'package:flutter/material.dart';
import 'package:mara/utils/appHelper/appDimensions.dart';

import '../../../../utils/appHelper/appFontFamily.dart';
import '../../../../utils/images.dart';

class ProductWidget extends StatelessWidget {
  ProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 510,
      child: ListView.builder(
          itemCount: 5,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          physics: AlwaysScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 136,
                    width: 186,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Theme.of(context).hintColor.withOpacity(0.11)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        ConstantImage.dummy,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  AppDimensions().vSpace10(),
                  Text(
                    "Design Thinking ...",
                    textAlign: TextAlign.center,
                    style: AppFontFamily().roboto.copyWith(
                        fontSize: 16,
                        color: Theme.of(context).highlightColor,
                        fontWeight: FontWeight.w500),
                  ),
                  AppDimensions().vSpace5(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.person,
                        size: 25,
                        color: Theme.of(context).disabledColor,
                      ),
                      AppDimensions().hSpace5(),
                      Text(
                        "Ralph Edwards",
                        textAlign: TextAlign.center,
                        style: AppFontFamily().roboto.copyWith(
                            fontSize: 16,
                            color: Theme.of(context).disabledColor,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                  AppDimensions().vSpace5(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Rs 196",
                        textAlign: TextAlign.center,
                        style: AppFontFamily().roboto.copyWith(
                            fontSize: 16,
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w700),
                      ),
                      AppDimensions().hSpace5(),
                      Container(
                        height: 25,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color.fromRGBO(249, 179, 53, 0.2),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: Text(
                            "Best seller",
                            textAlign: TextAlign.center,
                            style: AppFontFamily().roboto.copyWith(
                                fontSize: 14,
                                color: Color(0xffF9B335),
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            );
          }),
    );
  }
}
