class ApiUrl {
  /// base url
  static const String baseUrl = "http://workapi.webappssol.co.in/api/app/";


  

  /// MASTER loginUrl url
  static const String masterLoginUrl = "master/login";
  static const String masterOtpUrl = "master/otp-login";
  static const String masterRegistrationUrl = "master/registration";

  /// WORKER  loginUrl url
  static const String workerLoginUrl = "worker/login";
  static const String workerOtpUrl = "worker/otp-login";
  static const String workerRegistrationUrl = "worker/registration";

  /// signupUrl url
  static const String masterSignupUrl = "master/send-otp";
  static const String workerSignupUrl = "worker/send-otp";

  /// logout url
  static const String masterLogoutUrl = "master/logout";
  static const String workerLogoutUrl = "worker/logout";

  /// dashBoard url
  static const String dashBoardUrl = "master/dashboard";
  static const String workerCategories = "worker/categories";

  /// worker Crud services url
  static const String workerGetServices = "worker/worker-services";

  static const String timeUnit = "worker/time-units";

  ///  master Worker url
  static const String categoryWorkers = "master/category-workers";
  static const String workersDetails = "master/worker-details/";
  static const String masterDetails = "worker/master-details/";

  /// feedBackUrl url
  static const String masterFeedBackUrl = "master/enquiry";
  static const String workerFeedBackUrl = "worker/enquiry";

  /// feedBackUrl url
  static const String masterContactUs = "master/contact";

  /// profile urls
  static const String viewProfileUrl = "master/edit-profile";
  static const String editProfileUrl = "master/update-profile";
  static const String viewWorkerProfileUrl = "worker/edit-profile";
  static const String editWorkerProfileUrl = "worker/update-profile";

  /// review urls
  static const String masterGetReviewUrl = "master/all-reviews?worker_id=";
  static const String masterPostReviewUrl = "master/review";
  static const String workerGetReviewUrl = "worker/all-reviews?master_id=";
  static const String workerPostReviewUrl = "worker/review";

  /// worker contact urls
  static const String workerContactUrl = "worker/contact";
  static const String masterContactUrl = "master/contact";
}
