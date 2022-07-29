library home_content;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sport_club/module/module.dart';
import 'package:sport_club/res/asset.p.dart';
import 'package:sport_club/res/color.p.dart';
import 'package:sport_club/res/style.p.dart';
import 'package:sport_club/utils/tt_route.p.dart';
import 'package:sport_club/widget/widget.dart';

part 'home_content_view.dart';
part 'home_content_model.dart';
part 'home_content_state.dart';
part 'widget/next_match.p.dart';
part 'widget/new.p.dart';

ChangeNotifierProvider<_HomeContentModel> createHomeContent() {
  return ChangeNotifierProvider<_HomeContentModel>(
    create: (_) => _HomeContentModel(),
    child: const _HomeContentView(),
  );
}
