import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:p2p/app/modules/onboard/signin/model/sign_in_model.dart';
import 'package:p2p/shared/dio/dio_helper.dart';
import 'package:p2p/shared/dio/global_dio.dart' as global;

class SignInApi {
  Future<Either<String, bool>> loginUser(
      {required LoginModel loginModel}) async {
    const String url = 'customer/login';
    final Options options =
        await DioHelper.getDefaultOptions(isCacheEnabled: false);
    try {
      final Response<dynamic> response = await global.dio.post(
        url,
        options: options,
        data: loginModel.toJson(),
      );
      if (response.data['success'] == true) {
        return const Right<String, bool>(true);
      } else {
        return Left<String, bool>(
            response.data['message'] ?? 'Something went wrong');
      }
    } catch (e) {
      return Left<String, bool>(e.toString());
    }
  }
}
