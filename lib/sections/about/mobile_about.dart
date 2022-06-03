import 'package:flutter/foundation.dart';
import 'package:folio/provider/theme_provider.dart';
import 'package:folio/widget/custom_button.dart';
import 'package:folio/widget/custom_text_heading.dart';
import 'package:provider/provider.dart';
import 'package:universal_html/html.dart' as html;

import 'package:flutter/material.dart';
import 'package:folio/constants.dart';
import 'package:folio/widget/about_me_data.dart';
import 'package:folio/widget/community_button.dart';
import 'package:folio/widget/tech_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMobile extends StatelessWidget {
  final _communityLogoHeight = [60.0, 70.0, 30.0, 70.0];

  AboutMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.05,
      ),
      color: themeProvider.lightTheme ? Colors.white : Colors.black,
      child: Column(
        children: [
          const CustomSectionHeading(text: "\nSur moi"),
          const CustomSectionSubHeading(text: "Apprendre a me connaitre :)"),
          Image.asset(
            'assets/mob1.png',
            height: height * 0.27,
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Qui suis je?",
              style: GoogleFonts.montserrat(
                color: kPrimaryColor,
                fontSize: height * 0.025,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.028,
          ),
          Text(
            "Je suis Achile Douti, développeur d'application, rédacteur de blog technique et concepteur d'interface utilisateur.",
            style: GoogleFonts.montserrat(
              fontSize: height * 0.022,
              fontWeight: FontWeight.w400,
              color: themeProvider.lightTheme ? Colors.black : Colors.white,
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Text(
            "Je suis un jeune diplômé en Système informatique et logiciel de l'Université d’ESIBA à Lome au Togo . Je développe des applications mobiles depuis plus de 4 ans maintenant. J'ai travaillé en équipe pour diverses startups et les ai aidés à lancer leurs prototypes et j'ai acquis une précieuse expérience d'apprentissage. Ayant parcouru plusieurs entreprise en ma qualité de développeurs d’application, je travaille actuellement en tant Developpeur d’applications mobile et web chez MONETICS SA.",
            style: GoogleFonts.montserrat(
              fontSize: height * 0.018,
              color: Colors.grey[500],
              height: 1.5,
            ),
          ),
          SizedBox(
            height: height * 0.025,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey[900]!,
                  width: 1.0,
                ),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.015,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Technologies avec lesquelles j'ai travaillé :",
              style: GoogleFonts.montserrat(
                  color: kPrimaryColor, fontSize: height * 0.015),
            ),
          ),
          Row(
            children: [
              for (int i = 0; i < 4; i++)
                ToolTechWidget(
                  techName: kTools[i],
                ),
            ],
          ),
          Row(
            children: [
              for (int i = 4; i < 8; i++)
                ToolTechWidget(
                  techName: kTools[i],
                ),
            ],
          ),
          SizedBox(
            height: height * 0.015,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey[900]!,
                  width: 1.0,
                ),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          const AboutMeData(
            data: "nom",
            information: "Achile Douti",
            alignment: Alignment.centerLeft,
          ),
          const AboutMeData(
            data: "Email",
            information: "achiledouti@gmail.com",
            alignment: Alignment.centerLeft,
          ),
          SizedBox(
            height: height * 0.015,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlinedCustomBtn(
                      btnText: "Resume",
                      onPressed: () {
                        kIsWeb
                            ? html.window.open(
                                'https://drive.google.com/file/d/1FaHIzT9FigDHLx8NlxFIyQfjJTyN9WQ6/view?usp=sharing',
                                "pdf")
                            : launchURL(
                                'https://drive.google.com/file/d/1FaHIzT9FigDHLx8NlxFIyQfjJTyN9WQ6/view?usp=sharing');
                      }),
                ),
                Container(
                  width: width * 0.2,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey[900]!,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: kCommunityLogo
                    .asMap()
                    .entries
                    .map(
                      (e) => CommunityIconBtn(
                        icon: kCommunityLogo[e.key],
                        link: kCommunityLinks[e.key],
                        height: _communityLogoHeight[e.key],
                      ),
                    )
                    .toList()),
          ),
        ],
      ),
    );
  }
}
