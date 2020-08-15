import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/core/services/res.dart';
import 'package:portfolio/core/services/res2.dart';
import 'package:portfolio/theme/colors.dart';

class ServicesMobile extends StatefulWidget {
  final bool tab;

  const ServicesMobile({Key key, this.tab = false}) : super(key: key);

  @override
  _ServicesMobileState createState() => _ServicesMobileState();
}

class _ServicesMobileState extends State<ServicesMobile>
    with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;
  AnimationController _controller;

  final DecorationTween decorationTween = DecorationTween(
    begin: BoxDecoration(
        borderRadius: BorderRadius.circular(80),
        color: Color(0xff000000),
        border: Border.all(width: 3, color: Color(0xffBC8181))),
    end: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Color(0xff000000),
        border: Border.all(width: 3, color: backgroundRed)),
  );

  initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );

    controller = AnimationController(
        duration: const Duration(milliseconds: 5000), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);

    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });

    _controller.forward();
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.width;
    return Container(
        width: width,
        height: McGyver.rsDoubleW(context, 50) * 5.7,
        color: Color(0xff0E0106),
        child: Padding(
          padding: EdgeInsets.only(top: McGyver.rsDoubleW(context, 4)),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Services',
                  style: GoogleFonts.montserrat(
                    color: headerTextColor,
                    fontSize: SizeConfig().textSize(context, 3),
                  ),
                ),
                SizedBox(
                  height: McGyver.rsDoubleW(context, 2),
                ),
                Opacity(
                  opacity: 0.7,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: McGyver.rsDoubleW(context, 4)),
                    child: Text(
                      services,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        color: headerTextColor,
                        fontWeight: FontWeight.w300,
                        fontSize: SizeConfig().textSize(context, 1.8),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: McGyver.rsDoubleH(context, 2),
                ),
                Expanded(
                  child: Wrap(
                    spacing: McGyver.rsDoubleW(context, 3),
                    runSpacing: McGyver.rsDoubleH(context, 2),
                    children: [
                      // FadeTransition(
                      //   opacity: animation,
                      //   child: Container(
                      //     width: McGyver.rsDoubleW(context, 50),
                      //     height: McGyver.rsDoubleH(context, 50),
                      //     decoration: BoxDecoration(
                      //         shape: BoxShape.circle,
                      //         color: backgroundBlack,
                      //         border: Border.all(
                      //             width: 3, color: Color(0xff652323))),
                      //     child: Padding(
                      //       padding: EdgeInsets.symmetric(
                      //           horizontal: McGyver.rsDoubleW(context, 3)),
                      //       child: Column(
                      //         crossAxisAlignment: CrossAxisAlignment.center,
                      //         mainAxisAlignment: MainAxisAlignment.center,
                      //         children: [
                      //           CircleAvatar(
                      //             backgroundColor: Colors.transparent,
                      //             backgroundImage: AssetImage('smartphone.png'),
                      //           ),
                      //           Text(
                      //             'Mobile',
                      //             style: GoogleFonts.montserrat(
                      //               fontWeight: FontWeight.w500,
                      //               color: headerTextColor,
                      //               fontSize:
                      //                   SizeConfig().textSize(context, 2.4),
                      //             ),
                      //           ),
                      //           SizedBox(height: McGyver.rsDoubleH(context, 1)),
                      //           Opacity(
                      //             opacity: 0.7,
                      //             child: Text(
                      //               'Get android and ios applications for your ideas. 100% real and clean',
                      //               textAlign: TextAlign.center,
                      //               style: GoogleFonts.montserrat(
                      //                 color: headerTextColor,
                      //                 fontWeight: FontWeight.w300,
                      //                 fontSize:
                      //                     SizeConfig().textSize(context, 1.8),
                      //               ),
                      //             ),
                      //           )
                      //         ],
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      FadeTransition(
                        opacity: animation,
                        child: Container(
                          width: McGyver.rsDoubleW(context, 50),
                          height: McGyver.rsDoubleW(context, 50),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xff000000),
                              border: Border.all(
                                  width: 3, color: Color(0xff652323))),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: McGyver.rsDoubleW(context, 3)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  child: Image.asset('smartphone.png',
                                      fit: BoxFit.contain),
                                ),
                                Text(
                                  'Mobile',
                                  style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w500,
                                    color: headerTextColor,
                                    fontSize:
                                        SizeConfig().textSize(context, 2.4),
                                  ),
                                ),
                                SizedBox(height: McGyver.rsDoubleH(context, 1)),
                                Opacity(
                                  opacity: 0.7,
                                  child: Text(
                                    'Get android and ios applications for your ideas. 100% real and clean',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      color: headerTextColor,
                                      fontWeight: FontWeight.w300,
                                      fontSize:
                                          SizeConfig().textSize(context, 1.8),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      DecoratedBoxTransition(
                        position: DecorationPosition.background,
                        decoration: decorationTween.animate(_controller),
                        child: Container(
                          width: McGyver.rsDoubleW(context, 50),
                          height: McGyver.rsDoubleW(context, 50),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: McGyver.rsDoubleW(context, 3)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  child: Image.asset('data.png',
                                      fit: BoxFit.contain),
                                ),
                                Text(
                                  'Web',
                                  style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w500,
                                    color: headerTextColor,
                                    fontSize:
                                        SizeConfig().textSize(context, 2.4),
                                  ),
                                ),
                                SizedBox(height: McGyver.rsDoubleH(context, 1)),
                                Opacity(
                                  opacity: 0.7,
                                  child: Text(
                                    'Get highly performant web and desktop applications with a perfect lighthouse score',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      color: headerTextColor,
                                      fontWeight: FontWeight.w300,
                                      fontSize:
                                          SizeConfig().textSize(context, 1.8),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      FadeTransition(
                        opacity: animation,
                        child: Container(
                          width: McGyver.rsDoubleW(context, 50),
                          height: McGyver.rsDoubleW(context, 50),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xff000000),
                              border: Border.all(
                                  width: 3, color: Color(0xff724242))),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: McGyver.rsDoubleW(context, 3)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  child: Image.asset('algorithm.png',
                                      fit: BoxFit.contain),
                                ),
                                Text(
                                  'Analysis',
                                  style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w500,
                                    color: headerTextColor,
                                    fontSize:
                                        SizeConfig().textSize(context, 2.4),
                                  ),
                                ),
                                SizedBox(height: McGyver.rsDoubleH(context, 1)),
                                Opacity(
                                  opacity: 0.7,
                                  child: Text(
                                    'Run analysis on your business data and get effective algorithm models to help your business grow',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      color: headerTextColor,
                                      fontWeight: FontWeight.w300,
                                      fontSize:
                                          SizeConfig().textSize(context, 1.8),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      DecoratedBoxTransition(
                        position: DecorationPosition.background,
                        decoration: decorationTween.animate(_controller),
                        child: Container(
                         width: McGyver.rsDoubleW(context, 50),
                          height: McGyver.rsDoubleW(context, 50),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: McGyver.rsDoubleW(context, 3)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  child: Image.asset('graphic-design.png',
                                      fit: BoxFit.contain),
                                ),
                                Text(
                                  'Design',
                                  style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w500,
                                    color: headerTextColor,
                                    fontSize:
                                        SizeConfig().textSize(context, 2.4),
                                  ),
                                ),
                                SizedBox(height: McGyver.rsDoubleH(context, 1)),
                                Opacity(
                                  opacity: 0.7,
                                  child: Text(
                                    'Bring your ideas to life with beautiful and pixel perfect designs.',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      color: headerTextColor,
                                      fontWeight: FontWeight.w300,
                                      fontSize:
                                          SizeConfig().textSize(context, 1.8),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
