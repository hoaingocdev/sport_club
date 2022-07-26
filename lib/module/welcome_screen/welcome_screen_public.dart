library welcome_screen;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sport_club/widget/widget.dart';

part 'welcome_screen_view.dart';
part 'welcome_screen_model.dart';
part 'welcome_screen_state.dart';

ChangeNotifierProvider<_WelcomeScreenModel> createWelcomeScreen() {
  return ChangeNotifierProvider<_WelcomeScreenModel>(
    create: (_) => _WelcomeScreenModel(),
    child: const _WelcomeScreenView(),
  );
}
