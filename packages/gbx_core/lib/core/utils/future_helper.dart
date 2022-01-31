typedef TransformFunc<I, R> = R Function(I value);

extension FutureHelper<T> on Future<T> {
  Future<V> map<V>(TransformFunc<T, V> transform) async {
    return transform(await this);
  }
}
