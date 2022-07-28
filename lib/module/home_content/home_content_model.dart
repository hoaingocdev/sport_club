part of home_content;

class _HomeContentModel extends TTChangeNotifier<_HomeContentView> {
  void onNextMatchDetailsPressed() {
    push(context, createNextMatchDetails());
  }
}
