import 'package:flutter/material.dart';
import 'package:hypertools/bloc/main_user_bloc.dart';

class BlocProviderChild {
  static void initBloc() {
    print('init bloc');
    if (bloc == null) bloc = MainUserBloc();
  }

  static MainUserBloc bloc;
}

class Provider extends InheritedWidget {
  Provider({Key key, Widget child}) : super(key: key, child: child) {}

  bool updateShouldNotify(_) => true;

  static MainUserBloc of(BuildContext context) {
    if (BlocProviderChild.bloc != null) return BlocProviderChild.bloc;
    return BlocProviderChild.bloc;
  }
}
