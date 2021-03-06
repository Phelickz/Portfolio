part of home_view;

class _HomeTablet extends StatelessWidget {
  final HomeViewModel viewModel;

  _HomeTablet(this.viewModel);
  final dataKey = new GlobalKey();
  final dataKey2 = new GlobalKey();
  final dataKey3 = new GlobalKey();
  final serviceKey = new GlobalKey();


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundBlack,
      floatingActionButton: Visibility(
        visible: viewModel.menuActive,
        child: FloatingActionButton(
            backgroundColor: backgroundRed,
            child: Icon(
              Icons.arrow_upward,
              color: Colors.white,
            ),
            onPressed: () => Scrollable.ensureVisible(
                  dataKey2.currentContext,
                  duration: Duration(seconds: 1),
                  curve: Curves.easeIn,
                ).then((value) => viewModel.setBool(false))),
      ),
      body: viewModel.splash
          ? Container(
              width: width,
              height: height,
              color: backgroundBlack,
              child: Container(
                  width: McGyver.rsDoubleW(context, 4),
                  height: McGyver.rsDoubleW(context, 4),
                  child: Image.asset(
                    'sp4.gif',
                  )),
            )
          : SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    key: dataKey2,
                    width: width,
                    height: height,
                    child: Stack(
                      children: [
                        Container(
                            width: width,
                            height: height,
                            color: backgroundBlack),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: McGyver.rsDoubleH(context, 2),
                              left: McGyver.rsDoubleW(context, 4),
                              right: McGyver.rsDoubleW(context, 4),
                            ),
                            child: Row(
                              children: [
                                Container(
                                    width: McGyver.rsDoubleW(context, 4),
                                    height: McGyver.rsDoubleW(context, 4),
                                    child: Image.asset(
                                      'homeIcon.png',
                                    )),
                                Spacer(),
                                RaisedButton(
                                  elevation: 0,
                                  color: Colors.transparent,
                                  hoverColor: backgroundRed,
                                  hoverElevation: 15,
                                  onPressed: () {},
                                  child: Text(
                                    'Home',
                                    style: GoogleFonts.openSans(
                                      color: headerTextColor,
                                      fontSize:
                                          SizeConfig().textSize(context, 1.8),
                                    ),
                                  ),
                                ),
                                SizedBox(width: McGyver.rsDoubleW(context, 1)),
                                RaisedButton(
                                  elevation: 0,
                                  color: Colors.transparent,
                                  hoverColor: backgroundRed,
                                  hoverElevation: 15,
                                  onPressed: () {
                                    Scrollable.ensureVisible(
                                            serviceKey.currentContext,
                                            duration: Duration(seconds: 1),
                                            curve: Curves.easeIn)
                                        .then(
                                            (value) => viewModel.setBool(true));
                                  },
                                  child: Text(
                                    'Services',
                                    style: GoogleFonts.openSans(
                                      color: headerTextColor,
                                      fontSize:
                                          SizeConfig().textSize(context, 1.8),
                                    ),
                                  ),
                                ),
                                SizedBox(width: McGyver.rsDoubleW(context, 1)),
                                RaisedButton(
                                  elevation: 0,
                                  color: Colors.transparent,
                                  hoverColor: backgroundRed,
                                  hoverElevation: 15,
                                  onPressed: () {
                                    Scrollable.ensureVisible(
                                            dataKey.currentContext,
                                            duration: Duration(seconds: 1),
                                            curve: Curves.easeIn)
                                        .then(
                                            (value) => viewModel.setBool(true));
                                  },
                                  child: Text(
                                    'About',
                                    style: GoogleFonts.openSans(
                                      color: headerTextColor,
                                      fontSize:
                                          SizeConfig().textSize(context, 1.8),
                                    ),
                                  ),
                                ),
                                SizedBox(width: McGyver.rsDoubleW(context, 1)),
                                RaisedButton(
                                  elevation: 0,
                                  color: Colors.transparent,
                                  hoverColor: backgroundRed,
                                  hoverElevation: 15,
                                  onPressed: () {
                                    Scrollable.ensureVisible(
                                            dataKey3.currentContext,
                                            duration: Duration(seconds: 2),
                                            curve: Curves.easeIn)
                                        .then(
                                            (value) => viewModel.setBool(true));
                                  },
                                  child: Text(
                                    'Works',
                                    style: GoogleFonts.openSans(
                                      color: headerTextColor,
                                      fontSize:
                                          SizeConfig().textSize(context, 1.8),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            width: width,
                            // color: Colors.white,
                            height: McGyver.rsDoubleH(context, 76),
                            child: Center(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      width: McGyver.rsDoubleW(context, 40),
                                      height: McGyver.rsDoubleH(context, 60),
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: McGyver.rsDoubleW(context, 4),
                                        ),
                                        child: SingleChildScrollView(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Hi,',
                                                style: GoogleFonts.openSans(
                                                  color: headerTextColor,
                                                  fontSize: SizeConfig()
                                                      .textSize(context, 3),
                                                ),
                                              ),
                                              FadeIn(
                                                delay: 2,
                                                child: Box(
                                                  text: "I'm Awa Felix",
                                                  textStyle: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.w500,
                                                    color: headerTextColor,
                                                    fontSize: SizeConfig()
                                                        .textSize(context, 4),
                                                  ),
                                                ),
                                              ),
                                              // Text(
                                              //   "I'm Awa Felix",
                                              //   style: GoogleFonts.lobster(
                                              //     color: headerTextColor,
                                              //     fontSize: SizeConfig()
                                              //         .textSize(context, 4),
                                              //   ),
                                              // ),
                                              FadeIn(
                                                delay: 4,
                                                child: Opacity(
                                                  opacity: 0.5,
                                                  child: Text(
                                                    'Web developer / mobile developer / desktop developer / Data Scientist',
                                                    style: GoogleFonts.roboto(
                                                        color:
                                                            Color(0xffE5E5E5),
                                                        fontSize: SizeConfig()
                                                            .textSize(
                                                                context, 1.5),
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                  height: McGyver.rsDoubleH(
                                                      context, 10)),
                                              FadeIn(
                                                delay: 2,
                                                child:
                                                    TypewriterAnimatedTextKit(
                                                        speed: Duration(
                                                            milliseconds: 100),
                                                        onTap: () {
                                                          print("Tap Event");
                                                        },
                                                        text: [
                                                          'I specialize in building top notch mobile applications and websites. I occassionally build CLI apps too.',
                                                        ],
                                                        textStyle: GoogleFonts
                                                            .montserrat(
                                                                color: Color(
                                                                    0xffbb9f9f),
                                                                fontSize: SizeConfig()
                                                                    .textSize(
                                                                        context,
                                                                        1.8)),
                                                        textAlign:
                                                            TextAlign.start,
                                                        alignment:
                                                            AlignmentDirectional
                                                                .topStart // or Alignment.topLeft
                                                        ),
                                              ),
                                              // Text(
                                              //   'I specialize in building top notch mobile applications and websites. I occassionally build CLI apps too.',
                                              //   style: GoogleFonts.montserrat(
                                              //       color: Color(0xffbb9f9f),
                                              //       fontSize: SizeConfig()
                                              //           .textSize(context, 1.8)),
                                              // ),
                                              SizedBox(
                                                  height: McGyver.rsDoubleH(
                                                      context, 10)),
                                              Align(
                                                alignment: Alignment.bottomLeft,
                                                child: MaterialButton(
                                                  color: backgroundBlack,
                                                  minWidth: McGyver.rsDoubleW(
                                                      context, 12),
                                                  height: McGyver.rsDoubleH(
                                                      context, 8),
                                                  onPressed: () => html.window
                                                      .open(Constants.RESUME,
                                                          'Felix-awa'),
                                                  shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                      width: 4,
                                                      color: backgroundRed,
                                                    ),
                                                  ),
                                                  child: Text(
                                                    'View Resume',
                                                    style:
                                                        GoogleFonts.montserrat(
                                                      color: headerTextColor,
                                                      fontSize: SizeConfig()
                                                          .textSize(
                                                              context, 1.8),
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  // SizedBox(width: McGyver.rsDoubleW(context, 10)),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 8.0),
                                    child: FadeIn(delay: 10, child: Circles()),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    key: dataKey,
                    width: width,
                    height: McGyver.rsDoubleH(context, 80),
                    color: backgroundRed,
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: McGyver.rsDoubleW(context, 4),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                                child: Padding(
                              padding: EdgeInsets.only(
                                top: McGyver.rsDoubleH(context, 6),
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'About',
                                        style: GoogleFonts.montserrat(
                                          color: headerTextColor,
                                          fontSize: SizeConfig()
                                              .textSize(context, 2.4),
                                        ),
                                      ),
                                      SizedBox(
                                        height: McGyver.rsDoubleH(context, 8),
                                      ),
                                      Flexible(
                                        fit: FlexFit.loose,
                                        child: Text(
                                          about,
                                          style: GoogleFonts.montserrat(
                                              color: Color(0xffbb9f9f),
                                              fontSize: SizeConfig()
                                                  .textSize(context, 1.5)),
                                        ),
                                      ),
                                      Text(
                                        'Tools: Dart/Flutter, Node/Js, Python, Octave',
                                        style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xffbb9f9f),
                                            fontSize: SizeConfig()
                                                .textSize(context, 1.5)),
                                      ),
                                      SizedBox(
                                        height: McGyver.rsDoubleH(context, 4),
                                      ),
                                    ]),
                              ),
                            )),
                            SizedBox(width: McGyver.rsDoubleW(context, 15)),
                            FadeIn(
                              delay: 4,
                              child: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('splash.gif')),
                                    shape: BoxShape.circle,
                                    // border: Border.all(
                                    //   width: 0,
                                    //   color: backgroundRed,
                                    // ),
                                    color: backgroundRed),
                                height: McGyver.rsDoubleH(context, 40),
                                width: McGyver.rsDoubleH(context, 40),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  PortServices(
                    key: serviceKey,
                    tab: true,
                  ),
                  Container(
                    key: dataKey3,
                    width: width,
                    height: McGyver.rsDoubleH(context, 100),
                    color: backgroundBlack,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: McGyver.rsDoubleW(context, 4),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: McGyver.rsDoubleH(context, 6),
                              ),
                              child: Text(
                                'Selected Projects',
                                style: GoogleFonts.montserrat(
                                  color: headerTextColor,
                                  fontSize: SizeConfig().textSize(context, 2.4),
                                ),
                              ),
                            ),
                            Container(
                              // color: Colors.blue,
                              width: width,
                              height: McGyver.rsDoubleH(context, 70),
                              child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: McGyver.rsDoubleW(context, 10),
                                    vertical: McGyver.rsDoubleW(context, 3),
                                  ),
                                  child: CarouselWithIndicatorDemo()),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                'Get in Touch',
                                style: GoogleFonts.montserrat(
                                  color: headerTextColor,
                                  fontSize: SizeConfig().textSize(context, 2),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: McGyver.rsDoubleH(context, 1),
                                    bottom: McGyver.rsDoubleH(context, 3)),
                                child: FadeIn(
                                  delay: 13,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FlatButton.icon(
                                        label: Text('Medium'),
                                        onPressed: () => html.window.open(
                                            Constants.PROFILE_MEDIUM,
                                            'felixhope'),
                                        icon: Container(
                                            width:
                                                McGyver.rsDoubleW(context, 4),
                                            height:
                                                McGyver.rsDoubleH(context, 4),
                                            child: Image.asset(
                                                Assets.medium_light)),
                                      ),
                                      FlatButton.icon(
                                        label: Text('Github'),
                                        onPressed: () => html.window.open(
                                            Constants.PROFILE_GITHUB,
                                            'Phelickz'),
                                        icon: Container(
                                            width:
                                                McGyver.rsDoubleW(context, 4),
                                            height:
                                                McGyver.rsDoubleH(context, 4),
                                            child: Image.asset(Assets.github)),
                                      ),
                                      FlatButton.icon(
                                        label: Text(''),
                                        onPressed: () => html.window.open(
                                            Constants.PROFILE_LINKEDIN,
                                            'Felix-awa'),
                                        icon: Container(
                                            width:
                                                McGyver.rsDoubleW(context, 4),
                                            height:
                                                McGyver.rsDoubleH(context, 4),
                                            child:
                                                Image.asset(Assets.linkedin)),
                                      ),
                                      FlatButton.icon(
                                        label: Text(''),
                                        onPressed: () => html.window.open(
                                            Constants.PROFILE_TWITTER,
                                            'FeolixaHope'),
                                        icon: Container(
                                          width: McGyver.rsDoubleW(context, 4),
                                          height: McGyver.rsDoubleH(context, 4),
                                          child: Image.asset(Assets.twitter),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
    );
  }
}
