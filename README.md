# google_oauth2_v2_api

### Description

Auto-generated client library for accessing the oauth2 v2 API.

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Google OAuth2 API - oauth2 v2

Lets you access OAuth2 protocol related APIs.

Official API documentation: https://developers.google.com/accounts/docs/OAuth2

Adding dependency to pubspec.yaml

```
  dependencies:
    google_oauth2_v2_api: '>=0.3.8'
```

For web applications:

```
  import "package:google_oauth2_v2_api/oauth2_v2_api_browser.dart" as oauth2client;
```

For console application:

```
  import "package:google_oauth2_v2_api/oauth2_v2_api_console.dart" as oauth2client;
```

Working with out authentication the following constructor can be called:

```
  var oauth2 = new oauth2client.Oauth2();
```

Working with authentication then create a new `GoogleOAuth2` object and pass it to the constructor:


```
  GoogleOAuth2 auth = new GoogleOAuth2(CLIENT_ID, SCOPES);
  var oauth2 = new oauth2client.Oauth2(auth);
```

### Licenses

```
Copyright (c) 2013 Gerwin Sturm & Adam Singer

Licensed under the Apache License, Version 2.0 (the "License"); you may 
not use this file except in compliance with the License. You may obtain a 
copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
License for the specific language governing permissions and limitations 
under the License

------------------------
Based on http://code.google.com/p/google-api-dart-client

Copyright 2012 Google Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may 
not use this file except in compliance with the License. You may obtain a
copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
License for the specific language governing permissions and limitations 
under the License

```
