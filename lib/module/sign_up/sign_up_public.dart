library sign_up;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sport_club/module/module.dart';
import 'package:sport_club/res/color.p.dart';
import 'package:sport_club/res/style.p.dart';
import 'package:sport_club/utils/tt_route.p.dart';
import 'package:sport_club/widget/auth_textfield.dart';
import 'package:sport_club/widget/tt_appbar_widget.p.dart';
import 'package:sport_club/widget/widget.dart';

part 'sign_up_view.dart';
part 'sign_up_model.dart';
part 'sign_up_state.dart';

ChangeNotifierProvider<_SignUpModel> createSignUp() {
  return ChangeNotifierProvider<_SignUpModel>(
    create: (_) => _SignUpModel(),
    child: const _SignUpView(),
  );
}
