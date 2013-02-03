part of oauth2_v2_api_client;

class UserinfoResource extends Resource {

  UserinfoV2Resource _v2;
  UserinfoV2Resource get v2 => _v2;

  UserinfoResource(Client client) : super(client) {
  _v2 = new UserinfoV2Resource(client);
  }

  /**
   *
   * [optParams] - Additional query parameters
   */
  Future<Userinfo> get({Map optParams}) {
    var completer = new Completer();
    var url = "oauth2/v2/userinfo";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
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

class UserinfoV2Resource extends Resource {

  UserinfoV2MeResource _me;
  UserinfoV2MeResource get me => _me;

  UserinfoV2Resource(Client client) : super(client) {
  _me = new UserinfoV2MeResource(client);
  }
}

class UserinfoV2MeResource extends Resource {

  UserinfoV2MeResource(Client client) : super(client) {
  }

  /**
   *
   * [optParams] - Additional query parameters
   */
  Future<Userinfo> get({Map optParams}) {
    var completer = new Completer();
    var url = "userinfo/v2/me";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
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

