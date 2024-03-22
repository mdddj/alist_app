part of 'part.dart';

class LoadingMoreStatusBuilder {
  static Widget sliver(BuildContext context, IndicatorStatusModel model) {
    return model.when(
      none: () {
        return const SizedBox.shrink();
      },
      empty: (_) {
        return const SliverFillRemaining(
          child: Center(child: Text('没有内容')),
        );
      },
      loadingMoreBusying: () {
        return const Center(child: CircularProgressIndicator());
      },
      fullScreenBusying: () {
        return const SliverFillRemaining(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
      error: (error, stackTrace, refreshBase) {
        return Center(
            child:
                Text('加载失败:$error').marginOnly(bottom: context.paddingBottom));
      },
      fullScreenError: (error, stackTrace, refreshBase) {
        return SliverFillRemaining(
            child: Center(
                child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: SpaceColumn(
            children: [
              Text(
                '$error',
                textAlign: TextAlign.center,
              ),
              OutlinedButton(
                  onPressed: () => refreshBase.errorRefresh(),
                  child: const Text('重试'))
            ],
          ),
        )));
      },
      noMoreLoad: () {
        return Center(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('没有更多了',
              style: context.textTheme.bodySmall
                  ?.copyWith(color: context.colorScheme.secondary)),
        ));
      },
    );
  }

  static Widget simple(BuildContext context, IndicatorStatusModel model) {
    return model.when(
      none: () {
        return const SizedBox.shrink();
      },
      empty: (_) {
        return const Center(child: Text('没有内容'));
      },
      loadingMoreBusying: () {
        return const Center(child: CircularProgressIndicator());
      },
      fullScreenBusying: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
      error: (error, stackTrace, refreshBase) {
        return Center(
            child:
                Text('加载失败:$error').marginOnly(bottom: context.paddingBottom));
      },
      fullScreenError: (error, stackTrace, refreshBase) {
        return Center(
            child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: SpaceColumn(
            children: [
              Text(
                '$error',
                textAlign: TextAlign.center,
              ),
              OutlinedButton(
                  onPressed: () => refreshBase.errorRefresh(),
                  child: const Text('重试'))
            ],
          ),
        ));
      },
      noMoreLoad: () {
        return Center(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('没有更多了',
              style: context.textTheme.bodySmall
                  ?.copyWith(color: context.colorScheme.secondary)),
        ));
      },
    );
  }
}
