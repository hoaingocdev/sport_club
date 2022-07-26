library splash;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sport_club/widget/widget.dart';

part 'splash_view.dart';
part 'splash_model.dart';
part 'splash_state.dart';

ChangeNotifierProvider<_SplashModel> createSplash() {
  return ChangeNotifierProvider<_SplashModel>(
    create: (_) => _SplashModel(),
    child: const _SplashView(),
  );
}
