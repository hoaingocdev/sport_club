part of app;

class _AppViewState extends TTState<_AppModel, _AppView> {
  @override
  Widget buildWithModel(BuildContext context, _AppModel model) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: createSplashScreen(),
    );
    return Environment(
      backgroundChild: createSplash(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: createHome(),
      ),
    );
  }
}
