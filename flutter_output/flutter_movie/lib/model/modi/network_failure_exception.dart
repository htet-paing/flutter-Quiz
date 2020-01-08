abstract class NetworkFailure implements Exception {
  @override
  String toString() {
    return 'Network Failure';
  }
}

class NoConnectionException extends NetworkFailure {
  @override
  String toString() {
    return 'No Internet connection 😑';
  }
}

class Http404Exception extends NetworkFailure {
  @override
  String toString() {
    return 'Couldn\'t find the post 😱';
  }
}

class BadResponseException extends NetworkFailure {
  @override
  String toString() {
    return 'Bad response format 👎';
  }
}
