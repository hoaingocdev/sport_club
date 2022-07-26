part of welcome_screen;

class _WelcomeScreenViewState extends TTState<_WelcomeScreenModel, _WelcomeScreenView> {
  @override
  Widget buildWithModel(BuildContext context, _WelcomeScreenModel model) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(28, 71 + device.padding.top, 28, 0),
        child: Column(
          children: [
            Center(
              child: Image.asset(Id.img_logo1),
            ),
            const SizedBox(height: 71),
            Text(
              'Welcome to Victory Greens App',
              style: St.body24600.copyWith(color: Cl.black),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 60),
            buildButton(
              onPressed: model.onEmailPressed,
              backgroundColor: Cl.green,
              text: 'Login with email',
              asset: Id.ic_inbox,
            ),
            const SizedBox(height: 38),
            buildButton(
              onPressed: model.onFacebookPressed,
              text: 'Login with facebook',
              asset: Id.ic_fb,
              backgroundColor: Cl.cl376AED,
            ),
            const SizedBox(height: 38),
            buildButton(
              onPressed: model.onGooglePressed,
              text: 'Login with Google',
              colorText: Cl.black,
              asset: Id.ic_gg,
              borderColor: Cl.gray,
            )
          ],
        ),
      ),
    );
  }

  Widget buildButton(
      {Color? backgroundColor,
      required String text,
      required String asset,
      Color? borderColor,
      Color? colorText,
      VoidCallback? onPressed}) {
    return TTButton(
      onPressed: onPressed,
      borderColor: borderColor,
      backgroundColor: backgroundColor,
      child: Padding(
        padding: const EdgeInsets.only(left: 24),
        child: Row(
          children: [
            Image.asset(asset),
            const SizedBox(width: 50),
            Text(
              text,
              style: St.body16600.copyWith(color: colorText ?? Cl.white),
            )
          ],
        ),
      ),
    );
  }
}
