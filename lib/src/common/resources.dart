part of oauth2_v2_api_client;

class UserinfoResource_ extends Resource {

  UserinfoV2Resource_ _v2;
  UserinfoV2Resource_ get v2 => _v2;

  UserinfoResource_(Client client) : super(client) {
  _v2 = new UserinfoV2Resource_(client);
  }

  /**
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Userinfo> get({core.Map optParams}) {
    var completer = new async.Completer();
    var url = "oauth2/v2/userinfo";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Userinfo.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class UserinfoV2Resource_ extends Resource {

  UserinfoV2MeResource_ _me;
  UserinfoV2MeResource_ get me => _me;

  UserinfoV2Resource_(Client client) : super(client) {
  _me = new UserinfoV2MeResource_(client);
  }
}

class UserinfoV2MeResource_ extends Resource {

  UserinfoV2MeResource_(Client client) : super(client) {
  }

  /**
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Userinfo> get({core.Map optParams}) {
    var completer = new async.Completer();
    var url = "userinfo/v2/me";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Userinfo.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

