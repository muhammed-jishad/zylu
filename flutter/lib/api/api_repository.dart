
import 'package:zylu/api/api_provider.dart';

class ApiRepository {
   final provider = ApiProvider();
   Future<dynamic> getemployees() {
    return provider.getemployee();
  }
}
class NetworkError extends Error {}