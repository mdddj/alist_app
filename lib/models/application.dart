import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'domain_account.dart';
import 'menu_state.dart';

part 'application.freezed.dart';


@freezed
class ApplicationContext with _$ApplicationContext {
  const ApplicationContext._();

  const factory ApplicationContext({required BuildContext context, required WidgetRef ref}) = _ApplicationContext;
}
