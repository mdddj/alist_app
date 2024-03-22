library widget;

import 'dart:io';

import 'package:async/async.dart';
import 'package:configurable_expansion_tile_null_safety/configurable_expansion_tile_null_safety.dart';
import 'package:dd_js_util/dd_js_util.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:loader_plus/loader_plus.dart';
import 'package:loading_more_list_fast/loading_more_list_fast.dart';
import 'package:loading_more_list_library_fast/model/status.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart' as pp;
import 'package:roundcheckbox/roundcheckbox.dart';

import '../account/part.dart';
import '../api/part.dart';
import '../exception/global.dart';
import '../models/alert_param.dart';
import '../models/app_setting.dart';
import '../models/collect_folder.dart';
import '../models/collect_model.dart';
import '../models/domain_account.dart';
import '../models/fs_detail_info.dart';
import '../models/fs_list.dart';
import '../models/history_path.dart';
import '../models/key_board.dart';
import '../models/my_file.dart';
import '../models/page_model.dart';
import '../models/preview_param.dart';
import '../models/site_setting.dart';
import '../pages/part.dart';
import '../provider/app_manager.dart';
import '../provider/collect_folder_provider.dart';
import '../provider/domains_edit.dart';
import '../provider/fs_model_router.dart';
import '../provider/part.dart';
import '../provider/select_folder.dart';
import '../provider/sites_provider.dart';
import '../provider/ui.dart';
import '../router/router.dart';
import '../tool/part.dart';
import '../ui/part.dart';

part 'active.dart';
part 'api_creater.dart';
part 'appbar.dart';
part 'collect_dialog.dart';
part 'create_domain.dart';
part 'dialogs.dart';
part 'download_dialog.dart';
part 'drag_split_component.dart';
part 'fetch_raw_data.dart';
part 'file_select_tree.dart';
part 'files.dart';
part 'files_toolbar.dart';
part 'files_widget.dart';
part 'fs_files_show.dart';
part 'fs_list.dart';
part 'full_loading.dart';
part 'group.dart';
part 'hover_card.dart';
part 'init_builder.dart';
part 'is_collect_widget.dart';
part 'key_event_widget.dart';
part 'loading_model_status.dart';
part 'locking.dart';
part 'login.dart';
part 'login_tips.dart';
part 'main_header.dart';
part 'main_toolbar.dart';
part 'my_platform_widget.dart';
part 'nav_bar.dart';
part 'path_history.dart';
part 'pointer_record.dart';
part 'rename_get.dart';
part 'select_domain.dart';
part 'select_path_widget.dart';
part 'title.dart';

mixin ProviderMixin<T> on StateNotifier<T> {
  ///更新状态
  void changeState(ValueCopyWith<T> newState) {
    state = newState.call(state);
  }
}
