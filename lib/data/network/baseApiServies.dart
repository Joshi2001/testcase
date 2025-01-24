// ignore_for_file: file_names

abstract class BaseApiServier {
  Future < dynamic>getApiResponse(String uri);
  Future < dynamic>postApiResponse(String uri, dynamic data);
  
}

