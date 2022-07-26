part of onboarding;

class _OnboardingViewState extends TTState<_OnboardingModel, _OnboardingView> {
  @override
  Widget buildWithModel(BuildContext context, _OnboardingModel model) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(28, 34 + device.padding.top, 23, 0),
        child: Column(
          children: [
            Center(
              child: Image.asset(Id.img_club_logo),
            ),
            const SizedBox(height: 61),
            Text(
              'Good Afternoon',
              style: St.body24600.copyWith(color: Cl.black),
            ),
            const SizedBox(height: 4),
            Text(
              'Welcome Back',
              style: St.body16500.copyWith(color: Cl.darkGrey),
            ),
            const SizedBox(height: 45),
            buildPageVIew(model),
            buildDot(model),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TTButton(
                  onPressed: model.onSkipPressed,
                  width: 154,
                  text: 'SKIP',
                  colorText: Cl.black,
                  borderColor: Cl.dark,
                ),
                TTButton(
                  onPressed: model.onCampaignsPressed,
                  width: 154,
                  text: 'CAMPAIGNS',
                  backgroundColor: Cl.green,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildDot(_OnboardingModel model) {
    return DotsIndicator(
      dotsCount: 3,
      position: model.index.toDouble(),
      decorator: DotsDecorator(
        size: const Size.square(9.0),
        activeSize: const Size(18.0, 9.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        color: Cl.darkGrey, // Inactive color
        activeColor: Cl.green,
      ),
    );
  }

  Widget buildPageVIew(_OnboardingModel model) {
    return SizedBox(
      height: 106,
      child: PageView(
        onPageChanged: model.onPageChanged,
        children: [
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
            style: St.body14400.copyWith(
              color: Cl.black,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
            style: St.body14400.copyWith(
              color: Cl.black,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
            style: St.body14400.copyWith(
              color: Cl.black,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
