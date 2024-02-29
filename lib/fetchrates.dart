import 'package:currencyconvertor/RatesModel.dart';
import 'package:currencyconvertor/allCurrencies.dart';
import 'package:currencyconvertor/key.dart';
import 'package:http/http.dart' as http;


Future<RatesModel> fetchrates() async {
  var response = await http.get(Uri.parse(
    "https://openexchangerates.org/api/latest.json?app_id=" + Key));
    final result = ratesModelFromJson(response.body);
    return result;
}

Future<Map> fetchcurrencies() async {
  var response = await http.get(Uri.parse(
    "https://openexchangerates.org/api/currencies.json?app_id=" + Key));
  final allCurrencies = allCurrienciesFromJson(response.body);
  return allCurrencies;
}


String convertusd(Map exchangeRates, String usd, String currency) {
  String output = ((exchangeRates[currency] * double.parse(usd)).toStringAsFixed(2))
    .toString();
    return output;
}

String covertany(Map exchangeRates, String amount, String currencybase,String currencyfinal) {
  String output = (double.parse(amount) /
        exchangeRates[currencybase] *
        exchangeRates[currencyfinal])
        .toStringAsFixed(2)
        .toString();
        
    return output;
}