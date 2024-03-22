import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/domain_account.dart';

part 'domains_edit.freezed.dart';
part 'domains_edit.g.dart';

@freezed
class DomainEditModel with _$DomainEditModel {
  const DomainEditModel._();

  const factory DomainEditModel(
      {@JsonKey(name: 'isEditorMode') @Default(false) bool isEditorMode,
      @Default(IListConst([])) IList<int> selectIdList}) = _DomainEditModel;

  factory DomainEditModel.fromJson(Map<String, dynamic> json) =>
      _$DomainEditModelFromJson(json);
}

@Riverpod(keepAlive: false)
class DomainEditModelState extends _$DomainEditModelState {
  @override
  DomainEditModel build() {
    return const DomainEditModel();
  }

  ///选中或者不选中
  void changeState(DomainAccount account) {
    if (state.selectIdList.contains(account.id)) {
      state =
          state.copyWith(selectIdList: state.selectIdList.remove(account.id));
    } else {
      state = state.copyWith(selectIdList: state.selectIdList.add(account.id));
    }
  }

  ///编辑模式切换
  void changeMode() {
    state = state.copyWith(
        isEditorMode: !state.isEditorMode, selectIdList: const IListConst([]));
  }
}
