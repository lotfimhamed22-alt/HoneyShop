class ApiError {
  final String errorMessage;

  ApiError({required this.errorMessage});
  // Function to return error message
  @override
  String toString() {
    return "Error Message is :$errorMessage !!!!";
  }
}
