import 'package:flutter/material.dart';
import 'package:mysite/core/configs/configs.dart';
import 'package:mysite/core/res/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class MainSection extends StatelessWidget {
  const MainSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: Space.h!,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome to my portfolio! 👋',
            style: AppText.h3!.copyWith(
              fontSize: Responsive.isDesktop(context) ? 22 : 18,
              fontWeight: FontWeight.w200,
            ),
          ),
          Space.y1!,
          Text(
            "Rajon",
            style: AppText.h1!.copyWith(
              fontSize: Responsive.isDesktop(context) ? 80 : 50,
              fontWeight: FontWeight.w500,
              height: 1,
            ),
          ),
          Text(
            "Bhuiyan",
            style: AppText.h1!.copyWith(
              fontSize: Responsive.isDesktop(context) ? 80 : 50,
              fontWeight: FontWeight.w500,
              height: 1,
            ),
          ),
          Space.y!,
          Text(
            'Mobile App Developer & Flutter Enthusiast',
            style: AppText.h2!.copyWith(
              fontSize: Responsive.isDesktop(context) ? 32 : 24,
              fontWeight: FontWeight.w400,
              height: 1.3,
            ),
          ),
          Space.y1!,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SocialButton(
                icon: 'assets/icons/github.png',
                link: 'https://github.com/rajon-bhuiyan',
              ),
              Space.x1!,
              SocialButton(
                icon: 'assets/icons/linkedin.png',
                link: 'https://linkedin.com/in/your-linkedin',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SocialButton extends StatelessWidget {
  final String icon;
  final String link;

  const SocialButton({
    Key? key,
    required this.icon,
    required this.link,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Image.asset(
        icon,
        height: 24,
      ),
      onPressed: () => launchUrl(Uri.parse(link)),
    );
  }
} 