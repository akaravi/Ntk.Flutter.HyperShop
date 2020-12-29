import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hypertools/apis/models/cmsModels/hyperShop/hyperShopContentModel.dart';
import 'package:hypertools/bloc/main_user_bloc.dart';
import 'package:hypertools/poco/screen_config.dart';
import 'package:hypertools/theme/theme.dart';
import 'package:hypertools/widgets/product_viewer_in_list.dart';

class OrderPage extends StatefulWidget {
  final MainUserBloc bloc;
  OrderPage({Key key, this.bloc}) : super(key: key);

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  final ScrollController listViewVerticalController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: gray[400].withOpacity(0.4),
      child: getOrderList(context),
    );
  }

  Widget getOrderList(BuildContext ctx) {
    return StreamBuilder(
      stream: widget.bloc.orderBloc.hasOrder.stream,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        bool data = false;
        if (snapshot.hasData) data = snapshot.data;
        if (data == false) return basketIsEmpty(ctx);
        return Column(
          children: [
            Container(
                width: ScreenConfig.width,
                color: gray[400],
                child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Icon(FontAwesomeIcons.shoppingBasket,
                            color: color257EEA, size: 18),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                        ),
                        Text(
                          'سبد خرید',
                          style: textStyleBold(color: color257EEA, size: 14),
                        )
                      ],
                    ))),
            Container(width: ScreenConfig.width, height: 2, color: color257EEA),
            orderListView(ctx),
            Container(
                width: ScreenConfig.width,
                color: gray[400].withOpacity(0.5),
                padding: EdgeInsets.only(bottom: 15, top: 0),
                child: rowWithFree(
                  centerSize: 4,
                  center: GestureDetector(
                      onTap: () async {},
                      child: Container(
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
                                    child: Text('ادامه فرایند خرید',
                                        style: textStyleBold(
                                            size: 14, color: colorFFFFFF)))
                              ],
                            ),
                          ))),
                ))
          ],
        );
      },
    );
  }

  Widget orderListView(BuildContext ctx) {
    return StreamBuilder(
      stream: widget.bloc.orderBloc.orderList.stream,
      builder: (BuildContext context,
          AsyncSnapshot<List<HyperShopContentModel>> snapshot) {
        List<HyperShopContentModel> lst = List<HyperShopContentModel>();
        if (snapshot.hasData && snapshot.data.length > 0) lst = snapshot.data;
        if (lst.length == 0) return basketIsEmpty(ctx);
        return Expanded(
            child: Container(
                width: ScreenConfig.width,
                child: ListView(
                  controller: listViewVerticalController,
                  padding: EdgeInsets.only(bottom: 100),
                  scrollDirection: Axis.vertical,
                  children: lst.map((value) {
                    return Column(
                      children: [
                        ProductViewerInList(
                          bloc: widget.bloc,
                          inInOrderRow: true,
                          isInPreview: false,
                          model: value,
                        ),
                        Container(
                          height: 1,
                          color: color1C1C1C.withOpacity(0.2),
                        ),
                      ],
                    );
                  }).toList(),
                )));
      },
    );
  }

  Widget basketIsEmpty(BuildContext ctx) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            FontAwesomeIcons.shoppingBasket,
            size: 24,
            color: colorCF5A00,
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
          Text(
            'سبد خرید شما خالی است',
            style: textStyleBold(size: 14, color: color1C1C1C),
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
          Center(
            child: GestureDetector(
                onTap: () {
                  widget.bloc.mainTabIndex.changeValue(0);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: colorCF5A00,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 30, right: 30, top: 10, bottom: 10),
                    child: Text(
                      'ثبت خرید',
                      style: textStyleBold(color: colorFFFFFF, size: 13),
                    ),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
