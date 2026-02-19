import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_az.dart';
import 'app_localizations_en.dart';
import 'app_localizations_ru.dart';

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
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

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
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('az'),
    Locale('en'),
    Locale('ru'),
  ];

  /// No description provided for @heyHalal.
  ///
  /// In en, this message translates to:
  /// **'Hey Halal,'**
  String get heyHalal;

  /// No description provided for @username.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get username;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @subTask.
  ///
  /// In en, this message translates to:
  /// **'Sub - Task'**
  String get subTask;

  /// No description provided for @account.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get account;

  /// No description provided for @changeLanguage.
  ///
  /// In en, this message translates to:
  /// **'Change Language'**
  String get changeLanguage;

  /// No description provided for @deleteTask.
  ///
  /// In en, this message translates to:
  /// **'Delete Task'**
  String get deleteTask;

  /// No description provided for @taskPriority.
  ///
  /// In en, this message translates to:
  /// **'Task Priority :'**
  String get taskPriority;

  /// No description provided for @taskCategory.
  ///
  /// In en, this message translates to:
  /// **'Task Category :'**
  String get taskCategory;

  /// No description provided for @taskTime.
  ///
  /// In en, this message translates to:
  /// **'Task Time :'**
  String get taskTime;

  /// No description provided for @takePicture.
  ///
  /// In en, this message translates to:
  /// **'Take picture'**
  String get takePicture;

  /// No description provided for @upTodo.
  ///
  /// In en, this message translates to:
  /// **'Uptodo'**
  String get upTodo;

  /// No description provided for @defaultText.
  ///
  /// In en, this message translates to:
  /// **'Default'**
  String get defaultText;

  /// No description provided for @addSubText.
  ///
  /// In en, this message translates to:
  /// **'Add Sub - Task'**
  String get addSubText;

  /// No description provided for @importFromGoogleDrive.
  ///
  /// In en, this message translates to:
  /// **'Import from Google Drive'**
  String get importFromGoogleDrive;

  /// No description provided for @importFromGallery.
  ///
  /// In en, this message translates to:
  /// **'Import from gallery'**
  String get importFromGallery;

  /// No description provided for @logOut.
  ///
  /// In en, this message translates to:
  /// **'Log out'**
  String get logOut;

  /// No description provided for @supportUs.
  ///
  /// In en, this message translates to:
  /// **'Support US'**
  String get supportUs;

  /// No description provided for @faq.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @editTask.
  ///
  /// In en, this message translates to:
  /// **'Edit Task'**
  String get editTask;

  /// No description provided for @newPassword.
  ///
  /// In en, this message translates to:
  /// **'Enter new password'**
  String get newPassword;

  /// No description provided for @newImage.
  ///
  /// In en, this message translates to:
  /// **'Change account Image'**
  String get newImage;

  /// No description provided for @oldPassword.
  ///
  /// In en, this message translates to:
  /// **'Enter old password'**
  String get oldPassword;

  /// No description provided for @helpFeedback.
  ///
  /// In en, this message translates to:
  /// **'Help & Feedback'**
  String get helpFeedback;

  /// No description provided for @aboutUs.
  ///
  /// In en, this message translates to:
  /// **'About US'**
  String get aboutUs;

  /// No description provided for @accountImage.
  ///
  /// In en, this message translates to:
  /// **'Change account Image'**
  String get accountImage;

  /// No description provided for @accountPassword.
  ///
  /// In en, this message translates to:
  /// **'Change account password'**
  String get accountPassword;

  /// No description provided for @accountName.
  ///
  /// In en, this message translates to:
  /// **'Change account name'**
  String get accountName;

  /// No description provided for @appSettings.
  ///
  /// In en, this message translates to:
  /// **'App Settings'**
  String get appSettings;

  /// No description provided for @tasksLeft.
  ///
  /// In en, this message translates to:
  /// **'10 Task left'**
  String get tasksLeft;

  /// No description provided for @tasksDone.
  ///
  /// In en, this message translates to:
  /// **'5 Task done'**
  String get tasksDone;

  /// No description provided for @usernameExample.
  ///
  /// In en, this message translates to:
  /// **'Martha Hays'**
  String get usernameExample;

  /// No description provided for @chooseIconFromLibrary.
  ///
  /// In en, this message translates to:
  /// **'Choose icon from library'**
  String get chooseIconFromLibrary;

  /// No description provided for @categoryName.
  ///
  /// In en, this message translates to:
  /// **'Category name :'**
  String get categoryName;

  /// No description provided for @categoryIcon.
  ///
  /// In en, this message translates to:
  /// **'Category icon :'**
  String get categoryIcon;

  /// No description provided for @categoryColor.
  ///
  /// In en, this message translates to:
  /// **'Category color :'**
  String get categoryColor;

  /// No description provided for @createNewCategory.
  ///
  /// In en, this message translates to:
  /// **'Create new Category'**
  String get createNewCategory;

  /// No description provided for @createCategory.
  ///
  /// In en, this message translates to:
  /// **'Create Category'**
  String get createCategory;

  /// No description provided for @description.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get description;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @chooseCategory.
  ///
  /// In en, this message translates to:
  /// **'Choose Category'**
  String get chooseCategory;

  /// No description provided for @addCategory.
  ///
  /// In en, this message translates to:
  /// **'Add Category'**
  String get addCategory;

  /// No description provided for @university.
  ///
  /// In en, this message translates to:
  /// **'University'**
  String get university;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @homeTitle.
  ///
  /// In en, this message translates to:
  /// **'What do you want to do today?'**
  String get homeTitle;

  /// No description provided for @homeSubTitle.
  ///
  /// In en, this message translates to:
  /// **'Tap + to add your tasks'**
  String get homeSubTitle;

  /// No description provided for @or.
  ///
  /// In en, this message translates to:
  /// **'or'**
  String get or;

  /// No description provided for @addTask.
  ///
  /// In en, this message translates to:
  /// **'Add Task'**
  String get addTask;

  /// No description provided for @index.
  ///
  /// In en, this message translates to:
  /// **'Index'**
  String get index;

  /// No description provided for @calendar.
  ///
  /// In en, this message translates to:
  /// **'Calendar'**
  String get calendar;

  /// No description provided for @confirmPassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirmPassword;

  /// No description provided for @dontHaveAnAccount.
  ///
  /// In en, this message translates to:
  /// **'Don’t have an account? '**
  String get dontHaveAnAccount;

  /// No description provided for @passwordHintText.
  ///
  /// In en, this message translates to:
  /// **'* * * * * * * * * * * *'**
  String get passwordHintText;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @register.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get register;

  /// No description provided for @registerGoogle.
  ///
  /// In en, this message translates to:
  /// **'Register with Google'**
  String get registerGoogle;

  /// No description provided for @registerApple.
  ///
  /// In en, this message translates to:
  /// **'Register with Apple'**
  String get registerApple;

  /// No description provided for @haveAccount.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get haveAccount;

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'UpTodo'**
  String get appName;

  /// No description provided for @loginGoogle.
  ///
  /// In en, this message translates to:
  /// **'Login with Google'**
  String get loginGoogle;

  /// No description provided for @loginApple.
  ///
  /// In en, this message translates to:
  /// **'Login with Apple'**
  String get loginApple;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @enterYourUsername.
  ///
  /// In en, this message translates to:
  /// **'Enter your Username'**
  String get enterYourUsername;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'SKIP'**
  String get skip;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'NEXT'**
  String get next;

  /// No description provided for @getStarted.
  ///
  /// In en, this message translates to:
  /// **'GET STARTED'**
  String get getStarted;

  /// No description provided for @organizeYourTasks.
  ///
  /// In en, this message translates to:
  /// **'Organize your tasks'**
  String get organizeYourTasks;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'BACK'**
  String get back;

  /// No description provided for @createDailyRoutine.
  ///
  /// In en, this message translates to:
  /// **'Create daily routine'**
  String get createDailyRoutine;

  /// No description provided for @manageYourTasks.
  ///
  /// In en, this message translates to:
  /// **'Manage your tasks'**
  String get manageYourTasks;

  /// No description provided for @organizeYourTasksSub.
  ///
  /// In en, this message translates to:
  /// **'You can organize your daily tasks by \n adding your tasks into separate categories'**
  String get organizeYourTasksSub;

  /// No description provided for @createDailyRoutineSub.
  ///
  /// In en, this message translates to:
  /// **'In Uptodo you can create your \n personalized routine to stay productive'**
  String get createDailyRoutineSub;

  /// No description provided for @manageYourTasksSubText.
  ///
  /// In en, this message translates to:
  /// **'You can easily manage all of your daily \n tasks in DoMe for free'**
  String get manageYourTasksSubText;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['az', 'en', 'ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'az':
      return AppLocalizationsAz();
    case 'en':
      return AppLocalizationsEn();
    case 'ru':
      return AppLocalizationsRu();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
