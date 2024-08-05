import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:url_launcher/url_launcher.dart';

class ProjectDetails extends StatefulWidget {
  // const ProjectDetails({super.key});

  final String projectTitle;
  final String projectDescription;
  final List<String> projectTools;
  final String projectUrl;
  final String projectImgDetail;

  const ProjectDetails(this.projectTitle, this.projectDescription,
      this.projectTools, this.projectUrl, this.projectImgDetail,
      {super.key});

  @override
  State<ProjectDetails> createState() => _ProjectDetailsState();
}

class _ProjectDetailsState extends State<ProjectDetails> {
  int indextTools = 0;

  // dynamic build_ToolsUsed(List<String> tools) {
  //   dynamic result = tools[indextTools];
  //   indextTools++;
  //   return result;
  // }

  Future launchWebsite() async {
    final url = widget.projectUrl;

    await launch(url);
  }

  // _launchURLBrowser() async {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.projectTitle,
          style: const TextStyle(
            fontFamily: 'Cairo',
            fontSize: 26.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        // centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 3, 55, 98),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'The project purpose',
                    style: TextStyle(
                      fontFamily: 'PlayfairDisplay',
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    widget.projectDescription,
                    style: const TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: 24.0,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(top: 10.0),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Tools that I used',
                      style: TextStyle(
                        fontFamily: 'PlayfairDisplay',
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: widget.projectTools.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            widget.projectTools[index],
                            // build_ToolsUsed(widget.project_tools),
                            style: const TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: 24.0,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  // const Padding(
                  //   padding: EdgeInsets.only(top: 10.0),
                  //   child: Align(
                  //     alignment: Alignment.centerLeft,
                  //     child: Text(
                  //       'Dart',
                  //       // build_ToolsUsed(widget.project_tools),
                  //       style: TextStyle(
                  //         fontFamily: 'Cairo',
                  //         fontSize: 24.0,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.asset(
                    widget.projectImgDetail,
                    // fit: BoxFit.cover,
                  )),
            ),
            Container(
              padding: const EdgeInsets.only(top: 15.0),
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'You can see the whole project on the GitHub ',
                      style: const TextStyle(
                        fontFamily: 'PlayfairDisplay',
                        color: Colors.black,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          text: 'HERE',
                          style: const TextStyle(
                            color: Colors.blue,
                            fontFamily: 'Cairo',
                            fontSize: 24.0,
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = launchWebsite,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
