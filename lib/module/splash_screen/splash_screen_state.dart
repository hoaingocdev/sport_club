part of splash_screen;

class _SplashScreenViewState extends TTState<_SplashScreenModel, _SplashScreenView> {
  @override
  Widget buildWithModel(BuildContext context, _SplashScreenModel model) {
    return Scaffold(
      backgroundColor: Cl.green,
      body: Center(
        child: Image.asset(Id.img_logo),
      ),
    );
  }
}
