part of about_page_view;

class _AboutPageTablet extends StatelessWidget {
  final AboutPageViewModel viewModel;

  _AboutPageTablet(this.viewModel);
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(), body: Center(child: Text('About')));
  }
}
