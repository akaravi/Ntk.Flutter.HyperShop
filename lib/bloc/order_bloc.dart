import 'package:hypertools/apis/models/cmsModels/hyperShop/hyperShopContentModel.dart';
import 'package:hypertools/poco/database_local.dart';
import 'package:hypertools/poco/stream_helper.dart';

import 'main_user_bloc.dart';
import 'dart:convert';

class OrderBloc extends Object {
  final MainUserBloc parent;
  OrderBloc(this.parent);

  String _orderKey;
  Future<void> initBloc() async {
    var order = 'orderp' +
        parent.serverDate.now.year.toString() +
        '-' +
        parent.serverDate.now.month.toString() +
        '-';
    if (LocalDatabase.containsKey(
        order + parent.serverDate.now.day.toString())) {
      _orderKey = order + parent.serverDate.now.day.toString();
      print('1 _orderKey :' + _orderKey);
    } else if (LocalDatabase.containsKey(
        order + (parent.serverDate.now.day - 1).toString())) {
      _orderKey = order + (parent.serverDate.now.day - 1).toString();
      print('2 _orderKey :' + _orderKey);
    } else {
      if (LocalDatabase.containsKey(LocalDatabase.lastOrderKey)) {
        var data = LocalDatabase.getString(LocalDatabase.lastOrderKey);
        await LocalDatabase.clearValue(data);
        await LocalDatabase.clearValue(LocalDatabase.lastOrderKey);
      }
      _orderKey = order + parent.serverDate.now.day.toString();
      print('3 _orderKey :' + _orderKey);

      ///await LocalDatabase.setString(LocalDatabase.lastOrderKey, _orderKey);
    }

    await loadOrder();
  }

  Future<List<HyperShopContentModel>> loadOrder() async {
    if (LocalDatabase.containsKey(_orderKey)) {
      try {
        var rt = LocalDatabase.getStringList(_orderKey);
        if (rt == null || rt.length == 0) {
          hasOrder.changeValue(false);
          orderList.changeValue(List<HyperShopContentModel>());
          return null;
        }
        List<HyperShopContentModel> lst = List<HyperShopContentModel>();
        for (var r in rt) {
          lst.add(HyperShopContentModel.fromJson(json.decode(r)));
        }
        orderList.changeValue(lst);
        hasOrder.changeValue(lst != null && lst.length > 0);
        return lst;
      } catch (e) {
        print(e);
        hasOrder.changeValue(false);
        orderList.changeValue(List<HyperShopContentModel>());
        return null;
      }
    }
    return null;
  }

  Future<void> upsertOrderCount(HyperShopContentModel model) async {
    if (model.buyCount == null) model.buyCount = 1;
    var rt = await loadOrder();
    if (rt == null || rt.length == 0) {
      rt = List<HyperShopContentModel>();
      if (model.buyCount > 0) {
        var content = json.encode(model.toJson());
        LocalDatabase.addToStringList(_orderKey, content);
        await loadOrder();
      }
    } else {
      bool hasFound = false;
      for (var r in rt) {
        if (r.code == model.code) {
          r.buyCount = model.buyCount;
          hasFound = true;
          if (model.buyCount <= 0) {
            rt.remove(r);
            break;
          }
        }
      }
      if (!hasFound) {
        if (model.buyCount > 0) rt.add(model);
      }
      await saveOrder(rt);
    }
  }

  Future<void> saveOrder(List<HyperShopContentModel> rt) async {
    List<String> data = List<String>();
    if (rt != null) {
      for (var r in rt) {
        var str = json.encode(r.toJson());
        data.add(str);
        // print(str);
      }
    }
    await LocalDatabase.setStringList(_orderKey, data);
    await loadOrder();
  }

  StreamHelper<bool> hasOrder = StreamHelper<bool>(initValue: false);
  StreamHelper<List<HyperShopContentModel>> orderList =
      StreamHelper<List<HyperShopContentModel>>();

  Future<void> buyProductLocal(HyperShopContentModel model) async {
    await upsertOrderCount(model);
  }

  Future<HyperShopContentModel> getLastModel(
      HyperShopContentModel model) async {
    var r = await loadOrder();
    if (r == null || r.length == 0) {
      return HyperShopContentModel.fromJson(model.toJson());
    }
    for (var x in r) if (x.code == model.code) return x;
    return HyperShopContentModel.fromJson(model.toJson());
  }
}
