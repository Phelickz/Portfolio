part of home_view;

class _HomeDesktop extends StatelessWidget {
  final HomeViewModel viewModel;

  _HomeDesktop(this.viewModel);
  final dataKey = new GlobalKey();
  final dataKey2 = new GlobalKey();
  final dataKey3 = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      floatingActionButton: Visibility(
        visible: viewModel.menuActive,
        child: FloatingActionButton(
            backgroundColor: backgroundRed,
            child: Icon(
              Icons.arrow_upward,
              color: backgroundBlack,
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
                            child: Image.asset('backgroundPhoto.png',
                                fit: BoxFit.cover)),
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
                                    style: GoogleFonts.lobster(
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
                                    style: GoogleFonts.lobster(
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
                                    style: GoogleFonts.lobster(
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
                                                style: GoogleFonts.lobster(
                                                  color: headerTextColor,
                                                  fontSize: SizeConfig()
                                                      .textSize(context, 3),
                                                ),
                                              ),
                                              FadeIn(
                                                delay: 2,
                                                child: Box(
                                                  text: "I'm Awa Felix",
                                                  textStyle:
                                                      GoogleFonts.lobster(
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
                                              Opacity(
                                                opacity: 0.5,
                                                child: Text(
                                                  'Web developer / mobile developer / desktop developer / Data Scientist',
                                                  style: GoogleFonts.lobster(
                                                      color: Color(0xffE5E5E5),
                                                      fontSize: SizeConfig()
                                                          .textSize(
                                                              context, 1.5),
                                                      fontWeight:
                                                          FontWeight.w400),
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
                                                  onPressed: () {},
                                                  shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                      width: 4,
                                                      color: backgroundRed,
                                                    ),
                                                  ),
                                                  child: Text(
                                                    'Contact ME',
                                                    style: GoogleFonts.lobster(
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
                                    child: FadeIn(
                                      delay: 10,
                                      child: Container(
                                        width: McGyver.rsDoubleW(context, 40),
                                        height: McGyver.rsDoubleH(context, 60),
                                        // color: Colors.red,
                                        child: Image.asset(
                                          'circles.png',
                                        ),
                                      ),
                                    ),
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
                                        style: GoogleFonts.lobster(
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
                            Container(
                                height: McGyver.rsDoubleH(context, 50),
                                child: Image.asset('me.png'))
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                      key: dataKey3,
                      width: width,
                      height: McGyver.rsDoubleH(context, 130),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('footer.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: McGyver.rsDoubleW(context, 4),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: McGyver.rsDoubleH(context, 6),
                              ),
                              child: Text(
                                'Selected Projects',
                                style: GoogleFonts.lobster(
                                  color: headerTextColor,
                                  fontSize: SizeConfig().textSize(context, 2.4),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                // color: Colors.blue,
                                width: width,
                                height: McGyver.rsDoubleH(context, 120),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: McGyver.rsDoubleH(
                                                  context, 17)),
                                          child: Container(
                                            width:
                                                McGyver.rsDoubleW(context, 30),
                                            height:
                                                McGyver.rsDoubleH(context, 36),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 3,
                                                    color: Color(0xff2f2727))),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 8.0, top: 8.0),
                                                  child: Align(
                                                      alignment:
                                                          Alignment.topRight,
                                                      child: Container(
                                                          width: 43,
                                                          height: 45,
                                                          child: Image.asset(
                                                              'github.png'))),
                                                ),
                                                SizedBox(
                                                    height: McGyver.rsDoubleH(
                                                        context, 4)),
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal:
                                                        McGyver.rsDoubleW(
                                                            context, 3),
                                                  ),
                                                  child: Text(
                                                    'Video Chat App',
                                                    style: GoogleFonts.montserrat(
                                                        color:
                                                            Color(0xffc4c4c4),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: SizeConfig()
                                                            .textSize(
                                                                context, 1.8)),
                                                  ),
                                                ),
                                                SizedBox(
                                                    height: McGyver.rsDoubleH(
                                                        context, 3)),
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal:
                                                        McGyver.rsDoubleW(
                                                            context, 3),
                                                  ),
                                                  child: Text(
                                                    'A mobile application for video calling and chatting with people',
                                                    style: GoogleFonts.montserrat(
                                                        color:
                                                            Color(0xffc4c4c4),
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: SizeConfig()
                                                            .textSize(
                                                                context, 1.4)),
                                                  ),
                                                ),
                                                SizedBox(
                                                    height: McGyver.rsDoubleH(
                                                        context, 3)),
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal:
                                                        McGyver.rsDoubleW(
                                                            context, 3),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        Alignment.bottomLeft,
                                                    child: Text(
                                                      'Tools: Flutter/Dart',
                                                      style: GoogleFonts
                                                          .montserrat(
                                                              color: Color(
                                                                  0xffc4c4c4),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              fontSize:
                                                                  SizeConfig()
                                                                      .textSize(
                                                                          context,
                                                                          1.4)),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                            width:
                                                McGyver.rsDoubleW(context, 11)),
                                        Container(
                                          width: McGyver.rsDoubleW(context, 30),
                                          height:
                                              McGyver.rsDoubleH(context, 36),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 3,
                                                  color: Color(0xff331818))),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    right: 8.0, top: 8.0),
                                                child: Align(
                                                    alignment:
                                                        Alignment.topRight,
                                                    child: Container(
                                                        width: 43,
                                                        height: 45,
                                                        child: Image.asset(
                                                            'github.png'))),
                                              ),
                                              SizedBox(
                                                  height: McGyver.rsDoubleH(
                                                      context, 4)),
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: McGyver.rsDoubleW(
                                                      context, 3),
                                                ),
                                                child: Text(
                                                  'Video Chat App',
                                                  style: GoogleFonts.montserrat(
                                                      color: Color(0xffc4c4c4),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: SizeConfig()
                                                          .textSize(
                                                              context, 1.8)),
                                                ),
                                              ),
                                              SizedBox(
                                                  height: McGyver.rsDoubleH(
                                                      context, 3)),
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: McGyver.rsDoubleW(
                                                      context, 3),
                                                ),
                                                child: Text(
                                                  'A mobile application for video calling and chatting with people',
                                                  style: GoogleFonts.montserrat(
                                                      color: Color(0xffc4c4c4),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: SizeConfig()
                                                          .textSize(
                                                              context, 1.4)),
                                                ),
                                              ),
                                              SizedBox(
                                                  height: McGyver.rsDoubleH(
                                                      context, 3)),
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: McGyver.rsDoubleW(
                                                      context, 3),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: Text(
                                                    'Tools: Flutter/Dart',
                                                    style: GoogleFonts.montserrat(
                                                        color:
                                                            Color(0xffc4c4c4),
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: SizeConfig()
                                                            .textSize(
                                                                context, 1.4)),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left:
                                                  McGyver.rsDoubleH(context, 8),
                                              top: McGyver.rsDoubleH(
                                                  context, 14)),
                                          child: Container(
                                            width:
                                                McGyver.rsDoubleW(context, 30),
                                            height:
                                                McGyver.rsDoubleH(context, 36),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 2,
                                                    color: Color(0xffC4C4C4))),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 8.0, top: 8.0),
                                                  child: Align(
                                                      alignment:
                                                          Alignment.topRight,
                                                      child: Container(
                                                          width: 43,
                                                          height: 45,
                                                          child: Image.asset(
                                                              'github.png'))),
                                                ),
                                                SizedBox(
                                                    height: McGyver.rsDoubleH(
                                                        context, 4)),
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal:
                                                        McGyver.rsDoubleW(
                                                            context, 3),
                                                  ),
                                                  child: Text(
                                                    'Video Chat App',
                                                    style: GoogleFonts.montserrat(
                                                        color:
                                                            Color(0xffc4c4c4),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: SizeConfig()
                                                            .textSize(
                                                                context, 1.8)),
                                                  ),
                                                ),
                                                SizedBox(
                                                    height: McGyver.rsDoubleH(
                                                        context, 3)),
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal:
                                                        McGyver.rsDoubleW(
                                                            context, 3),
                                                  ),
                                                  child: Text(
                                                    'A mobile application for video calling and chatting with people',
                                                    style: GoogleFonts.montserrat(
                                                        color:
                                                            Color(0xffc4c4c4),
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: SizeConfig()
                                                            .textSize(
                                                                context, 1.4)),
                                                  ),
                                                ),
                                                SizedBox(
                                                    height: McGyver.rsDoubleH(
                                                        context, 3)),
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal:
                                                        McGyver.rsDoubleW(
                                                            context, 3),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        Alignment.bottomLeft,
                                                    child: Text(
                                                      'Tools: Flutter/Dart',
                                                      style: GoogleFonts
                                                          .montserrat(
                                                              color: Color(
                                                                  0xffc4c4c4),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              fontSize:
                                                                  SizeConfig()
                                                                      .textSize(
                                                                          context,
                                                                          1.4)),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                            width:
                                                McGyver.rsDoubleW(context, 17)),
                                        Container(
                                          width: McGyver.rsDoubleW(context, 30),
                                          height:
                                              McGyver.rsDoubleH(context, 36),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 3,
                                                  color: Color(0xffBA6969))),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    right: 8.0, top: 8.0),
                                                child: Align(
                                                    alignment:
                                                        Alignment.topRight,
                                                    child: Container(
                                                        width: 43,
                                                        height: 45,
                                                        child: Image.asset(
                                                            'github.png'))),
                                              ),
                                              SizedBox(
                                                  height: McGyver.rsDoubleH(
                                                      context, 4)),
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: McGyver.rsDoubleW(
                                                      context, 3),
                                                ),
                                                child: Text(
                                                  'Video Chat App',
                                                  style: GoogleFonts.montserrat(
                                                      color: Color(0xffc4c4c4),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: SizeConfig()
                                                          .textSize(
                                                              context, 1.8)),
                                                ),
                                              ),
                                              SizedBox(
                                                  height: McGyver.rsDoubleH(
                                                      context, 3)),
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: McGyver.rsDoubleW(
                                                      context, 3),
                                                ),
                                                child: Text(
                                                  'A mobile application for video calling and chatting with people',
                                                  style: GoogleFonts.montserrat(
                                                      color: Color(0xffc4c4c4),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: SizeConfig()
                                                          .textSize(
                                                              context, 1.4)),
                                                ),
                                              ),
                                              SizedBox(
                                                  height: McGyver.rsDoubleH(
                                                      context, 3)),
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: McGyver.rsDoubleW(
                                                      context, 3),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: Text(
                                                    'Tools: Flutter/Dart',
                                                    style: GoogleFonts.montserrat(
                                                        color:
                                                            Color(0xffc4c4c4),
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: SizeConfig()
                                                            .textSize(
                                                                context, 1.4)),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                        height: McGyver.rsDoubleH(context, 6)),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            bottom:
                                                McGyver.rsDoubleH(context, 3)),
                                        child: FadeIn(
                                          delay: 13,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              FlatButton.icon(
                                                label: Text('Medium'),
                                                onPressed: () => html.window
                                                    .open(
                                                        Constants
                                                            .PROFILE_MEDIUM,
                                                        'felixhope'),
                                                icon: Container(
                                                    width: McGyver.rsDoubleW(
                                                        context, 4),
                                                    height: McGyver.rsDoubleH(
                                                        context, 4),
                                                    child: Image.asset(
                                                        Assets.medium_light)),
                                              ),
                                              FlatButton.icon(
                                                label: Text('Github'),
                                                onPressed: () => html.window
                                                    .open(
                                                        Constants
                                                            .PROFILE_GITHUB,
                                                        'Phelickz'),
                                                icon: Container(
                                                    width: McGyver.rsDoubleW(
                                                        context, 8),
                                                    height: McGyver.rsDoubleH(
                                                        context, 4),
                                                    child: Image.asset(
                                                        Assets.github)),
                                              ),
                                              FlatButton.icon(
                                                label: Text(''),
                                                onPressed: () => html.window
                                                    .open(
                                                        Constants
                                                            .PROFILE_LINKEDIN,
                                                        'Felix-awa'),
                                                icon: Container(
                                                    width: McGyver.rsDoubleW(
                                                        context, 8),
                                                    height: McGyver.rsDoubleH(
                                                        context, 4),
                                                    child: Image.asset(
                                                        Assets.linkedin)),
                                              ),
                                              FlatButton.icon(
                                                label: Text(''),
                                                onPressed: () => html.window
                                                    .open(
                                                        Constants
                                                            .PROFILE_TWITTER,
                                                        'FeolixaHope'),
                                                icon: Container(
                                                    width: McGyver.rsDoubleW(
                                                        context, 8),
                                                    height: McGyver.rsDoubleH(
                                                        context, 4),
                                                    child: Image.asset(
                                                        Assets.twitter)),
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
                          ],
                        ),
                      ))
                ],
              ),
            ),
    );
  }
}
