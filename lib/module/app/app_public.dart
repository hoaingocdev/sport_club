library app;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sport_club/module/splash/splash_public.dart';
import 'package:sport_club/widget/tt_environment.p.dart';
import 'package:sport_club/widget/widget.dart';

part 'app_model.dart';
part 'app_state.dart';
part 'app_view.dart';

ChangeNotifierProvider<_AppModel> createApp() {
  return ChangeNotifierProvider<_AppModel>(
    create: (_) => _AppModel(),
    child: const _AppView(),
  );
}
