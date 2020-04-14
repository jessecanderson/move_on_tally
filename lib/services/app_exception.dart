// ignore_for_file:prefer_typing_uninitialized_variables,sort_constructors_first,avoid_print,annotate_overrides

class WFApplicationExceptions implements Exception {
  final _message;
  final _prefix;

  WFApplicationExceptions([this._message, this._prefix]);

  String toString() => "$_prefix$_message";
}

class FetchDataException extends WFApplicationExceptions {
  FetchDataException([String message]) : super(message, "Error During Communication: ");
}

class BadRequestException extends WFApplicationExceptions {
  BadRequestException([message]) : super(message, "Invalid Request: ");
}

class UnauthorisedException extends WFApplicationExceptions {
  UnauthorisedException([message]) : super(message, "Unauthorised: ");
}

class InvalidInputException extends WFApplicationExceptions {
  InvalidInputException([String message]) : super(message, "Invalid Input: ");
}

class InternalServerException extends WFApplicationExceptions {
  InternalServerException([String message]) : super(message, "Internal Server error: ");
}
