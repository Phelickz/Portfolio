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
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
                blurRadius: 6.0, color: Colors.grey, offset: Offset(0.0, 0.4))
          ]),
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Text(
                    'Awa Felix - Software Developer',
                    style: GoogleFonts.aBeeZee(
                        fontWeight: FontWeight.bold,
                        fontSize: SizeConfig().textSize(context, 3)),
                  ),
                  Spacer(),
                  Text('Home'),
                  SizedBox(width: McGyver.rsDoubleW(context, 7)),
                  Text('About'),
                  SizedBox(width: McGyver.rsDoubleW(context, 7)),
                  Text('Works'),
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
                    'bk2.jpg',
                  ),
                )),
              ),
              Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                      Colors.black26,
                      Colors.black87,
                      // Colors.black,
                    ])),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: McGyver.rsDoubleW(context, 10)),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Awa Felix',
                          style: GoogleFonts.aBeeZee(
                            color: Colors.white60,
                              fontWeight: FontWeight.bold,
                              fontSize: SizeConfig().textSize(context, 5)),
                        ),
                        SizedBox(height: McGyver.rsDoubleH(context, 3)),
                        Text(
                          'A Mobile developer, Data scientist, Project Manager and Petroluem Engineer',
                          style: GoogleFonts.aBeeZee(
                            color: Colors.white38,
                              fontWeight: FontWeight.bold,
                              fontSize: SizeConfig().textSize(context, 3)),
                        ),
                        SizedBox(height: McGyver.rsDoubleH(context, 1)),
                        Text(
                          'Flutter/Dart, Python, NodeJs, Typescript',
                          style: GoogleFonts.aBeeZee(
                            color: Colors.white38,
                              fontWeight: FontWeight.bold,
                              fontSize: SizeConfig().textSize(context, 3)),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    )

        );
  }
}
