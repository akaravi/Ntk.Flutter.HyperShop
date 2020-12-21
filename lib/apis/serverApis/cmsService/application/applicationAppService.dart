import 'package:hypertools/poco/api_server_base.dart';

import 'package:hypertools/poco/errorExceptionResult.dart';
import 'package:hypertools/apis/models/cmsModels/applicationModels/applicationAppModel.dart';

class ApplicationAppService extends ApiServerBase {
  ApplicationAppService() {
    moduleCotrolerUrl = 'Application/';
  }
  Future<ErrorExceptionResult<ApplicationAppModel>> servicebuildAppAsync(
      int id) async {
    var url = baseUrl + moduleCotrolerUrl + 'build/' + id.toString();
    return await callApiGetAsync<ApplicationAppModel>(
        url, baseHeaders, ApplicationAppModel.fromJsonObject);
  }

  Future<ErrorExceptionResult<ApplicationAppModel>>
      serviceGetCorrentDeviceAsync() async {
    var url = baseUrl + moduleCotrolerUrl + 'CorrentDevice';
    return await callApiGetAsync<ApplicationAppModel>(
        url, baseHeaders, ApplicationAppModel.fromJsonObject);
  }

  Future<ErrorExceptionResult<ApplicationAppModel>>
      serviceGetCurrentAppAsync() async {
    var url = baseUrl + moduleCotrolerUrl + 'CurrentApp';
    return await callApiGetAsync<ApplicationAppModel>(
        url, baseHeaders, ApplicationAppModel.fromJsonObject);
  }
}
