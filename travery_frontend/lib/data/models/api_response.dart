class ApiResponse<T> {
  const ApiResponse({
    required this.httpStatus,
    this.message,
    required this.data,
  });

  final int httpStatus;
  final String? message;
  final T data;

  factory ApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(dynamic) dataFromJson,
  ) {
    return ApiResponse(
      httpStatus: json['httpStatus'] as int,
      message: json['message'] as String?,
      data: dataFromJson(json['data']),
    );
  }
}
