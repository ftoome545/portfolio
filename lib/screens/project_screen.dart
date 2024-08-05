import 'package:flutter/material.dart';
import '../app_data.dart';
import '../widgets/app_drawer.dart';
import '../widgets/list_of_projects.dart';

class ProjectScreen extends StatefulWidget {
  static const screenRoute = '/projects-page';

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  // late String? projectTitle;
  // late List<Project> displayProjects;
  //   List<Project> _availableTrips = Project_data;

  // void initState() {
  //   super.initState();
  // }

  // void didChangeDependencies() {
  //   final routesArguments =
  //       ModalRoute.of(context)!.settings.arguments as Map<String, String?>;
  //   final categoryId = routesArguments['id'];
  //   projectTitle = routesArguments['title'];
  //   displayProjects = widget.Project_date.where((Project) {
  //     return Project.Project.contains(categoryId);
  //   }).toList();

  //   super.didChangeDependencies();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Projects',
          style: TextStyle(
            fontFamily: 'Cairo',
            fontSize: 26.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        // centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 3, 55, 98),
      ),
      endDrawer: const AppDrawer(),
      body: GridView(
          padding: const EdgeInsets.all(10),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 7 / 8,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          children: projectDate
              .map((projectData) => ListOfProjects(
                  projectData.id,
                  projectData.title,
                  projectData.image,
                  projectData.url,
                  projectData.description,
                  projectData.tools,
                  projectData.imageDetail))
              .toList()),
    );
  }
}
