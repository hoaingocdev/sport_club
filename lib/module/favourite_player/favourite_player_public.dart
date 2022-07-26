library favourite_player;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sport_club/widget/widget.dart';

part 'favourite_player_view.dart';
part 'favourite_player_model.dart';
part 'favourite_player_state.dart';

ChangeNotifierProvider<_FavouritePlayerModel> createFavouritePlayer() {
  return ChangeNotifierProvider<_FavouritePlayerModel>(
    create: (_) => _FavouritePlayerModel(),
    child: const _FavouritePlayerView(),
  );
}
