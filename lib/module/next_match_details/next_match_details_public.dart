library next_match_details;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sport_club/res/asset.p.dart';
import 'package:sport_club/res/color.p.dart';
import 'package:sport_club/res/style.p.dart';
import 'package:sport_club/widget/widget.dart';

part 'next_match_details_view.dart';
part 'next_match_details_model.dart';
part 'next_match_details_state.dart';

ChangeNotifierProvider<_NextMatchDetailsModel> createNextMatchDetails() {
  return ChangeNotifierProvider<_NextMatchDetailsModel>(
    create: (_) => _NextMatchDetailsModel(),
    child: const _NextMatchDetailsView(),
  );
}
