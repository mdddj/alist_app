import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/fs_list.dart';

part 'select_folder.freezed.dart';
part 'select_folder.g.dart';

extension SelectFolderModelEx on SelectFolderModel {
  bool get isEnable => selectModel != null && path != null;
}

@freezed
class SelectFolderModel with _$SelectFolderModel {
  const SelectFolderModel._();

  const factory SelectFolderModel({FsModel? selectModel, String? path}) =
      _SelectFolderModel;
}

@riverpod
class SelectFolderState extends _$SelectFolderState {
  @override
  SelectFolderModel build() {
    return const SelectFolderModel();
  }

  void change(FsModel? model, {String? path}) {
    state = state.copyWith(selectModel: model, path: path);
  }
}
