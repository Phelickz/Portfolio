part of about_page_view;

class _AboutPageMobile extends StatelessWidget {
  final AboutPageViewModel viewModel;

  _AboutPageMobile(this.viewModel);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text('About')));
  }
}
