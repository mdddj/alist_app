import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:flutter/material.dart';

import 'collect_model.dart';

part 'fs_state.g.dart';


@CopyWith()
class FsState extends ChangeNotifier {
  final String url;
  final CollectModel? collectModel;
  FsState({required this.url,this.collectModel});
}

