import 'package:url_launcher/url_launcher.dart';

final Uri _cvUrl = Uri.parse(
    'https://www.smart-hr.pl/wp-content/uploads/2016/10/artykul_CV.jpg'); //placeholder

Future<void> myLaunchUrl() async {
  if (!await launchUrl(_cvUrl)) {
    throw Exception('Could not launch $_cvUrl');
  }
}

final Uri _contact = Uri.parse('mailto:gwiezdnytusz@gmail.com'); //placeholder

Future<void> myLaunchContact() async {
  if (!await launchUrl(_contact)) {
    throw Exception('Could not launch $_contact');
  }
}