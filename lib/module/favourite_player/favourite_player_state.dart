part of favourite_player;

class _FavouritePlayerViewState extends TTState<_FavouritePlayerModel, _FavouritePlayerView> {
  @override
  Widget buildWithModel(BuildContext context, _FavouritePlayerModel model) {
    return Scaffold(
      backgroundColor: Cl.white,
      appBar: TTAppBar.create(context: context),
      body: Column(
        children: [
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 29),
            child: Text(
              'Who is your favourite Victory players?',
              style: St.body24600.copyWith(color: Cl.green),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 45),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 29),
            child: Text(
              'Amet minim mollit non deserunt ullamcoei sitaliqua dolor do amet sintelit officia.',
              style: St.body14400.copyWith(color: Cl.black),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 38),
          buildItem(
            playerInfo: model.players[model.selectedIndex],
          ),
          const SizedBox(height: 44),
          Text(
            'Swipe To Select',
            style: St.body14400.copyWith(color: Cl.black),
          ),
          const SizedBox(height: 27),
          const ListPlayer(),
          const SizedBox(height: 60),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TTButton(
                  onPressed: model.onSkipPressed,
                  width: 154,
                  borderColor: Cl.gray,
                  text: 'SKIP',
                  colorText: Cl.gray,
                ),
                TTButton(
                  onPressed: model.onConfirmPressed,
                  width: 154,
                  backgroundColor: Cl.green,
                  text: 'CONFIRM',
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildItem({
    required PlayerInfo playerInfo,
  }) {
    return SizedBox(
      height: 185,
      width: 141,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Center(
            child: Container(
              width: 92,
              height: 153,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(31),
                boxShadow: const [
                  BoxShadow(offset: Offset(0, 15), blurRadius: 34),
                ],
                color: Cl.cl000504BA.withOpacity(0.73),
              ),
            ),
          ),
          Positioned.fill(
            top: 30,
            child: Container(
              height: 132,
              width: 132,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Cl.dark,
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 11,
            right: 11,
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    playerInfo.avatar,
                    width: 121,
                    height: 123,
                  ),
                ),
                const SizedBox(height: 11),
                Text(
                  playerInfo.name,
                  style: St.body10600.copyWith(color: Cl.white),
                ),
                Text(
                  playerInfo.chooseNow,
                  style: St.body10500.copyWith(color: Cl.cl6CAE97),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
