class APIEndpoints {
  APIEndpoints._internal();

  static final APIEndpoints _instance = APIEndpoints._internal();

  static APIEndpoints get instance => _instance;

  static final String _baseUrl = "https://cat-fact.herokuapp.com";

  final fetchCatFacts = "$_baseUrl/facts";
  final getUserEndpoint = "$_baseUrl/users";
}

// https://alexwohlbruck.github.io/cat-facts/docs/
