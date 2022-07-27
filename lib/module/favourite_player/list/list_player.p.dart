part of favourite_player;

class ListPlayer extends StatelessWidget {
  const ListPlayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.watch<_FavouritePlayerModel>();

    return SizedBox(
      height: 50,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 11),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (_, i) => const SizedBox(width: 24 - 14),
        itemCount: 10,
        itemBuilder: (_, i) {
          final isSelected = model.selectedIndex == i;
          final child = buildItem(
            model: model,
            i: i,
            isSelected: isSelected,
            playerInfo: model.players[i],
          );
          if (!isSelected) {
            return child;
          }
          return Row(
            children: [
              Image.asset(Id.ic_polygon_left),
              const SizedBox(width: 7),
              child,
              const SizedBox(width: 7),
              Image.asset(Id.ic_polygon_right),
            ],
          );
        },
      ),
    );
  }

  Widget buildItem({
    required _FavouritePlayerModel model,
    required int i,
    required bool isSelected,
    required PlayerInfo playerInfo,
  }) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () => model.onChooseImagePressed(i),
      child: Container(
        height: 51,
        width: 52,
        padding: const EdgeInsets.all(3),
        decoration: isSelected
            ? BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Cl.cl00AD70,
                ),
              )
            : null,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
            playerInfo.avatar,
          ),
        ),
      ),
    );
  }
}
