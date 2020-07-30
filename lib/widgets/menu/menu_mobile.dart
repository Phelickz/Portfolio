part of menu_widget;

class _MenuMobile extends StatelessWidget {
  final GestureTapCallback onTap;

  const _MenuMobile({Key key, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('bg2.jpg'))),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                elevation: 0,
                color: Colors.transparent,
                hoverColor: Colors.black54,
                hoverElevation: 15,
                onPressed: onTap,
                child: Text(
                  'Home',
                  style: GoogleFonts.aBeeZee(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize: SizeConfig().textSize(context, 3)),
                ),
              ),
              SizedBox(height: McGyver.rsDoubleH(context, 7)),
              RaisedButton(
                elevation: 0,
                color: Colors.transparent,
                hoverColor: Colors.black54,
                hoverElevation: 15,
                onPressed: () =>  Navigator.push(
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
                      fontSize: SizeConfig().textSize(context, 3)),
                ),
              ),
              SizedBox(height: McGyver.rsDoubleH(context, 7)),
              RaisedButton(
                elevation: 0,
                color: Colors.transparent,
                hoverColor: Colors.black54,
                hoverElevation: 15,
                onPressed: () {},
                child: Text(
                  'Works',
                  style: GoogleFonts.aBeeZee(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize: SizeConfig().textSize(context, 3)),
                ),
              ),
              SizedBox(height: McGyver.rsDoubleH(context, 7)),
              RaisedButton(
                elevation: 0,
                color: Colors.transparent,
                hoverColor: Colors.black54,
                hoverElevation: 15,
                onPressed: () {},
                child: Text(
                  'Wanna Talk?',
                  style: GoogleFonts.aBeeZee(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize: SizeConfig().textSize(context, 3)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
