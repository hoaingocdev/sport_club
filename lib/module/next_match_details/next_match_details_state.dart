part of next_match_details;

class _NextMatchDetailsViewState extends TTState<_NextMatchDetailsModel, _NextMatchDetailsView> {
  @override
  Widget buildWithModel(BuildContext context, _NextMatchDetailsModel model) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              buildTilte(),
            ],
          ),
          Positioned(
            top: 135,
            left: 28,
            right: 28,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: 500,
                  child: Image.asset(
                    Id.img_background_white,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: Column(
                    children: [
                      Image.asset(
                        Id.ic_ball,
                      ),
                      const SizedBox(height: 13),
                      Text(
                        'Devils Arena Stadium',
                        style: St.body14500.copyWith(color: Cl.darkGrey),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '9 May 2021',
                        style: St.body11500.copyWith(color: Cl.darkGrey),
                      ),
                      const SizedBox(height: 18),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(Id.ic_logo3),
                          Column(
                            children: [
                              Text(
                                'Kick Off (GMT+3)',
                                style: St.body11500.copyWith(color: Cl.cl8C95B6),
                              ),
                              Text(
                                '19.45',
                                style: St.body27700.copyWith(color: Cl.cl8C95B6),
                              ),
                            ],
                          ),
                          Image.asset(
                            Id.ic_logo,
                            height: 66,
                            width: 56,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Red D.',
                              style: St.body16500.copyWith(color: Cl.black),
                            ),
                          ),
                          Text(
                            'Victory G.',
                            style: St.body16500.copyWith(color: Cl.black),
                          )
                        ],
                      ),
                      const SizedBox(height: 28),
                      Stack(
                        children: [
                          Image.asset(
                            Id.img_background_green,
                          ),
                          Positioned(
                            top: 17,
                            left: 7,
                            right: 7,
                            child: Column(
                              children: [
                                Text(
                                  'Match Countdown',
                                  style: St.body16500.copyWith(color: Cl.white),
                                ),
                                const SizedBox(height: 25),
                                Text(
                                  '02   :   08   :  47   :   01',
                                  style: St.body28700.copyWith(color: Cl.white),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Days',
                                      style: St.body14500.copyWith(color: Cl.white),
                                    ),
                                    Text(
                                      'Hrs',
                                      style: St.body14500.copyWith(color: Cl.white),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 47),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTilte() {
    return Container(
      height: 185,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
          color: Cl.black),
      padding: const EdgeInsets.only(top: 50, left: 31),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            Id.ic_back_left,
            color: Cl.white,
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
