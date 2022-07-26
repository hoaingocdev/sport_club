library splash_screen;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sport_club/res/asset.p.dart';
import 'package:sport_club/res/color.p.dart';
import 'package:sport_club/widget/widget.dart';

part 'splash_screen_view.dart';
part 'splash_screen_model.dart';
part 'splash_screen_state.dart';

ChangeNotifierProvider<_SplashScreenModel> createSplashScreen() {
  return ChangeNotifierProvider<_SplashScreenModel>(
    create: (_) => _SplashScreenModel(),
    child: const _SplashScreenView(),
  );
}
