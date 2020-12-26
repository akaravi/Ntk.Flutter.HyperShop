import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hypertools/apis/models/cmsModels/hyperShop/hyperShopContentModel.dart';
import 'package:hypertools/bloc/main_user_bloc.dart';
import 'package:hypertools/poco/database_local.dart';
import 'package:hypertools/poco/screen_config.dart';
import 'package:hypertools/theme/theme.dart';
import 'package:hypertools/widgets/like_dislike.dart';
import 'package:hypertools/widgets/numerci_up_down.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class ProductViewerInList extends StatelessWidget {
  final bool isInPreview;
  final MainUserBloc bloc;
  final HyperShopContentModel model;
  const ProductViewerInList({Key key, this.model, this.bloc, this.isInPreview})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isInPreview) return inPreviewComponent(context);
    return fullComponent(context);
  }

  Widget fullComponent(BuildContext context) {
    double imageHeight = ((ScreenConfig.height - 100) / 2);
    double imageWidth = imageHeight / 1.6;

    return Container(
        color: gray[400],
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(children: [
                SingleChildScrollView(
                    child: Container(
                        padding: EdgeInsets.all(0),
                        color: colorFFFFFF,
                        child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                children: [
                                  if (model.image == null ||
                                      model.image.isEmpty)
                                    Center(
                                        child: Container(
                                            width: imageWidth,
                                            height: imageHeight,
                                            padding: EdgeInsets.all(5),
                                            child: Image.asset(
                                              'assets/images/special.png',
                                              fit: BoxFit.cover,
                                            ))),
                                  if (model.image != null ||
                                      model.image.isNotEmpty)
                                    Center(
                                        child: Container(
                                            width: imageWidth,
                                            height: imageHeight,
                                            padding: EdgeInsets.all(5),
                                            child: CachedNetworkImage(
                                                imageUrl: model.image,
                                                progressIndicatorBuilder: (context,
                                                        url,
                                                        downloadProgress) =>
                                                    Center(
                                                        child: SizedBox(
                                                            width: 20,
                                                            height: 20,
                                                            child:
                                                                CircularProgressIndicator(
                                                              value:
                                                                  downloadProgress
                                                                      .progress,
                                                              backgroundColor:
                                                                  colorFFFFFF,
                                                              valueColor:
                                                                  new AlwaysStoppedAnimation<
                                                                          Color>(
                                                                      gray[
                                                                          200]),
                                                            ))),
                                                errorWidget:
                                                    (context, url, error) =>
                                                        Image.asset(
                                                          'assets/images/special.png',
                                                          fit: BoxFit.cover,
                                                        ),
                                                fit: BoxFit.contain))),
                                  Positioned(
                                      left: 20,
                                      bottom: 15,
                                      child: LikeDislike(
                                        initialValue: productIsInFavoriteList(),
                                        onValueChanged: (value) async {
                                          await changeProductFavoriteList(
                                              value);
                                        },
                                      ))
                                ],
                              ),
                              Container(
                                width: ScreenConfig.width,
                                padding: EdgeInsets.only(
                                    left: 20, right: 20, top: 10, bottom: 5),
                                color: gray[400],
                                child: Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          model.name,
                                          style: textStyleBold(
                                              color: color257EEA, size: 17),
                                          softWrap: true,
                                          overflow: TextOverflow.fade,
                                        ),
                                        NumericUpDown(
                                          initValue: 1,
                                        )
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text('قیمت : ',
                                                  style: textStyleBold(
                                                      color: color1C1C1C
                                                          .withOpacity(0.8),
                                                      size: 14)),
                                              Text(
                                                  getPrice(model.salePrice,
                                                          model.price)
                                                      .seRagham()
                                                      .toPersianDigit(),
                                                  style: textStyleBold(
                                                      color: color257EEA,
                                                      size: 18),
                                                  softWrap: true,
                                                  overflow: TextOverflow.fade),
                                            ]),
                                        RatingBar.builder(
                                          initialRating: 0,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          ignoreGestures: true,
                                          itemCount: 5,
                                          itemSize: 20,
                                          maxRating: 10,
                                          unratedColor:
                                              colorCF5A00.withOpacity(0.4),
                                          textDirection: TextDirection.ltr,
                                          itemPadding: EdgeInsets.symmetric(
                                              horizontal: 0),
                                          itemBuilder: (context, _) => Icon(
                                            Icons.star,
                                            color: colorCF5A00,
                                          ),
                                          onRatingUpdate: (rating) {
                                            print(rating);
                                          },
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),

                              // Container(height: 10),
                              getDescription(
                                desc: model.description,
                                descIsNull: 'ثبت نشده است',
                                icon: FontAwesomeIcons.bars,
                                title: 'توضیحات',
                              ),
                              getDescription(
                                desc: model.brand,
                                descIsNull: 'ثبت نشده است',
                                icon: FontAwesomeIcons.bandcamp,
                                title: 'برند کالا',
                              ),
                            ]))),
                Positioned(
                  right: 10,
                  top: 10,
                  child: InkWell(
                      onTap: () {
                        print('back tapped');
                        bloc.categoryControllerBloc.productTabItem
                            .changeValue(0);
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: color1C1C1C.withOpacity(0.7)),
                        child: Icon(FontAwesomeIcons.arrowRight,
                            color: colorFFFFFF, size: 16),
                      )),
                )
              ]),
              Container(
                  width: ScreenConfig.width,
                  color: gray[400].withOpacity(0.5),
                  padding: EdgeInsets.only(bottom: 15, top: 0),
                  child: rowWithFree(
                      centerSize: 4,
                      center: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: colorCF5A00,
                          ),
                          padding: EdgeInsets.all(15),
                          child: Center(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(FontAwesomeIcons.shoppingBasket,
                                    size: 16, color: colorFFFFFF),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 7, right: 7, top: 3),
                                  child: Text('اضافه به سبد خرید',
                                      style: textStyleBold(
                                          size: 14, color: colorFFFFFF)),
                                ),
                              ],
                            ),
                          )))),
            ]));
  }

  Widget getDescription(
      {IconData icon,
      String title,
      String desc,
      String descIsNull,
      bool showWidgetWhenIsNull = true}) {
    if (showWidgetWhenIsNull == false && (desc == null || desc.isEmpty))
      return Container();
    var text = descIsNull;
    if (desc != null && desc.isNotEmpty) text = desc;
    return Container(
        width: ScreenConfig.width,
        color: gray[400],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: ScreenConfig.width,
              color: gray[400],
              padding: EdgeInsets.only(left: 15, top: 3, bottom: 3, right: 15),
              child: Row(
                children: [
                  Icon(icon, color: color1C1C1C, size: 14),
                  Padding(padding: EdgeInsets.only(left: 2, right: 2)),
                  RichText(
                      softWrap: true,
                      maxLines: 3,
                      overflow: TextOverflow.fade,
                      text: TextSpan(
                          text: title + " : ",
                          style: textStyleBold(size: 12, color: color333333),
                          children: [
                            TextSpan(
                                text: text,
                                style: textStyleBold(
                                    size: 11,
                                    color: color333333.withOpacity(0.7))),
                          ]))
                  // Padding(
                  //     padding: EdgeInsets.only(left: 5, right: 5),
                  //     child: Text(
                  //       title,
                  //       style: textStyleBold(
                  //           size: 14, color: color333333.withOpacity(0.7)),
                  //     ))
                ],
              ),
            ),
          ],
        ));
  }

  Widget inPreviewComponent(BuildContext context) {
    double width = ScreenConfig.vBlocks * 26;
    double imageWidth = ScreenConfig.vBlocks * 15;
    return Container(
      // width: width,
      // height: height,
      decoration: BoxDecoration(
          color: gray[400],
          borderRadius: BorderRadius.circular(3),
          boxShadow: [
            BoxShadow(color: color000000.withOpacity(0.7), blurRadius: 5)
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Stack(
            children: [
              if (model.image == null || model.image.isEmpty)
                Container(
                    width: width,
                    child: Center(
                        child: Container(
                            width: imageWidth,
                            height: imageWidth * 1.6,
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: gray[400],
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(3),
                                    topRight: Radius.circular(3))),
                            child: Image.asset(
                              'assets/images/special.png',
                              fit: BoxFit.cover,
                            )))),
              if (model.image != null || model.image.isNotEmpty)
                Container(
                    width: width,
                    child: Center(
                        child: Container(
                            width: imageWidth,
                            height: imageWidth * 1.6,
                            decoration: BoxDecoration(
                                color: gray[400],
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(3),
                                    topRight: Radius.circular(3))),
                            child: CachedNetworkImage(
                              imageUrl: model.image,
                              progressIndicatorBuilder:
                                  (context, url, downloadProgress) => Center(
                                      child: SizedBox(
                                          width: 20,
                                          height: 20,
                                          child: CircularProgressIndicator(
                                            value: downloadProgress.progress,
                                            backgroundColor: colorFFFFFF,
                                            valueColor:
                                                new AlwaysStoppedAnimation<
                                                    Color>(gray[200]),
                                          ))),
                              errorWidget: (context, url, error) => Image.asset(
                                'assets/images/special.png',
                                fit: BoxFit.cover,
                              ),
                              fit: BoxFit.contain,
                            )))),
              if (productIsInFavoriteList())
                Positioned(
                    right: 3,
                    top: 3,
                    child: Icon(FontAwesomeIcons.solidHeart,
                        color: colorFF0000.withOpacity(0.7), size: 10)),
              Positioned(
                  bottom: 0,
                  left: 0,
                  child: Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        color: colorCF5A00,
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(3))),
                    child: Text(
                        getPrice(model.price, model.salePrice)
                            .seRagham()
                            .toPersianDigit(),
                        style: getStyle()),
                  )),
              Positioned(
                  bottom: 0,
                  left: 0,
                  child: Container(
                    width: width,
                    height: 0.4,
                    color: color707070.withOpacity(0.2),
                  )),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 5, left: 5, top: 3),
            child: Text(
              model.name,
              style: textStyleBold(color: color1C1C1C, size: 15),
              softWrap: true,
              overflow: TextOverflow.fade,
            ),
          ),
          if (model.description != null && model.description.isNotEmpty)
            Container(
                width: width - 5,
                child: Padding(
                    padding: EdgeInsets.only(left: 2, right: 2),
                    child: Text(model.description,
                        style: textStyleBold(
                            color: color707070.withOpacity(0.7), size: 10),
                        softWrap: true,
                        maxLines: 1,
                        overflow: TextOverflow.fade))),
          Column(
            children: [
              Container(
                  color: gray,
                  width: width,
                  padding: EdgeInsets.only(
                    right: 5,
                    left: 5,
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text('قیمت :',
                            style: textStyleBold(
                                color: color707070.withOpacity(0.9), size: 14)),
                        Text(
                            getPrice(model.salePrice, model.price)
                                .seRagham()
                                .toPersianDigit(),
                            style: textStyleBold(color: color1C1C1C, size: 16),
                            softWrap: true,
                            overflow: TextOverflow.fade),
                      ])),
              GestureDetector(
                  onTap: () {
                    bloc.categoryControllerBloc.selectProduct(model);
                  },
                  child: Container(
                      width: width,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: colorCF5A00,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(4),
                              bottomRight: Radius.circular(4))),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            FontAwesomeIcons.shoppingBasket,
                            color: colorFFFFFF,
                            size: 16,
                          ),
                          Text(
                            'اضافه به سبد خرید',
                            style: textStyleBold(color: colorFFFFFF, size: 12),
                          ),
                          Icon(
                            FontAwesomeIcons.chevronLeft,
                            color: colorFFFFFF,
                            size: 16,
                          ),
                        ],
                      )))
            ],
          )
        ],
      ),
    );
  }

  String getPrice(double value, double value2) {
    if (value == null || value == 0) value = value2;
    int val = value.round();
    String temp = val.toString();
    int index = 0;
    String ret = '';
    for (int i = temp.length - 1; i >= 0; i--) {
      if (index % 3 == 0) {
        if (ret.isNotEmpty) ret = ret + ',';
        index = 0;
      }
      ret = ret + temp[i];
      index++;
    }
    temp = ret;
    ret = '';
    for (int i = temp.length - 1; i >= 0; i--) ret = ret + temp[i];
    return ret;
  }

  TextStyle getStyle({double size = 12}) {
    if (model.price != null &&
        model.salePrice != null &&
        model.price != model.salePrice &&
        model.salePrice > 0)
      return textStyleBoldWithOverLine(color: colorBABABA, size: size);
    return textStyleBold(color: colorFFFFFF, size: size);
  }

  bool productIsInFavoriteList() {
    if (!LocalDatabase.containsKey(LocalDatabase.productFavorite)) return false;
    return LocalDatabase.containsStringList(
        LocalDatabase.productFavorite, model.code);
  }

  Future<void> changeProductFavoriteList(bool liked) async {
    if (liked)
      await LocalDatabase.addToStringList(
          LocalDatabase.productFavorite, model.code);
    else
      await LocalDatabase.deleteStringList(
          LocalDatabase.productFavorite, model.code);
  }
}
