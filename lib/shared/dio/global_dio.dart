import 'package:dio/dio.dart';
import 'package:p2p/shared/dio/dio_helper.dart';

final Dio dio =
    DioHelper.getDio(baseUrl: "https://dev-lm.coderslab.com.bd/api/v1/");
