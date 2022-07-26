library sign_in;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sport_club/widget/widget.dart';

part 'sign_in_view.dart';
part 'sign_in_model.dart';
part 'sign_in_state.dart';

ChangeNotifierProvider<_SignInModel> createSignIn() {
  return ChangeNotifierProvider<_SignInModel>(
    create: (_) => _SignInModel(),
    child: const _SignInView(),
  );
}
