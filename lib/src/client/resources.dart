part of oauth2_v2_api;

class UserinfoResource_ {

  final Client _client;

  final UserinfoV2Resource_ v2;

  UserinfoResource_(Client client) :
      _client = client,
      v2 = new UserinfoV2Resource_(client);

  /**
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Userinfo> get({core.Map optParams}) {
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Userinfo.fromJson(data));
  }
}

class UserinfoV2Resource_ {

  final Client _client;

  final UserinfoV2MeResource_ me;

  UserinfoV2Resource_(Client client) :
      _client = client,
      me = new UserinfoV2MeResource_(client);
}

class UserinfoV2MeResource_ {

  final Client _client;

  UserinfoV2MeResource_(Client client) :
      _client = client;

  /**
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Userinfo> get({core.Map optParams}) {
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Userinfo.fromJson(data));
  }
}

