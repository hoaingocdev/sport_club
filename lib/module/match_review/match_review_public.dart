library match_review;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sport_club/widget/widget.dart';

part 'match_review_view.dart';
part 'match_review_model.dart';
part 'match_review_state.dart';

ChangeNotifierProvider<_MatchReviewModel> createMatchReview() {
  return ChangeNotifierProvider<_MatchReviewModel>(
    create: (_) => _MatchReviewModel(),
    child: const _MatchReviewView(),
  );
}
