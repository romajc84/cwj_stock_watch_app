import 'package:http/http.dart' as http;
import 'dart:async';

class StockService {

  Future<double> getPrice(String symbol) async {
    String url = "https://sandbox.iexapis.com/stable/stock/$symbol/quote/latestPrice?token=Tsk_38ddda0b877a4510b42a37ae713cdc96";

    http.Response response = await http.get(url);
    double price = double.tryParse(response.body);
    return price;
  }

  Future<double> getEps(String symbol) async {
    String url = "https://sandbox.iexapis.com/stable/stock/$symbol/stats/ttmEPS?token=Tsk_38ddda0b877a4510b42a37ae713cdc96";

    http.Response response = await http.get(url);
    double eps = double.tryParse(response.body);
    return eps;
  }

}