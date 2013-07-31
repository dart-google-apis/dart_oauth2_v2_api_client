library oauth2_v2_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_oauth2_v2_api/src/cloud_api_browser.dart';
import "package:google_oauth2_v2_api/oauth2_v2_api_client.dart";

/** Lets you access OAuth2 protocol related APIs. */
class Oauth2 extends Client with BrowserClient {

  /** OAuth Scope2: Know your name, basic info, and list of people you're connected to on Google+ */
  static const String PLUS_LOGIN_SCOPE = "https://www.googleapis.com/auth/plus.login";

  /** OAuth Scope2: Know who you are on Google */
  static const String PLUS_ME_SCOPE = "https://www.googleapis.com/auth/plus.me";

  /** OAuth Scope2: View your email address */
  static const String USERINFO_EMAIL_SCOPE = "https://www.googleapis.com/auth/userinfo.email";

  /** OAuth Scope2: View basic information about your account */
  static const String USERINFO_PROFILE_SCOPE = "https://www.googleapis.com/auth/userinfo.profile";

  final oauth.OAuth2 auth;

  Oauth2([oauth.OAuth2 this.auth]);
}
