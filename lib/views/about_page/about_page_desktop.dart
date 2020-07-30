part of about_page_view;

class _AboutPageDesktop extends StatelessWidget {
  final AboutPageViewModel viewModel;

  _AboutPageDesktop(this.viewModel);
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(), body: Center(child: Text('About')));
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
