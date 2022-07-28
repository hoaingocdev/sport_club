part of home_content;

class NextMatch extends StatelessWidget {
  final VoidCallback? onPressed;
  const NextMatch({Key? key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Next Match',
          style: St.body18500.copyWith(color: Cl.black),
        ),
        const SizedBox(height: 18),
        Material(
          borderRadius: BorderRadius.circular(18),
          child: InkWell(
            borderRadius: BorderRadius.circular(18),
            onTap: onPressed,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Cl.white,
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, -12),
                        blurRadius: 32,
                        color: Cl.black.withOpacity(0.1),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.fromLTRB(21, 55, 21, 0),
                  child: Row(
                    children: [
                      Image.asset(Id.ic_calenda),
                      const SizedBox(width: 13),
                      Expanded(
                        child: Text(
                          '9 May 2021 19.45',
                          style: St.body11400.copyWith(color: Cl.cl5B6897),
                        ),
                      ),
                      const Spacer(),
                      Image.asset(Id.ic_cup),
                      const SizedBox(width: 9),
                      Text(
                        'Champions League',
                        style: St.body11400.copyWith(color: Cl.cl5B6897),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 66,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(18),
                        topRight: Radius.circular(18),
                      ),
                      color: Cl.stone),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 5,
                        left: 18,
                        right: 265,
                        child: Image.asset(
                          Id.bitmap,
                        ),
                      ),
                      Positioned(
                        top: 5,
                        left: 47,
                        right: 236,
                        child: Image.asset(Id.ic_mask),
                      ),
                      Positioned(
                        top: 20,
                        left: 110,
                        right: 35,
                        child: Row(
                          children: [
                            RichText(
                              text: TextSpan(
                                text: 'Red Devils ',
                                style: St.body15600.copyWith(color: Colors.red),
                                children: const [
                                  TextSpan(
                                    text: '  vs  ',
                                    style: TextStyle(
                                      fontSize: 7,
                                      color: Cl.cl01091C,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' V. Greens',
                                    style: TextStyle(
                                      color: Cl.green,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(width: 11),
                            Image.asset(Id.ic_other_details)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
