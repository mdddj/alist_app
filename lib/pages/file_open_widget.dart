part of 'part.dart';

class FileOpenWidget extends PlatformWidget {
  final FileOptionModel model;

  const FileOpenWidget({super.key, required this.model});

  @override
  Widget buildWithDesktop(
      BuildContext context, WidgetRef ref, DomainAccount domain) {
    return model.action.render(model.fsModel);
  }

  @override
  Widget buildWithMobile(
      BuildContext context, WidgetRef ref, DomainAccount domain) {
    return buildWithDesktop(context, ref,domain);
  }
}
