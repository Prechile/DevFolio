import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:folio/constants.dart';
import 'package:folio/provider/theme_provider.dart';
import 'package:folio/widget/social_icon.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SizedBox(
      height: height,
      width: width,
      child: Stack(
        children: [
          Positioned(
            bottom: width < 740 ? height * 0.1 : height * 0.15,
            right: width < 740 ? -width * 0.2 : -width * 0.1,
            child: Opacity(
              opacity: 0.9,
              child: Image.asset('assets/1.png', height: height * 0.75),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(
                width * 0.1, width < 740 ? height * 0.15 : height * 0.2, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "BIENVENUE DANS MON PORTFOLIO! ",
                      style: GoogleFonts.montserrat(
                        fontSize: height * 0.03,
                        fontWeight: FontWeight.w300,
                        color: themeProvider.lightTheme
                            ? Colors.black
                            : Colors.white,
                      ),
                    ),
                    Image.asset(
                      "assets/hi.gif",
                      height: height * 0.05,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                Text(
                  "Douti Kanlanfai",
                  style: GoogleFonts.montserrat(
                      fontSize: height * 0.07,
                      fontWeight: FontWeight.w100,
                      color: themeProvider.lightTheme
                          ? Colors.black
                          : Colors.white,
                      letterSpacing: 1.5),
                ),
                Text(
                  "Achile",
                  style: GoogleFonts.montserrat(
                    fontSize: height * 0.07,
                    fontWeight: FontWeight.w500,
                    color:
                        themeProvider.lightTheme ? Colors.black : Colors.white,
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.play_arrow_rounded,
                      color: kPrimaryColor,
                    ),
                    TyperAnimatedTextKit(
                        isRepeatingAnimation: true,
                        speed: const Duration(milliseconds: 50),
                        textStyle: GoogleFonts.montserrat(
                          fontSize: height * 0.03,
                          fontWeight: FontWeight.w200,
                          color: themeProvider.lightTheme
                              ? Colors.black
                              : Colors.white,
                        ),
                        text: const [
                          " Developpeur d'applications",
                          " Rédacteur technique",
                          " Passionné UI/UX"
                        ]),
                  ],
                ),
                SizedBox(
                  height: height * 0.045,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (int i = 0; i < kSocialIcons.length; i++)
                      SocialMediaIconBtn(
                        icon: kSocialIcons[i],
                        socialLink: kSocialLinks[i],
                        height: height * 0.035,
                        horizontalPadding: width * 0.01,
                      )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
