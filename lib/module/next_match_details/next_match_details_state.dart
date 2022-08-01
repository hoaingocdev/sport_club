part of next_match_details;

class _NextMatchDetailsViewState extends TTState<_NextMatchDetailsModel, _NextMatchDetailsView> {
  @override
  Widget buildWithModel(BuildContext context, _NextMatchDetailsModel model) {
    return Scaffold(
      body: SizedBox.expand(
        child: Stack(
          children: [
            buildTilte(onPressed: model.onBackPressed),
            Positioned(
              top: 91 + 8 + device.padding.top,
              left: 28,
              right: 28,
              bottom: 0,
              child: SingleChildScrollView(
                // padding: EdgeInsets.symmetric(vertical: ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DevilsArenaStadium(
                      detailsInfo: model.matchDetail,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Matchs',
                      style: St.body18500.copyWith(color: Cl.black),
                    ),
                    ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (_, i) => const SizedBox(height: 20),
                      itemCount: model.matchDetails.length,
                      itemBuilder: (_, i) {
                        return buildItem(
                          detailsInfo: model.matchDetails[i],
                          onPressed: model.onMatchReviewPressed,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildItem({
    required MatchDetailsInfo detailsInfo,
    VoidCallback? onPressed,
  }) {
    return Material(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(18),
        topRight: Radius.circular(18),
      ),
      color: Cl.stone,
      child: InkWell(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(18),
          topRight: Radius.circular(18),
        ),
        onTap: onPressed,
        child: Column(
          children: [
            Container(
              height: 49,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18),
                  topRight: Radius.circular(18),
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildRatio(
                    text: '1',
                    backgroundColor: Cl.clF02626,
                  ),
                  RichText(
                    text: TextSpan(
                      text: detailsInfo.colorA,
                      style: St.body15600.copyWith(color: Colors.red),
                      children: [
                        const TextSpan(
                          text: '  vs  ',
                          style: TextStyle(
                            fontSize: 7,
                            color: Cl.cl01091C,
                          ),
                        ),
                        TextSpan(
                          text: detailsInfo.colorB,
                          style: const TextStyle(
                            color: Cl.green,
                          ),
                        )
                      ],
                    ),
                  ),
                  buildRatio(
                    text: '3',
                    backgroundColor: Cl.green,
                  )
                ],
              ),
            ),
            Container(
              height: 49,
              color: Cl.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(Id.ic_calenda),
                  const SizedBox(width: 13),
                  Text(
                    detailsInfo.day,
                    style: St.body11400.copyWith(color: Cl.cl5B6897),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildRatio({
    Color? backgroundColor,
    required String text,
  }) {
    return Container(
      height: 35,
      width: 35,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor ?? Cl.clF02626,
      ),
      child: Center(
        child: Text(
          text,
          style: St.body20600.copyWith(color: Cl.white),
        ),
      ),
    );
  }

  Widget buildTilte({VoidCallback? onPressed}) {
    return Container(
      height: 185,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
        color: Cl.black,
      ),
      padding: const EdgeInsets.only(top: 50, left: 17),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onPressed,
              child: SizedBox(
                height: 48,
                width: 48,
                child: Image.asset(
                  Id.ic_back_left,
                  color: Cl.white,
                ),
              ),
            ),
          ),
          const SizedBox(width: 64),
          Text(
            'Match Details',
            style: St.body20600.copyWith(color: Cl.white),
          ),
        ],
      ),
    );
  }
}
