part of welcome_screen;

class _WelcomeScreenModel extends TTChangeNotifier<_WelcomeScreenView> {
  void onEmailPressed() {
    push(context, createSignIn());
  }

  void onFacebookPressed() {}

  void onGooglePressed() {}
}
