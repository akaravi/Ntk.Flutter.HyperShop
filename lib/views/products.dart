import 'package:flutter/material.dart';
import 'package:hypertools/apis/models/cmsModels/hyperShop/hyperShopCategoryModel.dart';
import 'package:hypertools/bloc/main_user_bloc.dart';
import 'package:hypertools/poco/errorExceptionResult.dart';
import 'package:hypertools/theme/theme.dart';
import 'package:hypertools/widgets/product_category_viewer.dart';

class ProductPage extends StatefulWidget {
  final MainUserBloc bloc;
  ProductPage({Key key, this.bloc}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final ScrollController listViewController = ScrollController();

  @override
  void initState() {
    widget.bloc.categoryControllerBloc
        .getProductCategories()
        .then((value) => {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorFFFFFF,
      // padding: EdgeInsets.only(left: 10, right: 10),
      child: busyIndicator(context),
    );
  }

  Widget busyIndicator(BuildContext ctx) {
    return StreamBuilder(
      stream: widget.bloc.categoryControllerBloc.busyIndicatorIsBusy.stream,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        bool data = false;
        if (snapshot.hasData) data = snapshot.data;
        if (data) return getProgressBar();
        return page1ListView(ctx);
      },
    );
  }

  Widget getProgressBar() {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 20,
          height: 20,
          child: CircularProgressIndicator(
            backgroundColor: colorFFFFFF,
            valueColor: new AlwaysStoppedAnimation<Color>(colorBABABA),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10),
        ),
        Text(
          'در حال دریافت اطلاعات',
          style: textStyleBold(color: colorBABABA, size: 12),
        )
      ],
    ));
  }

  Widget page1ListView(BuildContext ctx) {
    return StreamBuilder(
      stream: widget.bloc.categoryControllerBloc.categoryList.stream,
      builder: (BuildContext context,
          AsyncSnapshot<ErrorExceptionResult<HyperShopCategoryModel>>
              snapshot) {
        List<HyperShopCategoryModel> lst = List<HyperShopCategoryModel>();
        if (snapshot.hasData &&
            snapshot.data.listItems != null &&
            snapshot.data.listItems.length > 0) lst = snapshot.data.listItems;
        if (lst.length == 0) return listIsEmpty(ctx, snapshot.data);
        return ListView(
          controller: listViewController,
          padding: EdgeInsets.only(bottom: 100),
          scrollDirection: Axis.vertical,
          children: lst.map((value) {
            return ProductCategoryViewer(
              bloc: widget.bloc,
              categoryBloc: widget.bloc.categoryControllerBloc.getBloc(value),
              isInPreview: true,
              model: value,
              onExpandClick: (data) {},
            );
          }).toList(),
        );
      },
    );
  }

  Widget listIsEmpty(
      BuildContext ctx, ErrorExceptionResult<HyperShopCategoryModel> result) {
    var str = 'موردی جهت نمایش وجود ندارد';
    var description = '';
    if (result != null) {
      if (result.isConnectedToInternet == false)
        str = 'اتصال به اینترنت میسر نیست';
      if (result.isSuccess == false) description = result.errorMessage;
    }
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          str,
          style: textStyleBold(color: colorBABABA, size: 13),
          softWrap: true,
        ),
        Padding(
          padding: EdgeInsets.only(top: 10),
        ),
        if (description.isNotEmpty)
          Text(
            description,
            style: textStyleBold(color: colorBABABA, size: 10),
            softWrap: true,
          ),
        if (description.isNotEmpty)
          Padding(
            padding: EdgeInsets.only(top: 10),
          ),
        Center(
            child: GestureDetector(
                onTap: () async {
                  widget.bloc.categoryControllerBloc.getProductCategories();
                },
                child: Container(
                  width: 140,
                  decoration: BoxDecoration(
                    color: color257EEA,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 20, right: 20, top: 10, bottom: 10),
                    child: Center(
                        child: Text(
                      ' تلاش مجدد ',
                      style: textStyleBold(color: colorFFFFFF, size: 13),
                    )),
                  ),
                ))),
      ],
    ));
  }
}
