part of 'part.dart';

class JsonAction extends FileAction {
  @override
  FileHandleMenu get menu =>
      const FileHandleMenu(supports: [FileType.json], title: 'Json预览');

  @override
  Widget render(FsModel file) {
    return _JsonFileWidget(file);
  }
}

class _JsonFileWidget extends PlatformWidget {
  final FsModel file;

  const _JsonFileWidget(this.file);

  @override
  Widget buildWithDesktop(
      BuildContext context, WidgetRef ref, DomainAccount domain) {
    return FetchRawData(
      file: file,
      builder: (FsDetailInfo detail, DartTypeModel data) {
        final v = MyRawJsonApi().request(RequestParams(
            fullUrl: detail.rawUrl));
        return FutureBuilder<DartTypeModel>(
          future: AsyncMemoizer<DartTypeModel>().runOnce(() => v),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final widget =  snapshot.data?.whenOrNull(
                    json: (value) {
                      return _Print(data: value);
                    },
                    list: (value) {
                      return _Print(data: value);
                    },
                    string: (value) {
                      return Text(value);
                    },
                  ) ??
                  const Center(
                    child: Text('不支持预览'),
                  );
              return SingleChildScrollView(
                padding: const EdgeInsets.all(5),
                child: widget,
              );
            }
            return Container(
              alignment: Alignment.center,
              child: const Text('无数据'),
            );
          },
        );
      },
    );
  }
  

}


class _Print extends StatelessWidget {
  final dynamic data;
  const _Print({this.data});

  @override
  Widget build(BuildContext context) {
    return SelectableText(const JsonEncoder.withIndent('  ').convert(data));
  }
}
