part of favourite_player;

class _FavouritePlayerModel extends TTChangeNotifier<_FavouritePlayerView> {
  final players = <PlayerInfo>[];

  int selectedIndex = 0;

  _FavouritePlayerModel() {
    _initData();
  }
  void _initData() {
    final lsPlayer = List.generate(10, (index) {
      return PlayerInfo({
        'name': 'name$index',
        'avatar': 'https://cdn.chanhtuoi.com/uploads/2022/01/hinh-avatar-nam-deo-kinh.jpg',
        'chooseNow': 'chooseNow$index',
      });
    });
    players.addAll(lsPlayer);
  }

  void onChooseImagePressed(int index) {
    if (selectedIndex != index) {
      selectedIndex = index;
      notifyListeners();
    }
  }

  void onSkipPressed() {}

  void onConfirmPressed() {
    push(context, createHome());
  }
}
