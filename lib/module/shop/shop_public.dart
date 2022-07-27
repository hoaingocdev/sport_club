library shop;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sport_club/widget/widget.dart';

part 'shop_view.dart';
part 'shop_model.dart';
part 'shop_state.dart';

ChangeNotifierProvider<_ShopModel> createShop() {
  return ChangeNotifierProvider<_ShopModel>(
    create: (_) => _ShopModel(),
    child: const _ShopView(),
  );
}
