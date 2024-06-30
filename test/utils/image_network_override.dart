import 'dart:io';
import 'dart:async';
import 'dart:convert';

import 'package:mockito/mockito.dart';

class TestHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return createMockImageHttpClient();
  }
}

class MockHttpClient extends Mock implements HttpClient {
  @override
  Future<HttpClientRequest> getUrl(Uri? url) {
    // ignore: invalid_use_of_visible_for_testing_member
    return super.noSuchMethod(Invocation.method(#getUrl, [url]),
        returnValue: Future.value(MockHttpClientRequest()));
  }
}

class MockHttpClientRequest extends Mock implements HttpClientRequest {
  @override
  // ignore: invalid_use_of_visible_for_testing_member
  HttpHeaders get headers => super.noSuchMethod(Invocation.getter(#headers),
      returnValue: MockHttpHeaders());

  @override
  Future<HttpClientResponse> close() =>
      // ignore: invalid_use_of_visible_for_testing_member
      super.noSuchMethod(Invocation.method(#close, []),
          returnValue: Future.value(MockHttpClientResponse()));
}

class MockHttpClientResponse extends Mock implements HttpClientResponse {
  @override
  HttpClientResponseCompressionState get compressionState =>
      // ignore: invalid_use_of_visible_for_testing_member
      super.noSuchMethod(Invocation.getter(#compressionState),
          returnValue: HttpClientResponseCompressionState.notCompressed);

  @override
  int get contentLength =>
      // ignore: invalid_use_of_visible_for_testing_member
      super.noSuchMethod(Invocation.getter(#contentLength), returnValue: 0);

  @override
  int get statusCode =>
      // ignore: invalid_use_of_visible_for_testing_member
      super.noSuchMethod(Invocation.getter(#statusCode), returnValue: 0);

  @override
  StreamSubscription<List<int>> listen(void Function(List<int>)? onData,
          {Function? onError, void Function()? onDone, bool? cancelOnError}) =>
      // ignore: invalid_use_of_visible_for_testing_member
      super.noSuchMethod(
          Invocation.method(#listen, [
            onData,
          ], {
            Symbol("onError"): onError,
            Symbol("onDone"): onDone,
            Symbol("cancelOnError"): cancelOnError,
          }),
          returnValue: MockStreamSubscription<List<int>>());
}

class MockHttpHeaders extends Mock implements HttpHeaders {}

class MockStreamSubscription<T> extends Mock implements StreamSubscription<T> {}

/// Returns a [MockHttpClient] that responds with demo image to all requests.
MockHttpClient createMockImageHttpClient() {
  final MockHttpClient client = MockHttpClient();
  final MockHttpClientRequest request = MockHttpClientRequest();
  final MockHttpClientRequest svgRequest = MockHttpClientRequest();

  when(client.getUrl(any)).thenAnswer((Invocation invocation) {
    return Future<HttpClientRequest>.value(
      invocation.positionalArguments[0].path.endsWith(".svg")
          ? svgRequest
          : request,
    );
  });

  mockRequestResponse(request: request, image: image);
  mockRequestResponse(request: svgRequest, image: svgImage);

  request.close();
  svgRequest.close();

  return client;
}

void mockRequestResponse({
  required MockHttpClientRequest request,
  required List<int> image,
}) {
  final MockHttpClientResponse response = MockHttpClientResponse();
  final MockHttpHeaders headers = MockHttpHeaders();
  when(request.headers).thenReturn(headers);
  when(request.close())
      .thenAnswer((_) => Future<HttpClientResponse>.value(response));
  when(response.compressionState)
      .thenReturn(HttpClientResponseCompressionState.notCompressed);
  when(response.contentLength).thenReturn(image.length);
  when(response.statusCode).thenReturn(HttpStatus.ok);
  when(response.listen(
    any,
    onError: anyNamed("onError"),
    onDone: anyNamed("onDone"),
    cancelOnError: anyNamed("cancelOnError"),
  )).thenAnswer((Invocation invocation) {
    final void Function(List<int>) onData = invocation.positionalArguments[0];
    final onDone = invocation.namedArguments[#onDone];
    final onError = invocation.namedArguments[#onError];
    final bool? cancelOnError = invocation.namedArguments[#cancelOnError];

    return Stream<List<int>>.fromIterable(<List<int>>[image]).listen(onData,
        onDone: onDone, onError: onError, cancelOnError: cancelOnError);
  });
}

//transparent pixel in png format
final image = base64Decode(
  "iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAADUlEQVR42mP8z8BQDwAEhQGAhKmMIQAAAABJRU5ErkJggg==",
);

//one pixel in svg format
final svgImage = base64Decode(
  "PHN2ZyBoZWlnaHQ9IjEiIHdpZHRoPSIxIj48L3N2Zz4=",
);
