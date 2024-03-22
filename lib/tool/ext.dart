part of 'part.dart';

extension BuildContextEx on BuildContext {

  ///重置
  void reStart(){
    final ref = ProviderScope.containerOf(this);
    ref.read(sitesStateProvider.notifier).reset();
    const MyInitStart().go(this);
  }
}


