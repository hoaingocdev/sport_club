library favourite_player;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sport_club/model/model.dart';
import 'package:sport_club/res/asset.p.dart';
import 'package:sport_club/res/color.p.dart';
import 'package:sport_club/res/style.p.dart';
import 'package:sport_club/widget/tt_appbar_widget.p.dart';
import 'package:sport_club/widget/widget.dart';

part 'favourite_player_view.dart';
part 'favourite_player_model.dart';
part 'favourite_player_state.dart';
part 'list/list_player.p.dart';

ChangeNotifierProvider<_FavouritePlayerModel> createFavouritePlayer() {
  return ChangeNotifierProvider<_FavouritePlayerModel>(
    create: (_) => _FavouritePlayerModel(),
    child: const _FavouritePlayerView(),
  );
}
