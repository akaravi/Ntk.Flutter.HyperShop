import 'dart:async';

import 'package:rxdart/rxdart.dart';

class StreamHelper<T> {
  StreamHelper({this.streamValidator, this.transformerCallBack, T initValue}) {
    if (transformerCallBack != null) streamValidator = transformerCallBack();
    if (initValue != null) changeValue(initValue);
  }

  final StreamTransformer<T, T> Function() transformerCallBack;
  final _stream = BehaviorSubject<T>();
  BehaviorSubject<bool> _hasValueStream;

  T get lastValue => _stream.value;
  Function(T) get changeValue => _stream.sink.add;
  Stream<T> get stream => (streamValidator == null
      ? _stream.stream.asBroadcastStream()
      : _stream.stream.transform(streamValidator).asBroadcastStream());

  Stream<bool> get hasValueStream {
    if (_hasValueStream == null) {
      _hasValueStream = BehaviorSubject<bool>();
      _hasValueStream.sink.add(false);
      _stream.stream.listen((value) {
        if (value == null || value.toString().isEmpty || value.toString() == '')
          _hasValueStream.sink.add(false);
        else
          _hasValueStream.sink.add(true);
      });
    }
    return _hasValueStream.stream.asBroadcastStream();
  }

  StreamTransformer<T, T> streamValidator;
  Function(String) get changeError => _stream.sink.addError;

  Object lastAValue;
  Object lastBValue;
  void combine(Stream a, Stream b, T Function(Object, Object) func) {
    a.listen((aVal) {
      lastAValue = aVal;
      this.changeValue(func(lastAValue, lastBValue));
    });
    b.listen((bVal) {
      lastBValue = bVal;
      this.changeValue(func(lastAValue, lastBValue));
    });
  }

  void close() {
    _stream.close();
    _hasValueStream?.close();
  }
}
