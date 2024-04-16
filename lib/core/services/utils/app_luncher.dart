/* import 'package:url_launcher/url_launcher.dart';

class AppLuncher {
  Future<void> callToSupport() async {
    final Uri callUri = Uri(
      scheme: 'tel',
      path: '9829326110',
    );

    if (!await launchUrl(callUri)) {
      throw Exception('Unable to call');
    }
  }

  Future<void> lunchurl(String link) async {
    final Uri url = Uri.parse(link);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $link');
    }
  }

  Future<void> sendEmailtoSupport() async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'ad01santosh@gmail.com',
    );

    if (!await launchUrl(emailLaunchUri)) {
      throw Exception('Could not launch email');
    }
  }
}
 */
