part of about_page_view;

class _AboutPageDesktop extends StatelessWidget {
  final AboutPageViewModel viewModel;

  _AboutPageDesktop(this.viewModel);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        // appBar: AppBar(),
        body: Row(
          children: [
            Container(
              width: width / 2,
              height: height,
              // color: Colors.red,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                image: AssetImage('009.gif'),
              )),
            ),
            Container(
              width: width / 2,
              height: height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.purple[900],
                    Colors.black
                  ]
                )
              ),
            ),
          ],
        ));
  }
}

class Constants {
  static const BLOG_API =
      'https://adityadroid-medium.herokuapp.com/@adityadroid';
  static const MEDIUM_IMAGE_CDN = 'https://miro.medium.com/fit/c/700/300/';
  static const BLOG_URL = 'http://www.medium.com/@adityadroid/';
  static const PROFILE_MEDIUM = 'http://www.medium.com/@adityadroid';
  static const PROFILE_LINKEDIN = 'https://www.linkedin.com/in/adityagurjar/';
  static const PROFILE_FACEBOOK = 'https://www.facebook.com/adityaadi333';
  static const PROFILE_GITHUB = 'https://github.com/adityadroid/';
  static const PROFILE_TWITTER = 'https://twitter.com/adityadroid';
  static const PROFILE_INSTAGRAM = 'https://www.instagram.com/adityadroid/';
}
