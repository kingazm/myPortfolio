import 'package:url_launcher/url_launcher.dart';

//TEMP
double globalDeviceHeight = 0.0;
double globalDeviceWidth = 0.0;

final String linkedinString = "https://www.linkedin.com/in/kingazmuda/";

final String githubString = "https://github.com/kingazm";

final String cvUrlString = "https://www.smart-hr.pl/wp-content/uploads/2016/10/artykul_CV.jpg";
//placeholder
final String contactUrlString = "mailto:gwiezdnytusz@gmail.com";
//placeholder

//URL ADRESSES FOR THE THREE SHOWCASE PROJECTS
final String projectOneUrlString = "https://github.com/kingazm";
final String projectTwoUrlString = "https://github.com/kingazm";
final String projectThreeUrlString = "https://github.com/kingazm";

Future<void> LaunchUrl(final String destinationUrlString) async {
  if (!await launchUrl(Uri.parse(destinationUrlString))) {
    throw Exception('Could not launch $destinationUrlString');
  }
}
