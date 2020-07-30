part of home_view;

class _HomeMobile extends StatelessWidget {
  final HomeViewModel viewModel;

  _HomeMobile(this.viewModel);

 
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
              padding: EdgeInsets.symmetric(horizontal: 10),
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
                  IconButton(
                    icon: viewModel.menuActive
                        ? Icon(Icons.cancel)
                        : Icon(Icons.menu),
                    onPressed: () => viewModel.setBool(),
                    color: Colors.white70,
                  )
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: viewModel.menuActive
              ? LogoAnimation(
                  child: MenuWidget(
                  onTap: () => viewModel.setBool(),
                ))
              : Stack(
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
                        padding: EdgeInsets.only(
                            left: McGyver.rsDoubleW(context, 10)),
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Box(
                                text: 'Awa Felix',
                                textStyle: GoogleFonts.aBeeZee(
                                    color: Colors.white60,
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        SizeConfig().textSize(context, 4)),
                              ),
                              SizedBox(height: McGyver.rsDoubleH(context, 3)),
                              FadeIn(
                                delay: 7,
                                child: Text(
                                  'A Mobile developer, Data analyst, ML engineer, Project Manager and Petroluem Engineer',
                                  style: GoogleFonts.aBeeZee(
                                      color: Colors.white38,
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          SizeConfig().textSize(context, 3)),
                                ),
                              ),
                              SizedBox(height: McGyver.rsDoubleH(context, 1)),
                              FadeIn(
                                delay: 9,
                                child: Text(
                                  'Flutter/Dart, Python, NodeJs, Typescript',
                                  style: GoogleFonts.aBeeZee(
                                      color: Colors.white38,
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          SizeConfig().textSize(context, 3)),
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
                        padding: EdgeInsets.only(
                            bottom: McGyver.rsDoubleH(context, 10)),
                        child: FadeIn(
                          delay: 10,
                          child: Container(
                            child: Text(
                              'Get in Touch',
                              style: GoogleFonts.aBeeZee(
                                  color: Colors.white12,
                                  fontWeight: FontWeight.bold,
                                  fontSize:
                                      SizeConfig().textSize(context, 1.9)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(
                            bottom: McGyver.rsDoubleH(context, 3)),
                        child: FadeIn(
                          delay: 13,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  width: McGyver.rsDoubleW(context, 13),
                                  height: McGyver.rsDoubleH(context, 4),
                                  child: Image.asset(Assets.facebook)),
                              Container(
                                  width: McGyver.rsDoubleW(context, 13),
                                  height: McGyver.rsDoubleH(context, 4),
                                  child: Image.asset(Assets.medium_light)),
                              Container(
                                  width: McGyver.rsDoubleW(context, 13),
                                  height: McGyver.rsDoubleH(context, 4),
                                  child: Image.asset(Assets.github)),
                              Container(
                                  width: McGyver.rsDoubleW(context, 13),
                                  height: McGyver.rsDoubleH(context, 4),
                                  child: Image.asset(Assets.linkedin)),
                              Container(
                                  width: McGyver.rsDoubleW(context, 13),
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
    )
        // ),
        // bottomNavigationBar: BottomNavigationBar(
        //   items: const <BottomNavigationBarItem>[
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.account_circle),
        //       title: Text('About'),
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.chrome_reader_mode),
        //       title: Text('Blog'),
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.mobile_screen_share),
        //       title: Text('Projects'),
        //     )
        //   ],
        //   currentIndex: _selectedIndex,
        //   // onTap: (index)=> setState(() => _selectedIndex = index),
        //   selectedItemColor: Theme.of(context).accentColor,
        // ),
        );
  }
}
