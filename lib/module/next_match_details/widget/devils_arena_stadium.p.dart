part of next_match_details;

class DevilsArenaStadium extends StatelessWidget {
  final MatchDetailsInfo detailsInfo;
  const DevilsArenaStadium({Key? key, required this.detailsInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
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
                detailsInfo.stadium,
                style: St.body14500.copyWith(color: Cl.darkGrey),
              ),
              const SizedBox(height: 10),
              Text(
                detailsInfo.day,
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
                        detailsInfo.time,
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
                      detailsInfo.teamA,
                      style: St.body16500.copyWith(color: Cl.black),
                    ),
                  ),
                  Text(
                    detailsInfo.teamB,
                    style: St.body16500.copyWith(color: Cl.black),
                  )
                ],
              ),
              const SizedBox(height: 28),
              buildItem(),
              const SizedBox(height: 47),
            ],
          ),
        )
      ],
    );
  }

  Widget buildItem() {
    return Stack(
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
              const SizedBox(height: 20),
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
                  const SizedBox(width: 50),
                  Text(
                    'Hrs',
                    style: St.body14500.copyWith(color: Cl.white),
                  ),
                  const SizedBox(width: 50),
                  Text(
                    'Mins',
                    style: St.body14500.copyWith(color: Cl.white),
                  ),
                  const SizedBox(width: 30),
                  Text(
                    'Secs',
                    style: St.body14500.copyWith(color: Cl.white),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
