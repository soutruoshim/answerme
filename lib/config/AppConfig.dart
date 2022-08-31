import 'package:flutter/material.dart';

//////////////////////////////////////////
///         APP CONFIGUGRATION         ///
//////////////////////////////////////////

// Host URL (Replace it with your host)
// Do not write a forward slash ('/') at the end of the URL.
const String URL = 'https://answerme.islamic-forum-kh.com';

// Apple sign in configuration
const CLIENT_ID = 'com.srhdp.answerme';
const REDIRECT_URL = 'https://YOUR_FIREBASE_ID.firebaseapp.com/__/auth/handler';

// The application name
// Note that changing this value won't affect the whole application
// you still have to change it in AndroidManifest.xml for Android
// and in Info.plist for iOS
const String APP_NAME = 'AnswerMe';

const Color kPrimaryColor = Color(0xFFB92B27); // or Colors.red

// The text that will be sent when sharing the app
const String SHARE_TEXT = 'AnswerMe';

// Android Google Play Store link URL
const String ANDROID_SHARE_URL =
    'https://play.google.com/store/apps/details?id=come.srhdp.answerme';

// iOS Apple Store link URL
const String IOS_SHARE_URL =
    'https://apps.apple.com/us/app/example/id1234567891';

// iOS App Id taken from the developer account
const String IOS_APP_ID = '1234567891';

// How many questions you want to display per load
const int PER_PAGE = 10;
