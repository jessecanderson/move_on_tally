class ApiResponse<T> {
  ApiResponse.loading(this.message) : status = Status.LOADING;
  ApiResponse.completed(this.data) : status = Status.COMPLETED;
  ApiResponse.error(this.message) : status = Status.ERROR;

  Status status;
  T data;
  String message;

  @override
  String toString() => "Status : $status \n Message : $message \n Data : $data";
}

enum Status { LOADING, COMPLETED, ERROR }
