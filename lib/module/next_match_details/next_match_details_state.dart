part of next_match_details;

class _NextMatchDetailsViewState extends TTState<_NextMatchDetailsModel, _NextMatchDetailsView> {
  @override
  Widget buildWithModel(BuildContext context, _NextMatchDetailsModel model) {
    return Scaffold(
      body: Column(
        children: [
          Container(
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
          )
        ],
      ),
    );
  }
}
