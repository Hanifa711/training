import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en')
  ];

  /// No description provided for @hello.
  ///
  /// In en, this message translates to:
  /// **'Hello'**
  String get hello;

  /// No description provided for @welmsg.
  ///
  /// In en, this message translates to:
  /// **'SHARE - INSPIRE - CONNECT'**
  String get welmsg;

  /// No description provided for @get_started.
  ///
  /// In en, this message translates to:
  /// **'GET STARTED'**
  String get get_started;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @forgetpassword.
  ///
  /// In en, this message translates to:
  /// **'FORGOT PASSWORD'**
  String get forgetpassword;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'LOG IN'**
  String get login;

  /// No description provided for @loginby.
  ///
  /// In en, this message translates to:
  /// **'OR LOG IN BY'**
  String get loginby;

  /// No description provided for @noaccount.
  ///
  /// In en, this message translates to:
  /// **'Don\'\'t have account?'**
  String get noaccount;

  /// No description provided for @signup.
  ///
  /// In en, this message translates to:
  /// **'SIGN UP'**
  String get signup;

  /// No description provided for @hasaccount.
  ///
  /// In en, this message translates to:
  /// **'You have account? '**
  String get hasaccount;

  /// No description provided for @verfication.
  ///
  /// In en, this message translates to:
  /// **'VERIFICATION'**
  String get verfication;

  /// No description provided for @verifymsg.
  ///
  /// In en, this message translates to:
  /// **'A message with verification code was sent to your mobile phone.'**
  String get verifymsg;

  /// No description provided for @typeverificationcode.
  ///
  /// In en, this message translates to:
  /// **'Type verification code'**
  String get typeverificationcode;

  /// No description provided for @nocode.
  ///
  /// In en, this message translates to:
  /// **'Don\'\'t receive the code'**
  String get nocode;

  /// No description provided for @verify.
  ///
  /// In en, this message translates to:
  /// **'VERIFY'**
  String get verify;

  /// No description provided for @typeemail.
  ///
  /// In en, this message translates to:
  /// **'TYPE YOUR EMAIL'**
  String get typeemail;

  /// No description provided for @resetpasswordmsg.
  ///
  /// In en, this message translates to:
  /// **'We will send you instruction on how to reset your password'**
  String get resetpasswordmsg;

  /// No description provided for @send.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get send;

  /// No description provided for @setnewpassword.
  ///
  /// In en, this message translates to:
  /// **'SET NEW PASSWORD'**
  String get setnewpassword;

  /// No description provided for @typepassword.
  ///
  /// In en, this message translates to:
  /// **'Type your new password'**
  String get typepassword;

  /// No description provided for @confpassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confpassword;

  /// No description provided for @whoareyou.
  ///
  /// In en, this message translates to:
  /// **'Who are you?'**
  String get whoareyou;

  /// No description provided for @explorenow.
  ///
  /// In en, this message translates to:
  /// **'EXPLORE NOW'**
  String get explorenow;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'cancel'**
  String get cancel;

  /// No description provided for @challengemsg.
  ///
  /// In en, this message translates to:
  /// **'Ready to win this challenge'**
  String get challengemsg;

  /// No description provided for @submitshot.
  ///
  /// In en, this message translates to:
  /// **'SUBMIT YOUR SHOT'**
  String get submitshot;

  /// No description provided for @challenge.
  ///
  /// In en, this message translates to:
  /// **'Challenge'**
  String get challenge;

  /// No description provided for @inspiration.
  ///
  /// In en, this message translates to:
  /// **'Inspiration'**
  String get inspiration;

  /// No description provided for @trending.
  ///
  /// In en, this message translates to:
  /// **'Trending'**
  String get trending;

  /// No description provided for @topic.
  ///
  /// In en, this message translates to:
  /// **'Topic'**
  String get topic;

  /// No description provided for @viewmore.
  ///
  /// In en, this message translates to:
  /// **'View more'**
  String get viewmore;

  /// No description provided for @collection.
  ///
  /// In en, this message translates to:
  /// **'Collection'**
  String get collection;

  /// No description provided for @deadline.
  ///
  /// In en, this message translates to:
  /// **'Deadline'**
  String get deadline;

  /// No description provided for @dayleft.
  ///
  /// In en, this message translates to:
  /// **'day left'**
  String get dayleft;

  /// No description provided for @prize.
  ///
  /// In en, this message translates to:
  /// **'Prize'**
  String get prize;

  /// No description provided for @jointext.
  ///
  /// In en, this message translates to:
  /// **' people have joined this challenge'**
  String get jointext;

  /// No description provided for @hourago.
  ///
  /// In en, this message translates to:
  /// **'hour ago'**
  String get hourago;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @follow.
  ///
  /// In en, this message translates to:
  /// **'Following'**
  String get follow;

  /// No description provided for @popular.
  ///
  /// In en, this message translates to:
  /// **'Popular'**
  String get popular;

  /// No description provided for @photographer.
  ///
  /// In en, this message translates to:
  /// **'Photographer'**
  String get photographer;

  /// No description provided for @videocreator.
  ///
  /// In en, this message translates to:
  /// **'Video Creator'**
  String get videocreator;

  /// No description provided for @illustrator.
  ///
  /// In en, this message translates to:
  /// **'Illustrator'**
  String get illustrator;

  /// No description provided for @designer.
  ///
  /// In en, this message translates to:
  /// **'Designer'**
  String get designer;

  /// No description provided for @photography.
  ///
  /// In en, this message translates to:
  /// **'PHOTOGRAPHY'**
  String get photography;

  /// No description provided for @uidesigner.
  ///
  /// In en, this message translates to:
  /// **'UI Designer'**
  String get uidesigner;

  /// No description provided for @makingvideo.
  ///
  /// In en, this message translates to:
  /// **'MAKING VIDEO'**
  String get makingvideo;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return AppLocalizationsAr();
    case 'en': return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
