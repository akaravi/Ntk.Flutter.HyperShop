import 'package:hypertools/apis/models/cmsModels/hyperShop/hyperShopCategoryModel.dart';
import 'package:hypertools/apis/models/cmsModels/hyperShop/hyperShopContentModel.dart';
import 'package:hypertools/apis/models/models/filterDataModel.dart';
import 'package:hypertools/apis/models/models/filterModel.dart';
import 'package:hypertools/apis/serverApis/cmsService/hyperShop/hyperShopContentService.dart';
import 'package:hypertools/poco/enum_values.dart';
import 'package:hypertools/poco/errorExceptionResult.dart';
import 'package:hypertools/poco/stream_helper.dart';

import 'category_controller_bloc.dart';
import 'main_user_bloc.dart';

class CategoryItemBloc extends Object {
  final CategoryControllerBloc parent;
  final HyperShopCategoryModel model;
  CategoryItemBloc(this.parent, this.model);

  StreamHelper<bool> previewLoading = StreamHelper<bool>(initValue: false);
  StreamHelper<bool> fullLoading = StreamHelper<bool>(initValue: false);

  StreamHelper<List<HyperShopContentModel>> previewList =
      StreamHelper<List<HyperShopContentModel>>();

  StreamHelper<List<HyperShopContentModel>> fullList =
      StreamHelper<List<HyperShopContentModel>>();

  Future<ErrorExceptionResult<HyperShopContentModel>>
      getProductPreview() async {
    if (previewList.lastValue != null && previewList.lastValue.length > 0)
      return ErrorExceptionResult<HyperShopContentModel>(isSuccess: true);
    previewLoading.changeValue(true);
    var service = new HyperShopContentService();
    service.setAuthorizationToken('',
        deviceToken: MainUserBloc.deviceTokenData);
    var filter = FilterModel(
        count: false,
        currentPageNumber: 0,
        rowPerPage: 10,
        filters: [
          FilterDataModel(
              propertyName: 'CategoryCode',
              value: model.code,
              stringValue1: model.code,
              clauseType: ClauseType.And,
              searchType: FilterDataModelSearchTypes.Equal)
        ]);
    var rt = await service.serviceGetAllMicroServiceAsync(filter);
    if (rt.isSuccess) {
      previewList.changeValue(rt.listItems);
    } else
      print(rt.errorMessage);
    previewLoading.changeValue(false);
    return rt;
  }

  Future<ErrorExceptionResult<HyperShopContentModel>> getProductFull() async {
    if (fullList.lastValue != null && fullList.lastValue.length > 0)
      return ErrorExceptionResult<HyperShopContentModel>(isSuccess: true);
    fullLoading.changeValue(true);
    var service = new HyperShopContentService();
    service.setAuthorizationToken('',
        deviceToken: MainUserBloc.deviceTokenData);
    var rt = await service.serviceGetAllMicroServiceAsync(FilterModel(
      filters: [
        FilterDataModel(
            propertyName: 'CategoryCode',
            value: model.code,
            stringValue1: model.code,
            clauseType: ClauseType.And,
            searchType: FilterDataModelSearchTypes.Equal)
      ],
      count: false,
      currentPageNumber: 0,
      rowPerPage: 99999,
    ));
    if (rt.isSuccess) {
      fullList.changeValue(rt.listItems);
    }
    fullLoading.changeValue(false);
    return rt;
  }
}
