part of home;

class _HomeViewState extends TTState<_HomeModel, _HomeView> {
  @override
  Widget buildWithModel(BuildContext context, _HomeModel model) {
    return Scaffold(
      backgroundColor: Cl.white,
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: buildActionButton(),
      bottomNavigationBar: buildBottomNavigationBar(model),
      body: buildBody(model),
    );
  }

  Widget buildActionButton() {
    return Container(
      width: 62,
      height: 62,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Cl.gray,
        ),
      ),
      child: TTButton(
        backgroundColor: Cl.white,
        child: Center(
          child: Image.asset(
            Id.ic_logo,
            height: 35,
            width: 29,
          ),
        ),
      ),
    );
  }

  Widget buildBody(_HomeModel model) {
    switch (model.pageIndex) {
      case 0:
        return createHomeContent();
      case 1:
        return createFixtures();
      case 2:
        return createShop();
      case 3:
        return createTicket();

      default:
        return const SizedBox();
    }
  }

  Widget buildBottomNavigationBar(_HomeModel model) {
    return BottomNavigationBar(
      backgroundColor: Cl.white,
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            Id.ic_home,
            color: model.pageIndex == 0 ? Cl.green : Cl.gray1,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            Id.ic_fixture,
            color: model.pageIndex == 1 ? Cl.green : Cl.gray1,
          ),
          label: 'Fixtures',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            Id.ic_shop,
            color: model.pageIndex == 2 ? Cl.green : Cl.gray1,
          ),
          label: 'Shop',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            Id.ic_ticket,
            color: model.pageIndex == 3 ? Cl.green : Cl.gray1,
          ),
          label: 'Tickets',
        ),
      ],
      type: BottomNavigationBarType.fixed,
      onTap: model.onPagePressed,
      currentIndex: model.pageIndex,
      selectedItemColor: Cl.green,
      unselectedItemColor: Cl.gray1,
      selectedLabelStyle: St.body9400,
      unselectedLabelStyle: St.body9400,
      elevation: 20,
    );
  }
}
