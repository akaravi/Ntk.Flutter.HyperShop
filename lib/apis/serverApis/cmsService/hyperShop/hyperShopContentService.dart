import 'package:hypertools/poco/api_server_base.dart';

import 'package:hypertools/poco/errorExceptionResult.dart';
import 'package:hypertools/apis/models/cmsModels/hyperShop/hyperShopContentModel.dart';
import 'package:hypertools/apis/models/models/filterModel.dart';
import 'package:hypertools/apis/models/cmsModels/modelBase/errorExcptionResult.dart';

class HyperShopContentService extends ApiServerBase {
  HyperShopContentService() {
    moduleCotrolerUrl = 'HyperShopContent';
  }
  Future<ErrorExceptionResult<HyperShopContentModel>>
      serviceGetAllMicroServiceAsync(FilterModel model) async {
    if (model == null) model = new FilterModel();

    var url = baseUrl + moduleCotrolerUrl + 'GetAllMicroService';
    return await callApiPostAsync<FilterModel, HyperShopContentModel>(url,
        model, baseHeaders, model.toJson, HyperShopContentModel.fromJsonObject);
  }

  Future<ErrorExceptionResult<HyperShopContentModel>>
      serviceGetAllMicroServiceAsync2(String id, FilterModel model) async {
    if (model == null) model = new FilterModel();

    var url = baseUrl + moduleCotrolerUrl + 'GetOneMicroService/' + id;
    return await callApiPostAsync<FilterModel, HyperShopContentModel>(url,
        model, baseHeaders, model.toJson, HyperShopContentModel.fromJsonObject);
  }

  Future<ErrorExcptionResult> serviceCacheEnableAsync() async {
    var url = baseUrl + moduleCotrolerUrl + 'CacheEnable';
    return await callApiGetBaseAsync<ErrorExcptionResult>(
        url, baseHeaders, ErrorExcptionResult.fromJsonObject);
  }

  Future<ErrorExcptionResult> serviceCacheDisableAsync() async {
    var url = baseUrl + moduleCotrolerUrl + 'CacheDisable';
    return await callApiGetBaseAsync<ErrorExcptionResult>(
        url, baseHeaders, ErrorExcptionResult.fromJsonObject);
  }

  Future<ErrorExcptionResult> serviceCacheRenewAsync() async {
    var url = baseUrl + moduleCotrolerUrl + 'CacheRenew';
    return await callApiGetBaseAsync<ErrorExcptionResult>(
        url, baseHeaders, ErrorExcptionResult.fromJsonObject);
  }
}
