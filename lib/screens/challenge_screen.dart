import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training/l10n/app_localizations.dart';
import 'package:training/theme/app_colors.dart';
import 'package:training/widgets/buttons/gradient_button.dart';
import 'package:training/widgets/challenge/description_text.dart';
import 'package:training/widgets/challenge/header_img.dart';
import 'package:training/widgets/challenge/image.dart';
import 'package:training/widgets/challenge/info_card.dart';
import 'package:training/widgets/challenge/joined_text.dart';
import 'package:training/widgets/challenge/section_title.dart';
import 'package:training/widgets/challenge/submit_button.dart';

class ChallengeScreen extends StatelessWidget {
  const ChallengeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
    
            children: [
              HeaderImage(),
              SizedBox(height: 16.h),
              ChallengeInfo(),
              SizedBox(height: 6.h),
              Text(AppLocalizations.of(context)!.challengemsg,
              style: TextStyle(
                color: AppColors.primary,
                fontSize: 17.sp,
              ),
              ),
              SizedBox(height: 24.h),
              GradientButton(onPressed:(){},text:AppLocalizations.of(context)!.submitshot,),
              SizedBox(height: 16.h),
              JoinedText(),
              SizedBox(height: 32.h),
              SectionTitle(title:AppLocalizations.of(context)!.challenge),
              SizedBox(height: 12.h),
              DescriptionText(),
              SizedBox(height: 32.h),
              SectionTitle(title:AppLocalizations.of(context)!.inspiration),
              SizedBox(height: 12.h),
              InspirationImages('assets/images/blackman.png','assets/images/blacklady.png'),
              SizedBox(height: 32.h),
               SectionTitle(title:AppLocalizations.of(context)!.trending),
              SizedBox(height: 12.h),
              InspirationImages('assets/images/lady.png','assets/images/lady.png'),
              SizedBox(height: 32.h),
            ],
          ),
        ),
      ),
    );
  }
}
