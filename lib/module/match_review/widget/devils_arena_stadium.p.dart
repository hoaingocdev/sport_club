part of match_review;

class DevilsArenaStadium extends StatelessWidget {
  const DevilsArenaStadium({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 546,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
        color: Cl.black,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            child: SizedBox(
              height: 199,
              width: double.infinity,
              child: Image.network(
                'https://sotttt.namdinh.gov.vn/portal/Photos/2022-05/1d67bd21bda724ddimages1341234_1.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 18),
          Image.asset(
            Id.ic_ball,
            color: Cl.white,
          ),
          const SizedBox(height: 13),
          Text(
            'Devils Arena Stadium',
            style: St.body14500.copyWith(color: Cl.white),
          ),
          const SizedBox(height: 14),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 37),
            child: Row(
              children: [
                Image.asset(Id.ic_logo3),
                const SizedBox(width: 40),
                Text(
                  '1',
                  style: St.body45500.copyWith(color: Cl.white),
                ),
                const SizedBox(width: 32),
                Text(
                  '-',
                  style: St.body45500.copyWith(color: Cl.white),
                ),
                const SizedBox(width: 32),
                Text(
                  '3',
                  style: St.body45500.copyWith(color: Cl.white),
                ),
                const SizedBox(width: 37),
                SizedBox(
                  height: 66,
                  width: 56,
                  child: Image.asset(
                    Id.ic_logo,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Alan Berinho  ‘ 40',
                      style: St.body11500.copyWith(color: Cl.white),
                    ),
                    const SizedBox(width: 11),
                    Image.asset(
                      Id.ic_football,
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildItem(text: 'Nailson Sanchez  ‘ 17'),
                    const SizedBox(height: 5),
                    buildItem(text: 'Nailson Sanchez  ‘ 35'),
                    const SizedBox(height: 5),
                    buildItem(
                      text: 'Mahmoud Nara  ‘ 71',
                      asset: Id.ic_red,
                    ),
                    const SizedBox(height: 5),
                    buildItem(text: 'Bobo  ‘85')
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 17),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TTButton(
              borderColor: Cl.gray,
              backgroundColor: Cl.black,
              text: 'ANALYSIS',
              colorText: Cl.gray,
            ),
          )
        ],
      ),
    );
  }

  Widget buildItem({
    required String text,
    String? asset,
  }) {
    return Row(
      children: [
        Image.asset(
          asset ?? Id.ic_football,
        ),
        const SizedBox(width: 11),
        Text(
          text,
          style: St.body11500.copyWith(color: Cl.white),
        ),
      ],
    );
  }
}
