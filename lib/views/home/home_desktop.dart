part of home_view;

class _HomeDesktop extends StatelessWidget {
  final HomeViewModel viewModel;

  _HomeDesktop(this.viewModel);

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
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
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: McGyver.rsDoubleW(context, 4),
                            ),
                            child: Container(
                                width: McGyver.rsDoubleW(context, 4),
                                height: McGyver.rsDoubleW(context, 4),
                                child: Image.asset(
                                  'homeIcon.png',
                                )),
                          )
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
                                        Text(
                                          "I'm Awa Felix",
                                          style: GoogleFonts.lobster(
                                            color: headerTextColor,
                                            fontSize: SizeConfig()
                                                .textSize(context, 4),
                                          ),
                                        ),
                                        Opacity(
                                          opacity: 0.5,
                                          child: Text(
                                            'Web developer / mobile developer / desktop developer / Data Scientist',
                                            style: GoogleFonts.lobster(
                                                color: Color(0xffE5E5E5),
                                                fontSize: SizeConfig()
                                                    .textSize(context, 1.5),
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                        SizedBox(
                                            height:
                                                McGyver.rsDoubleH(context, 10)),
                                        Text(
                                          'I specialize in building top notch mobile applications and websites. I occassionally build CLI apps too.',
                                          style: GoogleFonts.montserrat(
                                              color: Color(0xffbb9f9f),
                                              fontSize: SizeConfig()
                                                  .textSize(context, 1.8)),
                                        ),
                                        SizedBox(
                                            height:
                                                McGyver.rsDoubleH(context, 10)),
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: MaterialButton(
                                            color: backgroundBlack,
                                            minWidth:
                                                McGyver.rsDoubleW(context, 12),
                                            height:
                                                McGyver.rsDoubleH(context, 8),
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
                                                    .textSize(context, 1.8),
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
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Container(
                                width: McGyver.rsDoubleW(context, 40),
                                height: McGyver.rsDoubleH(context, 60),
                                // color: Colors.red,
                                child: Image.asset(
                                  'circles.png',
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'About',
                                  style: GoogleFonts.lobster(
                                    color: headerTextColor,
                                    fontSize:
                                        SizeConfig().textSize(context, 2.4),
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
                                      fontSize:
                                          SizeConfig().textSize(context, 1.5)),
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
                width: width,
                height: McGyver.rsDoubleH(context, 100),
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
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: McGyver.rsDoubleH(context, 4)),
                          child: StaggeredGridView.countBuilder(
                            crossAxisCount: 4,
                            itemCount: 4,
                            itemBuilder: (BuildContext context, int index) =>
                                Container(
                                  height: 10,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 3, color: Color(0xff2f2727))),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 8.0, top: 8.0),
                                    child: Align(
                                        alignment: Alignment.topRight,
                                        child: Container(
                                            width: 43,
                                            height: 45,
                                            child: Image.asset('github.png'))),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: McGyver.rsDoubleW(context, 3),
                                    ),
                                    child: Text(
                                      'Video Chat App',
                                      style: GoogleFonts.montserrat(
                                          color: Color(0xffc4c4c4),
                                          fontWeight: FontWeight.bold,
                                          fontSize: SizeConfig()
                                              .textSize(context, 1.8)),
                                    ),
                                  ),
                                  SizedBox(
                                      height: McGyver.rsDoubleH(context, 3)),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: McGyver.rsDoubleW(context, 3),
                                    ),
                                    child: Text(
                                      'A mobile application for video calling and chatting with people',
                                      style: GoogleFonts.montserrat(
                                          color: Color(0xffc4c4c4),
                                          fontWeight: FontWeight.w400,
                                          fontSize: SizeConfig()
                                              .textSize(context, 1.4)),
                                    ),
                                  ),
                                  SizedBox(
                                      height: McGyver.rsDoubleH(context, 3)),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: McGyver.rsDoubleW(context, 3),
                                    ),
                                    child: Text(
                                      'Flutter/Dart',
                                      style: GoogleFonts.montserrat(
                                          color: Color(0xffc4c4c4),
                                          fontWeight: FontWeight.w400,
                                          fontSize: SizeConfig()
                                              .textSize(context, 1.4)),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            staggeredTileBuilder: (int index) =>
                                new StaggeredTile.count(
                                    2, index.isEven ? 2 : 1),
                            mainAxisSpacing: 54.0,
                            crossAxisSpacing: 90.0,
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
