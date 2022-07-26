part of onboarding;

class _OnboardingModel extends TTChangeNotifier<_OnboardingView> {
  int index = 0;

  void onPageChanged(int value) {
    index = value;
    notifyListeners();
  }

  void onSkipPressed() {}

  void onCampaignsPressed() {
    push(context, createWelcomeScreen());
  }
}
