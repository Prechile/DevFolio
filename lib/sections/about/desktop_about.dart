import 'package:flutter/material.dart';
import 'package:folio/constants.dart';
import 'package:folio/provider/theme_provider.dart';
import 'package:folio/widget/about_me_data.dart';
import 'package:folio/widget/adaptive_text.dart';
import 'package:folio/widget/community_button.dart';
import 'package:folio/widget/custom_button.dart';
import 'package:folio/widget/custom_text_heading.dart';
import 'package:folio/widget/tech_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:universal_html/html.dart' as html;

class AboutDesktop extends StatelessWidget {
  final _communityLogoHeight = [60.0, 70.0, 30.0, 70.0];

  AboutDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.02,
      ),
      color: themeProvider.lightTheme ? Colors.white : Colors.black,
      child: Column(
        children: [
          const CustomSectionHeading(text: "\nSur moi"),
          const CustomSectionSubHeading(text: "Apprendre a me connaitre :)"),
          const SizedBox(height: 30.0),
          Row(
            children: [
              Expanded(
                child: Image.asset(
                  'assets/web.png',
                  height: height * 0.7,
                ),
              ),
              Expanded(
                flex: width < 1230 ? 2 : 1,
                child: Container(
                  padding: EdgeInsets.only(left: width < 1230 ? 25.0 : 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AdaptiveText(
                        "Qui suis je?",
                        style: GoogleFonts.montserrat(
                            color: kPrimaryColor, fontSize: height * 0.025),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      AdaptiveText(
                        "Je suis Achile Douti, développeur d'application, rédacteur de blog technique et concepteur d'interface utilisateur.",
                        style: GoogleFonts.montserrat(
                          fontSize: height * 0.035,
                          fontWeight: FontWeight.w400,
                          color: themeProvider.lightTheme
                              ? Colors.black
                              : Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      AdaptiveText(
                        "Je suis un jeune diplômé en Système informatique et logiciel de l'Université d’ESIBA à Lome au Togo . Je développe des applications mobiles depuis plus de 4 ans maintenant. J'ai travaillé en équipe pour diverses startups et les ai aidés à lancer leurs prototypes et j'ai acquis une précieuse expérience d'apprentissage. Ayant parcouru plusieurs entreprise en ma qualité de développeurs d’application, je travaille actuellement en tant Developpeur d’applications mobile et web chez MONETICS SA.",
                        style: GoogleFonts.montserrat(
                          fontSize: height * 0.02,
                          color: Colors.grey[500],
                          height: 2.0,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.025,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.grey[800]!,
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      AdaptiveText(
                        "Technologies avec lesquelles j'ai travaillé :",
                        style: GoogleFonts.montserrat(
                            color: kPrimaryColor, fontSize: height * 0.018),
                      ),
                      Row(
                        children: kTools
                            .map((e) => ToolTechWidget(
                                  techName: e,
                                ))
                            .toList(),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.grey[800]!,
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.025,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          AboutMeData(
                            data: "nom",
                            information: "Achile Douti",
                          ),
                          AboutMeData(
                            data: "Email",
                            information: "achiledouti@gmail.com",
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: OutlinedCustomBtn(
                              onPressed: () {
                                html.window.open(
                                    'https://drive.google.com/file/d/1FaHIzT9FigDHLx8NlxFIyQfjJTyN9WQ6/view?usp=sharing',
                                    "pdf");
                              },
                              btnText: "Resume",
                            ),
                          ),
                          Container(
                            width: width * 0.05,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.grey[900]!,
                                  width: 2.0,
                                ),
                              ),
                            ),
                          ),
                          ...kCommunityLogo.asMap().entries.map(
                                (e) => Expanded(
                                  child: CommunityIconBtn(
                                    icon: kCommunityLogo[e.key],
                                    link: kCommunityLinks[e.key],
                                    height: _communityLogoHeight[e.key],
                                  ),
                                ),
                              )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: width < 1230 ? width * 0.05 : width * 0.1,
              ),
            ],
          )
        ],
      ),
    );
  }
}
