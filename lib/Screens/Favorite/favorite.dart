
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../app_colors.dart';
import '../../customWidget/app_bar.dart';
import '../../customWidget/item_widget.dart';
import '../../font_style.dart';
import '../Product/product.dart';

class Favorite extends StatelessWidget {
  static const String routeName = '/favorite';

  const Favorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteLight,
      appBar: _buildAppBar(context),
      body: _buildBody(context),
    );
  }
}




  PreferredSize _buildAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize:
      Size(double.infinity, MediaQuery.of(context).size.height * .20.h),
      child: CustomAppBar(
        isHome: false,
        title: 'Favorite',
        fixedHeight: 88.0.h,
        enableSearchField: false,
        // leadingIcon: Icons.arrow_back,
        leadingOnTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.0.w, right: 20.0.w, bottom: 50.0.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildItemAndSortTile(context),
          _buildFavoriteItems(context),
        ],
      ),
    );
  }

  Widget _buildItemAndSortTile(BuildContext context) {
    return ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(
          '5 Items',
          style: FontStyles.montserratBold19(),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Sort by:',
              style: FontStyles.montserratBold12()
                  .copyWith(color: AppColors.textLightColor),
            ),
            Text(
              'Price:Lowest to high',
              style: FontStyles.montserratBold12()
                  .copyWith(color: AppColors.primaryDark),
            ),
            const Icon(
              Icons.keyboard_arrow_down,
              color: AppColors.primaryDark,
            )
          ],
        ));
  }

  Widget _buildFavoriteItems(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: 3,
        physics: const ScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 260.0.w,
            crossAxisSpacing: 10.0.h),
        itemBuilder: (_, index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context,
                  Product.routeName,
                  arguments: index);
            },
            child: ItemWidget(
              index: index,
              favoriteIcon: true,
            ),
          );
        },
      ),
    );
  }


