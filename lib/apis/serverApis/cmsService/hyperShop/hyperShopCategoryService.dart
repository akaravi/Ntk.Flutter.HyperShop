import 'package:hypertools/poco/api_server_base.dart';

import 'package:hypertools/poco/errorExceptionResult.dart';
import 'package:hypertools/apis/models/cmsModels/hyperShop/hyperShopCategoryModel.dart';
import 'package:hypertools/apis/models/models/filterModel.dart';

class HyperShopCategoryService extends ApiServerBase {
  HyperShopCategoryService() {
    moduleCotrolerUrl = 'HyperShopCategory';
  }
  Future<ErrorExceptionResult<HyperShopCategoryModel>>
      serviceGetAllMicroServiceAsync(FilterModel model) async {
    if (model == null) model = new FilterModel();

    var url = baseUrl + moduleCotrolerUrl + 'GetAllMicroService';
    return await callApiPostAsync<FilterModel, HyperShopCategoryModel>(
        url,
        model,
        baseHeaders,
        model.toJson,
        HyperShopCategoryModel.fromJsonObject);
  }

  Future<ErrorExceptionResult<HyperShopCategoryModel>>
      serviceGetAllMicroServiceAsync2(String id, FilterModel model) async {
    if (model == null) model = new FilterModel();

    var url =
        baseUrl + moduleCotrolerUrl + 'GetOneMicroService/' + id.toString();
    return await callApiPostAsync<FilterModel, HyperShopCategoryModel>(
        url,
        model,
        baseHeaders,
        model.toJson,
        HyperShopCategoryModel.fromJsonObject);
  }
}
