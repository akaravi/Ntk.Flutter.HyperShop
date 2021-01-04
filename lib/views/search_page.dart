import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hypertools/apis/models/cmsModels/hyperShop/hyperShopContentModel.dart';
import 'package:hypertools/bloc/main_user_bloc.dart';
import 'package:hypertools/poco/errorExceptionResult.dart';
import 'package:hypertools/poco/screen_config.dart';
import 'package:hypertools/theme/theme.dart';
import 'package:hypertools/widgets/product_viewer_in_list.dart';

class SearchPage extends StatefulWidget {
  final MainUserBloc bloc;
  SearchPage({Key key, this.bloc}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final FocusNode _productNameFocusNode = FocusNode();
  final TextEditingController productNameController = TextEditingController();
  StreamSubscription<int> mainTabIndexListener;
  @override
  void initState() {
    mainTabIndexListener =
        widget.bloc.mainTabIndex.stream.listen((event) async {
      if (event == 2) await searchProducts(showError: false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          width: ScreenConfig.width,
          color: gray[400],
          child: Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Icon(FontAwesomeIcons.search,
                          color: color257EEA, size: 18),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                      ),
                      Text(
                        'جستجو',
                        style: textStyleBold(color: color257EEA, size: 14),
                      )
                    ],
                  ),
                ],
              ))),
      Container(width: ScreenConfig.width, height: 2, color: color257EEA),
      Expanded(
          child: Container(
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: productNameStream()),
                GestureDetector(
                  onTap: () async {
                    await searchProducts();
                  },
                  child: Container(
                    height: 49,
                    width: 49,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(3),
                            bottomLeft: Radius.circular(3)),
                        color: color1C1C1C),
                    child: Center(
                      child: Icon(
                        FontAwesomeIcons.search,
                        color: colorFFFFFF,
                        size: 20,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Expanded(child: productListView())
          ],
        ),
      ))
    ]);
  }

  Widget productListView() {
    if (widget.bloc.lastSearchResult != null)
      return showSearchResult(widget.bloc.lastSearchResult);
    return StreamBuilder(
      stream: widget.bloc.productSearchLoading.stream,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        var data = false;
        if (snapshot.hasData) data = snapshot.data;
        if (data)
          return Center(
            child: SizedBox(
                width: 20, height: 20, child: CircularProgressIndicator()),
          );
        return showSearchResult(widget.bloc.lastSearchResult);
      },
    );
  }

  Widget showSearchResult(ErrorExceptionResult<HyperShopContentModel> err) {
    if (err == null) return Container();
    if (err.isSuccess == false) {
      return Center(
        child: Column(
          children: [
            Text(
              err.errorMessage,
              style: textStyleRegular(size: 11, color: colorBABABA),
            ),
            SizedBox(
              height: 7,
            ),
            Center(
              child: GestureDetector(
                  onTap: () async {
                    await searchProducts();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: color257EEA,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 20, right: 20, top: 10, bottom: 10),
                      child: Text(
                        'تلاش مجدد',
                        style: textStyleBold(color: colorFFFFFF, size: 13),
                      ),
                    ),
                  )),
            )
          ],
        ),
      );
    }
    return productShowInListView(err.listItems);
  }

  Widget productShowInListView(List<HyperShopContentModel> lst) {
    if (lst == null || lst.length == 0) return listIsEmpty(null);
    return GridView.builder(
      itemCount: lst.length,
      padding: EdgeInsets.only(bottom: 75, top: 10),
      primary: false,
      physics: const AlwaysScrollableScrollPhysics(),
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.65, crossAxisCount: 2),
      itemBuilder: (BuildContext ctx, int index) {
        lst[index].calledFromSearch = true;
        return Container(
            margin: EdgeInsets.only(left: 14, right: 14, top: 12, bottom: 12),
            child: ProductViewerInList(
              bloc: widget.bloc,
              isInCategoryView: true,
              isInPreview: false,
              model: lst[index],
            ));
      },
    );
  }

  Widget listIsEmpty(ErrorExceptionResult<HyperShopContentModel> result) {
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
                  await searchProducts();
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

  Widget productNameStream() {
    return StreamBuilder(
      stream: widget.bloc.productNameToSearch.stream,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        // if (snapshot.hasData) productNameController.text = snapshot.data;
        return TextField(
          textDirection: TextDirection.rtl,
          focusNode: _productNameFocusNode,
          textInputAction: TextInputAction.search,
          controller: productNameController,
          autocorrect: false,
          keyboardType: TextInputType.text,
          style: textStyleBold(color: color1C1C1C, size: 14),
          decoration: productNameDecoration(
              errorText: (snapshot.hasError ? snapshot.error : null)),
          onChanged: (value) {
            widget.bloc.productNameToSearch.changeValue(value);
          },
          onEditingComplete: () async {
            if (snapshot.hasData && !snapshot.hasError) {
              await searchProducts();
            }
          },
        );
      },
    );
  }

  Future<void> searchProducts({bool showError = true}) async {
    FocusScope.of(context).unfocus();
    var str = productNameController.text;
    if (str == null || str.length < 3)
      str = widget.bloc.productNameToSearch.lastValue;
    if (str == null || str.length < 3) {
      if (showError != null && showError)
        widget.bloc.productNameToSearch
            .changeError('ورود سه حرف از نام کالا الزامی است');
      return;
    }
    setState(() {
      widget.bloc.lastSearchResult = null;
    });
    print('search with ' + str);
    await widget.bloc.searchProductByName(str);

    // print(productNameController.text);
  }
}
