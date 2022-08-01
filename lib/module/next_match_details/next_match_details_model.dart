part of next_match_details;

class _NextMatchDetailsModel extends TTChangeNotifier<_NextMatchDetailsView> {
  final matchDetails = <MatchDetailsInfo>[];
  final matchDetail = MatchDetailsInfo({
    'stadium': 'Devils Arena Stadium',
    'day': '9 May 2021',
    'teamA': 'Red D.',
    'teamB': 'Victory G.',
    'time': '19.45',
    'duration': '02   :   08   :   47   :   01'
  });

  _NextMatchDetailsModel() {
    _initData();
  }

  void _initData() {
    final lsMatchDetail = List.generate(100, (index) {
      return MatchDetailsInfo({
        'colorA': 'Red Devils',
        'colorB': 'V. Greens',
        'day': '9 Jan 2021    19.45',
      });
    });
    matchDetails.addAll(lsMatchDetail);
  }

  void onMatchReviewPressed() {
    push(context, createMatchReview());
  }

  void onBackPressed() {
    pop(context);
  }
}
