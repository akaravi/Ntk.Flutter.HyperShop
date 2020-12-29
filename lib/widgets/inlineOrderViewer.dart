import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hypertools/apis/models/cmsModels/hyperShop/hyperShopContentModel.dart';
import 'package:hypertools/bloc/main_user_bloc.dart';

class InlineOrderView extends StatefulWidget {
  final Widget Function(BuildContext, HyperShopContentModel) builder;
  final Widget Function(BuildContext, HyperShopContentModel) notFoundBuilder;
  final MainUserBloc bloc;
  final HyperShopContentModel model;
  InlineOrderView(
      {Key key, this.builder, this.bloc, this.model, this.notFoundBuilder})
      : super(key: key);

  @override
  _InlineOrderViewState createState() => _InlineOrderViewState();
}

class _InlineOrderViewState extends State<InlineOrderView> {
  bool _hasVisible = false;
  StreamSubscription<List<HyperShopContentModel>> orderListListener;
  HyperShopContentModel modelRe;
  @override
  void initState() {
    orderListListener = orderListListener =
        widget.bloc.orderBloc.orderList.stream.listen((event) {
      bool hasFound = false;
      for (var r in event)
        if (r.code == widget.model.code) {
          hasFound = true;
          modelRe = r;
          if (modelRe.buyCount == null) modelRe.buyCount = 0;
          setState(() {
            _hasVisible = true;
          });
          break;
        }
      if (!hasFound) {
        modelRe = null;
        setState(() {
          _hasVisible = false;
        });
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    if (orderListListener != null) orderListListener.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_hasVisible)
      return AnimatedOpacity(
          duration: Duration(milliseconds: 500),
          opacity: (_hasVisible ? 1 : 0),
          child: (_hasVisible && modelRe != null
              ? widget.builder(context, modelRe)
              : (widget.notFoundBuilder != null
                  ? widget.notFoundBuilder(context, widget.model)
                  : Container())));
    else {
      if (widget.notFoundBuilder != null)
        return widget.notFoundBuilder(context, widget.model);
      else
        return Container();
    }
  }
}
