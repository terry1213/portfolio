import 'package:flutter/material.dart';
import 'package:portfolio/utils/screenUtilMinimum.dart';

class CareerPage extends StatelessWidget {
  final ScrollController _scrollController;

  CareerPage(this._scrollController);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: SingleChildScrollView(
        controller: _scrollController,
        child: Container(
          height: size.height > 820 ? size.height : 820,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              width: size.width - 80 > 1360 ? size.width - 80 : 1360,
              child: DefaultTextStyle(
                style: Theme.of(context).textTheme.bodyText2!,
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Career',
                        style: Theme.of(context).textTheme.headline2!,
                      ),
                      SizedBox(height: ScreenUtilMinimum(10).h),
                      Expanded(
                        child: Container(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
