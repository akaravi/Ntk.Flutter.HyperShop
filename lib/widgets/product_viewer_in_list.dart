import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hypertools/apis/models/cmsModels/hyperShop/hyperShopContentModel.dart';
import 'package:hypertools/bloc/main_user_bloc.dart';
import 'package:hypertools/poco/screen_config.dart';
import 'package:hypertools/theme/theme.dart';

class ProductViewerInList extends StatelessWidget {
  final bool isInPreview;
  final MainUserBloc bloc;
  final HyperShopContentModel model;
  const ProductViewerInList({Key key, this.model, this.bloc, this.isInPreview})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = ScreenConfig.vBlocks * 30;
    double height = ScreenConfig.vBlocks * 48;
    if (!isInPreview) {
      width = ScreenConfig.vBlocks * 40;
      height = ScreenConfig.vBlocks * 64;
    }
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          boxShadow: [BoxShadow(color: color000000.withOpacity(0.7))]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (model.image == null || model.image.isEmpty)
            Image.asset(
              'assets/images/special.png',
              fit: BoxFit.cover,
            ),
          if (model.image != null || model.image.isNotEmpty)
            CachedNetworkImage(
              imageUrl: model.image,
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  CircularProgressIndicator(
                value: downloadProgress.progress,
                backgroundColor: colorFFFFFF,
                valueColor: new AlwaysStoppedAnimation<Color>(gray[200]),
              ),
              errorWidget: (context, url, error) => Image.asset(
                'assets/images/special.png',
                fit: BoxFit.cover,
              ),
            ),
          Text(
            model.name,
            style: textStyleBold(color: color000000, size: 13),
            softWrap: true,
            overflow: TextOverflow.fade,
          ),
          GestureDetector(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                FontAwesomeIcons.shoppingBasket,
                color: color1C1C1C,
                size: 16,
              ),
              Text(
                'اضافه به سبد خرید',
                style: textStyleRegular(color: color1C1C1C, size: 12),
              ),
              Icon(
                FontAwesomeIcons.chevronRight,
                color: color1C1C1C,
                size: 16,
              ),
            ],
          ))
        ],
      ),
    );
  }
}
