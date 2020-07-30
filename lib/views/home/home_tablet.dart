part of home_view;

class _HomeTablet extends StatelessWidget {
  final HomeViewModel viewModel;

  _HomeTablet(this.viewModel);

  int _selectedIndex = 0;
  static List<Widget> tabWidgets = <Widget>[
    AboutPageView(),
    AboutPageView(),
    AboutPageView(),
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Column(
      children: [
        Container(
          width: width,
          height: McGyver.rsDoubleH(context, 10),
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage('bk2.jpg')),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    blurRadius: 6.0,
                    color: Colors.grey,
                    offset: Offset(0.0, 0.4))
              ]),
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Text(
                    'Awa Felix',
                    style: GoogleFonts.aBeeZee(
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                        fontSize: SizeConfig().textSize(context, 3)),
                  ),
                  Spacer(),
                  RaisedButton(
                    elevation: 0,
                    color: Colors.transparent,
                    hoverColor: Colors.purple[900],
                    hoverElevation: 15,
                    onPressed: () {},
                    child: Text(
                      'Home',
                      style: GoogleFonts.aBeeZee(
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                          fontSize: SizeConfig().textSize(context, 2)),
                    ),
                  ),
                  SizedBox(width: McGyver.rsDoubleW(context, 1)),
                  RaisedButton(
                    elevation: 0,
                    color: Colors.transparent,
                    hoverColor: Colors.purple[900],
                    hoverElevation: 15,
                    onPressed: () => Navigator.push(
                        context,
                        PageTransition(
                            duration: Duration(seconds: 4),
                            curve: Curves.easeOut,
                            type: PageTransitionType.fade,
                            alignment: Alignment.topCenter,
                            child: AboutPageView())),
                    child: Text(
                      'About',
                      style: GoogleFonts.aBeeZee(
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                          fontSize: SizeConfig().textSize(context, 2)),
                    ),
                  ),
                  SizedBox(width: McGyver.rsDoubleW(context, 1)),
                  RaisedButton(
                    elevation: 0,
                    color: Colors.transparent,
                    hoverColor: Colors.purple[900],
                    hoverElevation: 15,
                    onPressed: () {},
                    child: Text(
                      'Works',
                      style: GoogleFonts.aBeeZee(
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                          fontSize: SizeConfig().textSize(context, 2)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Stack(
            children: [
              Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'bg.gif',
                  ),
                )),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding:
                      EdgeInsets.only(left: McGyver.rsDoubleW(context, 10)),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FadeIn(
                          delay: 3,
                          child: Box(
                            text: 'Awa Felix',
                            textStyle: GoogleFonts.aBeeZee(
                                color: Colors.white60,
                                fontWeight: FontWeight.bold,
                                fontSize: SizeConfig().textSize(context, 3)),
                          ),
                        ),
                        SizedBox(height: McGyver.rsDoubleH(context, 3)),
                        FadeIn(
                          delay: 7,
                          child: Text(
                            'A Mobile developer, Data analyst, ML engineer,',
                            style: GoogleFonts.aBeeZee(
                                color: Colors.white38,
                                fontWeight: FontWeight.bold,
                                fontSize: SizeConfig().textSize(context, 3)),
                          ),
                        ),
                        SizedBox(height: McGyver.rsDoubleH(context, 1)),
                        FadeIn(
                          delay: 11,
                          child: Text(
                            'Project Manager and Petroluem Engineer',
                            style: GoogleFonts.aBeeZee(
                                color: Colors.white38,
                                fontWeight: FontWeight.bold,
                                fontSize: SizeConfig().textSize(context, 3)),
                          ),
                        ),
                        SizedBox(height: McGyver.rsDoubleH(context, 1)),
                        FadeIn(
                          delay: 14,
                          child: Text(
                            'Flutter/Dart, Python, NodeJs, Typescript',
                            style: GoogleFonts.aBeeZee(
                                color: Colors.white38,
                                fontWeight: FontWeight.bold,
                                fontSize: SizeConfig().textSize(context, 3)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding:
                      EdgeInsets.only(bottom: McGyver.rsDoubleH(context, 10)),
                  child: FadeIn(
                    delay: 10,
                    child: Container(
                      child: Text(
                        'Get in Touch',
                        style: GoogleFonts.aBeeZee(
                            color: Colors.white12,
                            fontWeight: FontWeight.bold,
                            fontSize: SizeConfig().textSize(context, 1.9)),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding:
                      EdgeInsets.only(bottom: McGyver.rsDoubleH(context, 3)),
                  child: FadeIn(
                    delay: 13,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            width: McGyver.rsDoubleW(context, 8),
                            height: McGyver.rsDoubleH(context, 4),
                            child: Image.asset(Assets.facebook)),
                        Container(
                            width: McGyver.rsDoubleW(context, 8),
                            height: McGyver.rsDoubleH(context, 4),
                            child: Image.asset(Assets.medium_light)),
                        Container(
                            width: McGyver.rsDoubleW(context, 8),
                            height: McGyver.rsDoubleH(context, 4),
                            child: Image.asset(Assets.github)),
                        Container(
                            width: McGyver.rsDoubleW(context, 8),
                            height: McGyver.rsDoubleH(context, 4),
                            child: Image.asset(Assets.linkedin)),
                        Container(
                            width: McGyver.rsDoubleW(context, 8),
                            height: McGyver.rsDoubleH(context, 4),
                            child: Image.asset(Assets.twitter))
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
