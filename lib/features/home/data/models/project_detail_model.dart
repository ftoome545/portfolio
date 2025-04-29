class ProjectDetailModel {
  final String projectImage;
  final String projectTitle;
  final String projectDescription;
  final String projectYear;
  final String projectRole;
  final String projectDemoLink;
  final String projectGitHubLink;

  ProjectDetailModel(
      {required this.projectImage,
      required this.projectTitle,
      required this.projectDescription,
      required this.projectYear,
      required this.projectRole,
      this.projectDemoLink = '',
      this.projectGitHubLink = ''});
}
