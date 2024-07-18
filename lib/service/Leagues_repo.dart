import 'package:dio/dio.dart';
import 'package:sportsapp/models/Leagues_model.dart';

class LeaguesService {
  final Dio dio;
  final String baseurl = 'https://apiv2.allsportsapi.com/football';
  final String apikey = '31d6347d9e56090fc8af9a9f3bda4bb4542ec53bc24cdca14a43f887bb55f45a';

  LeaguesService(this.dio);
  Future<LeaguesModel> getcurrentLeaugues() async {
    try {
      Response response = await dio
          .get('$baseurl/?met=Leagues&APIkey=$apikey');

      LeaguesModel leaguesModel = LeaguesModel.fromJson(response.data);
      return leaguesModel;
    } on DioException catch (e) {
      final String errormessage = e.response?.data['error']['message'] ??
          'oops there was an error try later ';
      throw Exception(errormessage);
    } catch (e) {
      
      throw Exception('oops try later');
    }
  }
}

//https://apiv2.allsportsapi.com/football/?met=Leagues&APIkey=!_your_account_APIkey_!

//31d6347d9e56090fc8af9a9f3bda4bb4542ec53bc24cdca14a43f887bb55f45a ->api key