library next_match_details;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sport_club/model/match_details_info.p.dart';
import 'package:sport_club/module/match_review/match_review_public.dart';
import 'package:sport_club/res/asset.p.dart';
import 'package:sport_club/res/color.p.dart';
import 'package:sport_club/res/style.p.dart';
import 'package:sport_club/utils/tt_route.p.dart';
import 'package:sport_club/widget/widget.dart';

part 'next_match_details_view.dart';
part 'next_match_details_model.dart';
part 'next_match_details_state.dart';
part 'widget/devils_arena_stadium.p.dart';

ChangeNotifierProvider<_NextMatchDetailsModel> createNextMatchDetails() {
  return ChangeNotifierProvider<_NextMatchDetailsModel>(
    create: (_) => _NextMatchDetailsModel(),
    child: const _NextMatchDetailsView(),
  );
}
