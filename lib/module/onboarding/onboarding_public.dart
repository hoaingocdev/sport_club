library onboarding;

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sport_club/module/module.dart';
import 'package:sport_club/res/asset.p.dart';
import 'package:sport_club/res/color.p.dart';
import 'package:sport_club/res/style.p.dart';
import 'package:sport_club/utils/tt_route.p.dart';
import 'package:sport_club/widget/widget.dart';

part 'onboarding_view.dart';
part 'onboarding_model.dart';
part 'onboarding_state.dart';

ChangeNotifierProvider<_OnboardingModel> createOnboarding() {
  return ChangeNotifierProvider<_OnboardingModel>(
    create: (_) => _OnboardingModel(),
    child: const _OnboardingView(),
  );
}
