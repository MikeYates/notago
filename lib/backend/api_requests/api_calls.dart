import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start FlutterFlow + PDF ApiFlow API Group Code

class FlutterFlowPDFApiFlowAPIGroup {
  static String getBaseUrl() =>
      'https://gw.apiflow.online/api/eb209785ed904216933ef7bc70bb46f5';
  static Map<String, String> headers = {
    'Authorization':
        'Bearer NjkwZmNlMzdiNzUzMTU5YTEyNDYyZjNmMWFhYjRhZDk6ZGRhYWE4NzJlYjJiMDM4OThiNTVlZGRmNzBhODY1NWE=',
  };
  static GeneratePDFCall generatePDFCall = GeneratePDFCall();
}

class GeneratePDFCall {
  Future<ApiCallResponse> call({
    String? documentId = '',
    String? website = '',
    String? company = '',
    List<String>? itemsList,
    String? email = '',
    String? invoiceNo = '',
    String? companyBillTo = '',
    String? addressBillTo = '',
    String? invoiceDate = '',
    String? invoiceDueDate = '',
  }) async {
    final baseUrl = FlutterFlowPDFApiFlowAPIGroup.getBaseUrl();
    final items = _serializeList(itemsList);

    final ffApiRequestBody = '''
{
  "document_id": "$documentId",
  "website": "$website",
  "company": "$company",
  "items": [
    {
      "name": "First product",
      "price": 198,
      "amount": 2,
      "total": 396
    }
  ],
  "email": "$email",
  "invoice_no": "$invoiceNo",
  "company_bill_to": "$companyBillTo",
  "address_bill_to": "$addressBillTo",
  "invoice_date": "$invoiceDate",
  "invoice_due_date": "$invoiceDueDate"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Generate PDF',
      apiUrl:
          '$baseUrl/generate?document_id=$documentId&website=$website&company=$company&items=$items&email=$email&invoice_no=$invoiceNo&company_bill_to=$companyBillTo&address_bill_to=$addressBillTo&invoice_date=$invoiceDate&invoice_due_date=$invoiceDueDate',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer NjkwZmNlMzdiNzUzMTU5YTEyNDYyZjNmMWFhYjRhZDk6ZGRhYWE4NzJlYjJiMDM4OThiNTVlZGRmNzBhODY1NWE=',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End FlutterFlow + PDF ApiFlow API Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
