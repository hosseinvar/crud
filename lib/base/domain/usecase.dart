import 'package:rxdart/rxdart.dart';
import 'package:logging/logging.dart';
import 'dart:async';

abstract class UseCase<T, Params>{
  late  CompositeSubscription _disposable;
  late Logger _logger;
  Logger get logger => _logger;

  Future<Stream<T>> buildUseCaseStream(Params? params);

  UseCase(){
    _disposable = CompositeSubscription();
    _logger = Logger(runtimeType.toString());
  }

  void execute(void onData(T event),Function onError,
      { Params? params,  bool? cancelOnError,void onDone()?}) async {

    final StreamSubscription<T> subscription = (await buildUseCaseStream(params))
        .listen(onData, onDone: onDone, onError: onError);

    _addSubscription(subscription);
  }

  void _addSubscription(StreamSubscription subscription){
    if(_disposable.isDisposed){
      _disposable = CompositeSubscription();
    }
    _disposable.add(subscription);
  }


  void dispose(){
    if(!_disposable.isDisposed){
      _disposable.dispose();
    }
  }
}


abstract class CompletableUseCase<Params> extends UseCase<void, Params> {
  @override
  Future<Stream<void>> buildUseCaseStream(Params? params);
}