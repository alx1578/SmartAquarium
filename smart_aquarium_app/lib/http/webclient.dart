import 'dart:convert';

import 'package:smart_aquarium_app/models/phValue.dart';
import 'package:smart_aquarium_app/models/temperatureValue.dart';
import 'package:http_interceptor/http_interceptor.dart';
import 'package:http/http.dart';

class TemperatureInterceptor implements InterceptorContract {
  @override
  Future<RequestData> interceptRequest({RequestData data}) async {
    //print(data.toString());
    return data;
  }

  @override
  Future<ResponseData> interceptResponse({ResponseData data}) async {
    print(data.toString());
    return data;
  }
}

class PhInterceptor implements InterceptorContract {
  @override
  Future<RequestData> interceptRequest({RequestData data}) async {
    print(data.toString());
    return data;
  }

  @override
  Future<ResponseData> interceptResponse({ResponseData data}) async {
    print(data.toString());
    return data;
  }
}

class FoodInterceptor implements InterceptorContract {
  @override
  Future<RequestData> interceptRequest({RequestData data}) async {
    print(data.toString());
    return data;
  }

  @override
  Future<ResponseData> interceptResponse({ResponseData data}) async {
    print(data.toString());
    return data;
  }
}

class LoggingInterceptor implements InterceptorContract {
  @override
  Future<RequestData> interceptRequest({RequestData data}) async {
    print(data.toString());
    return data;
  }

  @override
  Future<ResponseData> interceptResponse({ResponseData data}) async {
    print(data.toString());
    return data;
  }
}

class FishInformartionInterceptor implements InterceptorContract {
  @override
  Future<RequestData> interceptRequest({RequestData data}) async {
    print(data.toString());
    return data;
  }

  @override
  Future<ResponseData> interceptResponse({ResponseData data}) async {
    print(data.toString());
    return data;
  }
}

Future<List<GetpHValue>> Getph() async {
  final Client client = HttpClientWithInterceptor.build(
    interceptors: [PhInterceptor()],
  );
  final Response response = await client.get(
    Uri.http('192.168.0.14:8080', 'transactions'),
  );
  final List<GetpHValue> ph = List();
  final List<dynamic> decodedJson = jsonDecode(
    response.body,
  );
  for (Map<String, dynamic> element in decodedJson) {
    ph.add(GetpHValue(element['value']));
  }
  return ph;
}

Future<GetTemperatureValue> GetTemperature() async {
  final Client client = HttpClientWithInterceptor.build(
    interceptors: [
      TemperatureInterceptor(),
    ],
  );
  final Response response = await client.get(Uri.http(
    '192.168.0.14:8080',
    'transactions',
  ));
  final List<GetTemperatureValue> temperatures = List();
  final List<dynamic> decodedJson = jsonDecode(response.body);
  for (Map<String, dynamic> element in decodedJson) {
    temperatures.add(
      GetTemperatureValue(
        element['value'],
      ),
    );
    print('Valor da temp : ${temperatures[0].toString()}');
  }
  return temperatures[0];
}
