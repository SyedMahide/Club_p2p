import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:p2p/shared/dio/dio_helper.dart';
import 'package:p2p/shared/dio/global_dio.dart' as global;

class OtpApi {
  Future<Either<String, bool>> verifyUser({required int otp}) async {
    const String url = 'customer/verify-otp';
    final Options options =
        await DioHelper.getDefaultOptions(isCacheEnabled: false);
    try {
      final Response<dynamic> response = await global.dio.post(
        url,
        options: options,
        data: <String, int>{'otp': otp},
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
