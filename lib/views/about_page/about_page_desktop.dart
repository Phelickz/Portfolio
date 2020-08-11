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

