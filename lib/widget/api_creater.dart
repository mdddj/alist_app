part of 'part.dart';

typedef ApiCreaterApiParams<T, A extends MyApiBase<T>> = R Function(
    ApiCreaterState<T, A> state);
typedef ApiCreaterApiBuilder<T, A extends MyApiBase<T>> = Widget Function(
    T data, BuildContext context, ApiCreaterState<T, A> state);
typedef ApiCreaterApiBuilderExceptionBuilder<T, A extends MyApiBase<T>>
    = Widget Function(
        GlobalError exception, MyApiBase<T> api, ApiCreaterState<T, A> state);
typedef ApiCreaterApiLoading = Widget Function(Widget defaultLoadingWidget);

class ApiCreater<T, A extends MyApiBase<T>> extends StatefulWidget {
  final ApiCreaterApiBuilder<T, A> builder;
  final ApiCreaterApiParams<T, A>? params;
  final ApiCreaterApiBuilderExceptionBuilder<T, A>? error;
  final ApiCreaterApiLoading? loading;
  final ValueChanged<T>? dataLoaded;

  const ApiCreater(
      {super.key,
      this.params,
      required this.builder,
      this.error,
      this.loading,
      this.dataLoaded});

  @override
  State<ApiCreater<T, A>> createState() => ApiCreaterState<T, A>();

  static Widget defaultLoading(Widget i) => i;

  static Widget defaultRefreshException<T, A extends MyApiBase<T>>(
          GlobalError exception,
          MyApiBase<T> api,
          ApiCreaterState<T, A> state) =>
      Text('$exception');

  ///默认配置
  static ApiCreater def<T, A extends MyApiBase<T>>(
      {required ApiCreaterApiBuilder<T, A> builder,
      final ApiCreaterApiParams<T, A>? params,
      ValueChanged<T>? dataLoaded}) {
    return ApiCreater<T, A>(
        builder: builder,
        params: params,
        dataLoaded: dataLoaded,
        error: defaultRefreshException,
        loading: defaultLoading);
  }
}

class ApiCreaterState<T, A extends MyApiBase<T>>
    extends State<ApiCreater<T, A>> {
  MyApiBase<T> get api => g.get<A>();
  T? _data;
  GlobalError? _exception;
  bool _loading = false;

  @override
  void initState() {
    super.initState();
    Future.microtask(_request);
  }

  Future<void> _request([bool refresh = false]) async {
    try {
      setState(() {
        _loading = refresh == true ? false : true;
        _exception = null;
      });
      final response = await api.request(
          widget.params?.call(this) ?? const R(showDefaultLoading: false));
      setState(() {
        _data = response;
        _loading = false;
      });
      widget.dataLoaded?.call(response);
    } on GlobalError catch (e) {
      debugPrint('error $e');
      setState(() {
        _exception = e;
        _loading = false;
      });
    }
  }

  Future<void> refresh() async {
    await _request(true);
  }

  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_data != null) {
      return widget.builder.call(_data as T, context, this);
    }
    if (_exception != null) {
      return widget.error?.call(_exception!, api, this) ?? const SizedBox();
    }
    if (_loading) {
      return widget.loading?.call(const _LoadingWidget()) ??
          const _LoadingWidget();
    }
    return const SizedBox();
  }
}

class _LoadingWidget extends StatelessWidget {
  const _LoadingWidget();

  @override
  Widget build(BuildContext context) {
    return const Center(child: CupertinoActivityIndicator());
  }
}
