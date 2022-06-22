import 'package:drc_tea_canteen/base/basePage.dart';
import 'package:drc_tea_canteen/base/constants/app_styles.dart';
import 'package:drc_tea_canteen/screens/login/login_screen_bloc.dart';
import 'package:flutter/cupertino.dart';

import '../../base/utils/common_utils.dart';
import '../../base/widgets/custom_page_route.dart';
import '../../widgets/custom_appbar.dart';

class LoginScreen extends BasePage<LoginScreenBloc> {
  LoginScreen({Key? key}) : super(key: key);

  @override
  BasePageState<LoginScreen, LoginScreenBloc> getState() {
    return _LoginScreenState();
  }

  static Route<dynamic> route() {
    return CustomPageRoute(builder: (context) => LoginScreen());
  }
}

class _LoginScreenState extends BasePageState<LoginScreen, LoginScreenBloc> {
  final LoginScreenBloc _bloc = LoginScreenBloc();

  @override
  void onReady() {}

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget? getAppBar() {
    return buildAppBar(context);
  }

  @override
  LoginScreenBloc getBloc() {
    return _bloc;
  }

  @override
  Widget buildWidget(BuildContext context) {
    return Column(
      children: const <Widget>[

      ],
    );
  }
}

Widget emailWidget() {
  return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Text(
            string("login.label_email"),
            style: styleSmall4.copyWith(fontWeight: FontWeight.w400),
          ),
        )
      ],);
}
