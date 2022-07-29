part of home_content;

class _HomeContentViewState extends TTState<_HomeContentModel, _HomeContentView> {
  @override
  Widget buildWithModel(BuildContext context, _HomeContentModel model) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            shape: const ContinuousRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(80),
                bottomRight: Radius.circular(80),
              ),
            ),
            backgroundColor: Cl.green,
            pinned: true,
            expandedHeight: 139 + device.padding.top,
            flexibleSpace: LayoutBuilder(builder: (context, ct) {
              final top = ct.biggest.height;
              return ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(80),
                ),
                child: FlexibleSpaceBar(
                  titlePadding: EdgeInsets.fromLTRB(28, 0, 28, top / 8),
                  title: Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Good morning',
                              style: St.body14400.copyWith(
                                color: Cl.white,
                                fontSize: 10,
                              ),
                            ),
                            Text(
                              'Adrian',
                              style: St.body24600.copyWith(
                                color: Cl.white,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Image.asset(
                            Id.ic_bell,
                            width: 18,
                          ),
                          Container(
                            height: 11,
                            width: 11,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(width: 30),
                      Image.asset(
                        Id.ic_menu,
                        width: 18,
                      )
                    ],
                  ),
                  background: Container(
                    color: Cl.green,
                  ),
                ),
              );
            }),
          ),
          //
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(28, 14, 28, 0),
              child: Column(
                children: [
                  NextMatch(
                    onPressed: model.onNextMatchDetailsPressed,
                  ),
                  const SizedBox(height: 13),
                  const New(),
                  const SizedBox(height: 150),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
