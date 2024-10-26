class ApiSupport {


  // HEADERS
  static Map<String, String> header({
    String? sessionId,
    String? token,
    bool isOrigin = false,
  }) {
    return {
      "accept": "application/json",
      if (isOrigin) 'Origin': "",
      "content-type": "application/json",
      if (sessionId != null) "sessionId": sessionId,
      "authorization": "Bearer $token",
    };
  }
}
