import 'package:flutter/material.dart';
import 'package:hypertools/bloc/main_user_bloc.dart';

class BlocProviderChild {
  static void initBloc() {
    bloc = MainUserBloc();
  }

  static MainUserBloc bloc;
}

class Provider extends InheritedWidget {
  final MainUserBloc bloc;

  Provider(this.bloc, {Key key, Widget child}) : super(key: key, child: child) {
    if (BlocProviderChild.bloc == null) BlocProviderChild.bloc = bloc;
  }

  bool updateShouldNotify(_) => true;

  static MainUserBloc of(BuildContext context) {
    if (BlocProviderChild.bloc != null) return BlocProviderChild.bloc;
    return (context.inheritFromWidgetOfExactType(Provider) as Provider).bloc;
  }
}
