part of 'part.dart';

extension MenuProviderEx on WidgetRef {
  MenuState get menuState => watch(menuProvider.select((value) => value));

  MenuController get menuController => read(menuProvider.notifier);

  RelativeRect get showMenuPosition {
    final Offset(:dx,:dy) = menuState.buttonOffset;
    return RelativeRect.fromLTRB(dx, dx, dy, dy);
  }
}

final menuProvider =
    StateNotifierProvider<MenuController, MenuState>(MenuController.new);

class MenuController extends StateNotifier<MenuState>
    with ProviderMixin<MenuState> {
  final Ref ref;

  MenuController(this.ref) : super( MenuState(indexScrollAppbarKey: GlobalKey<ScaffoldState>()));

  void hideLeftMenu() {
    state = state.copyWith(leftMenuExpand: true);
  }

  void showLeftMenu() {
    state = state.copyWith(leftMenuExpand: false);
  }

  void showAppbarMenu(){
    state.indexScrollAppbarKey.currentState?.openDrawer();
  }
}
