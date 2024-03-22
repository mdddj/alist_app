part of 'part.dart';

typedef FetchRawDataBuilder = Widget Function(FsDetailInfo detail, DartTypeModel data);
typedef FetchRawDetailDataBuilder = Widget Function(FsDetailInfo detail);

class FetchRawData extends ConsumerWidget {
  final FsModel file;
  final FetchRawDataBuilder builder;
  final ValueChanged<DartTypeModel>? dataLoaded;

  const FetchRawData({super.key, required this.file, required this.builder, this.dataLoaded});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ApiCreater<FsDetailInfo, MyFsDetailGetApi>(
      builder: (data, context, state) {
        return ApiCreater.def<DartTypeModel, MyPublicFetchRawApi>(
          builder: (json, context, state) {
            return builder(data, json);
          },
          params: (state) => RequestParams(
            fullUrl: data.rawUrl,
            showDefaultLoading: false,
          ),
          dataLoaded: dataLoaded,
        );
      },
      params: (state) => RequestParams(data: {"path": file.simplePathUrl}, showDefaultLoading: false),
    );
  }
}

final _request = FutureProvider.family.autoDispose<String, String>((ref, url) => MyRawDataApi(url).request(const RequestParams(returnIsString: true, showDefaultLoading: false)));

class FetchRawDataByMd extends ConsumerWidget {
  final String url;
  final Widget Function(String data) builder;

  const FetchRawDataByMd({super.key, required this.url, required this.builder});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(_request(url)).when(
        data: builder,
        error: (error, stackTrace) => Text('$error').center.click(() {
              ref.invalidate(_request);
            }),
        loading: () => const CircularProgressIndicator().center);
  }
}

class FetchRawDetailData extends ConsumerWidget {
  final FsModel file;
  final FetchRawDetailDataBuilder builder;
  final String? loadingText;
  final String? path;

  const FetchRawDetailData({super.key, required this.file, required this.builder, this.loadingText,this.path});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ApiCreater<FsDetailInfo, MyFsDetailGetApi>(
      builder: (data, context, state) {
        return builder(data);
      },
      params: (state) => RequestParams(data: {"path": path ??file.simplePathUrl}, showDefaultLoading: false),
      loading: loadingText != null
          ? (defaultLoadingWidget) {
        return Center(
          child: IosTitle(title: '$loadingText'),
        );
      }
          : null,
      error: (exception, api, state) {
        return Text('$exception');
      },
    );
  }
}
