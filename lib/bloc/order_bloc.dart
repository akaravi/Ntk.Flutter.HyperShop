import 'package:hypertools/poco/stream_helper.dart';

import 'main_user_bloc.dart';

class OrderBloc extends Object {
  final MainUserBloc parent;
  OrderBloc(this.parent);

  StreamHelper<bool> hasOrder = StreamHelper<bool>(initValue: false);
}
