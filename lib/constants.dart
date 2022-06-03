import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// Colors
const Color kPrimaryColor = Color(0xffC0392B);

// Social Media
const kSocialIcons = [
  "https://img.icons8.com/metro/208/ffffff/facebook-new--v2.png",
  "https://img.icons8.com/ios-glyphs/480/ffffff/instagram-new.png",
  "https://img.icons8.com/metro/308/ffffff/linkedin.png",
  "https://img.icons8.com/material-rounded/384/ffffff/github.png",
];

const kSocialLinks = [
  "https://facebook.com/douti.achile",
  "https://instagram.com/prechil_13",
  "https://linkedin.com/in/achile-douti-61b1a2169",
  "https://github.com/Prechile",
];

// URL Launcher
void launchURL(String url) async => await launchUrl(Uri.parse(url))
    ? await launchUrl(Uri.parse(url))
    : throw 'Could not launch $url';

// Community
final kCommunityLogo = [
  'assets/cui.png',
  'assets/flutterIsl.png',
  'assets/dsc.png',
  'assets/st.png'
];

final kCommunityLinks = [
  "https://www.comsats.edu.pk/",
  "https://web.facebook.com/FlutterIslamabadPakistan/",
  "https://dsc.community.dev/comsats-university-islamabad/",
  "https://sastaticket.pk/"
];

// Tools & Tech
final kTools = [
  "Android",
  "Kotlin",
  "Flutter",
  "Dart",
  "Java",
  "Php",
  "Laravel",
  "C#",
  "Mysql"
];

// services
final kServicesIcons = [
  "assets/services/app.png",
  "assets/services/ui.png",
  "assets/services/rapid.png",
  "assets/services/blog.png",
  "assets/services/open.png",
];

final kServicesTitles = [
  "Mobile App Development",
  "UI/UX Designing",
  "Rapid Prototyping",
  "Open Source - GitHub",
];

final kServicesDescriptions = [
  "- Développement d'application Android natif via kotlin\n- Développement d'application ios & Android via flutter\n- Application Web\n- REST APIs\n- Gestion de base de donnee\n- CodeQr,Maps integration et plus...!",
  "Modern UI/UX Designing\n- Adobe XD\n- Mobile & Web designs\n- Interactive UI designs\n- Responsiveness et plus..!",
  "- Prototype rapide via Flutter\n- Working MVP\n- Prototype rapide et fonctionnel",
  "Projets GitHub open source\n- Awesome README.md\n- Well documented\n- Header images and more...!",
];

// projects
final kProjectsBanner = [
  "assets/projects/snackbar.png",
  "assets/projects/quranB.png",
  "assets/projects/medkitB.png",
  "assets/projects/hereiamB.png",
  "assets/projects/covidB.png",
];

final kProjectsIcons = [
  "assets/projects/flutter.png",
  "assets/projects/quran.png",
  "assets/projects/medkit.png",
  "assets/projects/hereiam.png",
  "assets/projects/covid.png",
  "assets/projects/messenger.png",
  "assets/projects/flutter.png",
  "assets/projects/earbender.png",
  "assets/projects/java.png",
  "assets/projects/android.png",
  "assets/services/open.png",
];

final kProjectsTitles = [
  "Awesome Snackbar Dart Package",
  "The Holy Qur'an",
  "MedKit",
  "Here I Am",
  "COVID-19",
  "Messenger Chat Head UI",
  "flutter.dev - Flutter Web",
  "Earbender",
  "File Transfer Protocol",
  "My Order",
  "Hidev",
];

final kProjectsDescriptions = [
  "A very unique dart package to uplift the snackbar experience in flutter. Available at pub.dev now!",
  "Application of Holy book of Muslims, Al-Qur'an. Developed using Flutter. Powered with live RestAPI given in README.md",
  "A Phramacy app developed using Flutter powered with Firebase as database with Doctor and Patient panels.",
  "Here I am is an Alert app that Sends alert SMS holding your location (Address and Google Maps) to your loved ones.",
  "A live trakcer for COVID19 stats across the Globe and my Home country Pakistan. It uses APIs so the data is live.",
  "Tried to clone the famous Chat Heads by Facebook Messenger using Flutter. Its basically in-app not exactly like the original chat head.",
  "Flutter Official Site clone using Flutter Web. Try the live site here. For the time being its not responsive fully so there might be responsiveness issues.",
  "A concept of Music App developed using Flutter. Having functionality of playing Audio.",
  "A simple GUI based Java application that sends file from Client to Server but not the other way around.",
  "A concept app for self-services at various restaurants now a days. More like a Restaurant Ordering System.",
  "Its my end semester project. The whole design I developed here is an inspiration from my favortie Flutter Developer Marcin Szałek and his blog Fidev."
];

final kProjectsLinks = [
  "https://pub.dev/packages/awesome_snackbar_content",
  "https://github.com/mhmzdev/The_Holy_Quran_App",
  "https://github.com/mhmzdev/MedKit-Pharmacy-App-Using-Flutter",
  "https://github.com/mhmzdev/Here-I-Am-Alert-App",
  "https://github.com/mhmzdev/Covid19-Tracker-App",
  "https://github.com/mhmzdev/Messenger-Chat-Head-Flutter-UI",
  "https://github.com/mhmzdev/flutter.dev-Flutter-Web-Clone",
  "https://github.com/mhmzdev/Earbender_Music_App",
  "https://github.com/mhmzdev/FTP_GUI_Java",
  "https://github.com/mhmzdev/My-Order-Resturant-Ordering-System",
  "https://github.com/mhmzdev/Hidev_Web",
];

// Contact
final kContactIcons = [
  Icons.home,
  Icons.phone,
  Icons.mail,
];

final kContactTitles = [
  "Location",
  "Phone",
  "Email",
];

final kContactDetails = [
  "Lome, Togo",
  "(+228) 98244513/91369904",
  "achiledouti@gmail.com"
];
