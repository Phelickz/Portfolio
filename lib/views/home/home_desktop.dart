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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Mobile Developer',
                          style: GoogleFonts.aBeeZee(
                            color: Colors.white60,
                              fontWeight: FontWeight.bold,
                              fontSize: SizeConfig().textSize(context, 5)),
                        ),
                        Text(
                          '   Data Scientist',
                          style: GoogleFonts.aBeeZee(
                            color: Colors.white60,
                              fontWeight: FontWeight.bold,
                              fontSize: SizeConfig().textSize(context, 5)),
                        ),
                        Text(
                          '       Petroleum Engineer',
                          style: GoogleFonts.aBeeZee(
                            color: Colors.white60,
                              fontWeight: FontWeight.bold,
                              fontSize: SizeConfig().textSize(context, 5)),
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
