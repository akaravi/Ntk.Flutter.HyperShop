import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hypertools/apis/models/cmsModels/hyperShop/hyperShopCategoryModel.dart';
import 'package:hypertools/apis/models/cmsModels/hyperShop/hyperShopContentModel.dart';
import 'package:hypertools/bloc/category_item_bloc.dart';
import 'package:hypertools/bloc/main_user_bloc.dart';
import 'package:hypertools/poco/screen_config.dart';
import 'package:hypertools/theme/theme.dart';
import 'package:hypertools/widgets/product_viewer_in_list.dart';

class ProductCategoryViewer extends StatefulWidget {
  final MainUserBloc bloc;
  final HyperShopCategoryModel model;
  final bool isInPreview;
  final CategoryItemBloc categoryBloc;
  final Function(HyperShopCategoryModel) onExpandClick;
  ProductCategoryViewer(
      {Key key,
      this.bloc,
      this.model,
      this.isInPreview = true,
      this.onExpandClick,
      this.categoryBloc})
      : super(key: key);

  @override
  _ProductCategoryViewerState createState() => _ProductCategoryViewerState();
}

class _ProductCategoryViewerState extends State<ProductCategoryViewer> {
  final ScrollController listViewVerticalController = ScrollController();
  final ScrollController listViewHorizontalController = ScrollController();
  @override
  void initState() {
    widget.categoryBloc.getProductPreview();
    widget.categoryBloc.getProductFull();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorFFFFFF,
      child: Column(
        children: [
          Padding(
              padding:
                  EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        FontAwesomeIcons.thList,
                        size: 16,
                        color: color257EEA,
                      ),
                      Padding(padding: EdgeInsets.only(left: 5)),
                      Text(widget.model.name,
                          style: textStyleBold(color: color257EEA, size: 14)),
                    ],
                  ),
                  GestureDetector(
                      onTap: () {
                        if (widget.onExpandClick != null)
                          widget.onExpandClick(widget.model);
                        widget.bloc.categoryControllerBloc
                            .selectCategoryToShow(widget.categoryBloc);
                      },
                      child: Container(
                          color: Colors.transparent,
                          child: Row(
                            children: [
                              Text('موارد بیشتر  ',
                                  style: textStyleBold(
                                      color: color257EEA, size: 9)),
                              Icon(
                                FontAwesomeIcons.arrowCircleLeft,
                                size: 16,
                                color: color257EEA,
                              ),
                            ],
                          )))
                ],
              )),
          Container(
            height: 0.6,
            color: color257EEA,
          ),
          if (widget.isInPreview)
            Container(color: colorFFFFFF, child: previewItems(context)),
          if (widget.isInPreview == false)
            Container(color: colorFFFFFF, child: fullItems(context)),
        ],
      ),
    );
  }

  Widget previewItems(BuildContext ctx) {
    return StreamBuilder(
      stream: widget.categoryBloc.previewLoading.stream,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        var data = false;
        if (snapshot.hasData) data = snapshot.data;
        if (data) return getProgressBar();
        return getHorizontalScrollViewer(ctx);
      },
    );
  }

  Widget getHorizontalScrollViewer(BuildContext ctx) {
    return StreamBuilder(
      stream: widget.categoryBloc.previewList.stream,
      builder: (BuildContext context,
          AsyncSnapshot<List<HyperShopContentModel>> snapshot) {
        List<HyperShopContentModel> lst = List<HyperShopContentModel>();
        if (snapshot.hasData && snapshot.data.length > 0) lst = snapshot.data;
        if (lst.length == 0) return createProductShow(ctx, null, true);
        return Column(children: [
          Container(
              width: ScreenConfig.vBlocks * 100,
              height: ScreenConfig.vBlocks * 43,
              child: ListView(
                controller: listViewHorizontalController,
                padding: EdgeInsets.only(left: 100),
                scrollDirection: Axis.horizontal,
                children: lst.map((value) {
                  return createProductShow(ctx, value, true);
                }).toList(),
              )),
          Container(
            height: 0.4,
            color: color257EEA,
          ),
        ]);
      },
    );
  }

  Widget getProgressBar() {
    return Container(
        color: colorFFFFFF,
        width: ScreenConfig.vBlocks * 30,
        height: ScreenConfig.vBlocks * 48,
        child: Center(
          child: SizedBox(
            width: 18,
            height: 18,
            child: CircularProgressIndicator(
              backgroundColor: colorFFFFFF,
              valueColor: new AlwaysStoppedAnimation<Color>(gray[200]),
            ),
          ),
        ));
  }

  Widget createProductShow(
      BuildContext ctx, HyperShopContentModel model, bool isPreview) {
    if (model == null)
      return Padding(
          padding: EdgeInsets.all(10),
          child: Container(
              color: colorFFFFFF,
              width: ScreenConfig.vBlocks * 26,
              height: ScreenConfig.vBlocks * 44,
              padding: EdgeInsets.all(10),
              child: Center(
                  child: Text(
                'موردی جهت نمایش وجود ندارد',
                style: textStyleRegular(color: colorBABABA, size: 12),
                softWrap: true,
              ))));
    if (model.isShowMoreObject)
      return Padding(
          padding: EdgeInsets.all(10),
          child: Container(
              color: colorFFFFFF,
              width: ScreenConfig.vBlocks * 26,
              height: ScreenConfig.vBlocks * 44,
              padding: EdgeInsets.all(10),
              child: Center(
                  child: GestureDetector(
                      onTap: () {},
                      child: Text(
                        'مشاهده موارد بیشتر',
                        style: textStyleBold(color: colorBABABA, size: 12),
                        softWrap: true,
                      )))));
    return Padding(
        padding: EdgeInsets.all(10),
        child: ProductViewerInList(
          bloc: widget.bloc,
          isInPreview: isPreview,
          model: model,
        ));
  }

  Widget fullItems(BuildContext ctx) {}
}
