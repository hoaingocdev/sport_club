part of app;

class _AppViewState extends TTState<_AppModel, _AppView> {
  @override
  Widget buildWithModel(BuildContext context, _AppModel model) {
    return Environment(
      backgroundChild: createSplash(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: createApp(),
      ),
    );
  }
}
