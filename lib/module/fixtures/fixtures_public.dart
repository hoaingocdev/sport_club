library fixtures;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sport_club/widget/widget.dart';

part 'fixtures_view.dart';
part 'fixtures_model.dart';
part 'fixtures_state.dart';

ChangeNotifierProvider<_FixturesModel> createFixtures() {
  return ChangeNotifierProvider<_FixturesModel>(
    create: (_) => _FixturesModel(),
    child: const _FixturesView(),
  );
}
