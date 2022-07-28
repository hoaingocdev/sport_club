part of home_content;

class New extends StatelessWidget {
  const New({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'News',
          style: St.body18500.copyWith(color: Cl.black),
        ),
        const SizedBox(height: 13),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildItem1(),
            buildItem2(),
          ],
        ),
        const SizedBox(height: 20),
        buildItem3(),
        const SizedBox(height: 20),
        Stack(
          clipBehavior: Clip.none,
          children: [
            Image.asset(
              Id.img_background_green,
              width: double.infinity,
              height: 160,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 10,
              left: -20,
              child: Image.asset(Id.img_stadium),
            ),
            Positioned(
              top: 27,
              right: 20,
              left: 152,
              child: Column(
                children: [
                  Text(
                    'VIP STADIUM TICKET',
                    style: St.body18500.copyWith(color: Cl.white),
                  ),
                  const SizedBox(height: 14),
                  Container(
                    height: 30,
                    width: 149,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Cl.white.withOpacity(0.2),
                    ),
                    child: Center(
                      child: Text(
                        'Get 54% OFF',
                        style: St.body14400.copyWith(color: Cl.white),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget buildItem3() {
    return Container(
      height: 199,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: Cl.green,
        ),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Image.network(
              'https://sotttt.namdinh.gov.vn/portal/Photos/2022-05/1d67bd21bda724ddimages1341234_1.jpg',
              fit: BoxFit.cover,
              height: 199,
            ),
          ),
          Positioned(
            top: 128,
            child: buildContainer(
              height: 71,
              width: 333,
              child: Padding(
                padding: const EdgeInsets.only(top: 5, left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 5,
                      width: 93,
                      color: Cl.green,
                    ),
                    const SizedBox(height: 9),
                    Flexible(
                      child: Text(
                        'THE RECORD WAS REACHED WITH 90,000 FANS',
                        style: St.body15600.copyWith(color: Cl.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildItem1() {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 11, 20, 0),
      height: 170,
      width: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          border: Border.all(
            color: Cl.clEFEFEF,
          ),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 11),
              color: Cl.green.withOpacity(0.06),
              blurRadius: 22,
            ),
          ],
          color: Cl.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Super Liga',
            style: St.body16500.copyWith(color: Cl.black),
          ),
          const SizedBox(height: 5),
          Text(
            'Sun 01 May',
            style: St.body10400.copyWith(color: Cl.cl5C709F),
          ),
          const SizedBox(height: 14),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(Id.ic_logo),
              Image.asset(Id.ic_logo2),
            ],
          ),
          const SizedBox(height: 11),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '4',
                  style: St.body24500.copyWith(color: Cl.black),
                ),
                Text(
                  '-',
                  style: St.body24500.copyWith(color: Cl.black),
                ),
                Text(
                  '1',
                  style: St.body24500.copyWith(color: Cl.black),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildItem2() {
    return Container(
      height: 170,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: Cl.green,
        ),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Image.network(
              'https://congluan-cdn.congluan.vn/files/content/2022/01/03/hoang-duc-lot-danh-sach-doi-hinh-11-cau-thu-tieu-bieu-aff-cup-2020-091817161.jpeg',
              height: 170,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 102,
            left: 12,
            child: Image.asset(Id.ic_youtube),
          ),
          Positioned(
            top: 128,
            child: buildContainer(),
          ),
        ],
      ),
    );
  }

  Widget buildContainer({double? height, double? width, Widget? child}) {
    return Container(
      height: height ?? 42,
      width: width ?? 149,
      padding: const EdgeInsets.fromLTRB(10, 5, 10, 7),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(18),
          bottomRight: Radius.circular(18),
        ),
        color: Cl.cl0A0909.withOpacity(0.4),
      ),
      child: child ??
          Text(
            'Greatest Gams, v Victory Great Winner!',
            style: St.body10700.copyWith(color: Cl.white),
          ),
    );
  }
}
