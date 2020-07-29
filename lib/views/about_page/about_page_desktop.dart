part of about_page_view;

class _AboutPageDesktop extends StatelessWidget {
  final AboutPageViewModel viewModel;

  _AboutPageDesktop(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 100,
                backgroundImage: Image.asset(Assets.avatar).image,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Awa Felix',
                textScaleFactor: 4,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Mobile. Flutter. Data Science. Music.\nLikes Traveling.',
                style: Theme.of(context).textTheme.caption,
                textScaleFactor: 2,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.github)
                        ),
                    label: Text('Github'),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_GITHUB, 'adityadroid'),
                  ),
                  FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.twitter)
                        ),
                    label: Text('Twitter'),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_TWITTER, 'adityadroid'),
                  ),
                  FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(
                            // ThemeSwitcher.of(context).isDarkModeOn
                            //     ? Assets.medium
                                 Assets.medium_light)),
                    label: Text('Medium'),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_MEDIUM, 'adityadroid'),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.instagram)),
                    label: Text('Instagram'),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_INSTAGRAM, 'adityadroid'),
                  ),
                  FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.facebook)),
                    label: Text('Facebook'),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_FACEBOOK, 'adityadroid'),
                  ),
                  FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.linkedin)),
                    label: Text('Linkedin'),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_LINKEDIN, 'adityadroid'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


class Constants{
  static const BLOG_API = 'https://adityadroid-medium.herokuapp.com/@adityadroid';
  static const MEDIUM_IMAGE_CDN = 'https://miro.medium.com/fit/c/700/300/';
  static const BLOG_URL = 'http://www.medium.com/@adityadroid/';
  static const PROFILE_MEDIUM = 'http://www.medium.com/@adityadroid';
  static const PROFILE_LINKEDIN = 'https://www.linkedin.com/in/adityagurjar/';
  static const PROFILE_FACEBOOK = 'https://www.facebook.com/adityaadi333';
  static const PROFILE_GITHUB = 'https://github.com/adityadroid/';
  static const PROFILE_TWITTER = 'https://twitter.com/adityadroid';
  static const PROFILE_INSTAGRAM = 'https://www.instagram.com/adityadroid/';
}