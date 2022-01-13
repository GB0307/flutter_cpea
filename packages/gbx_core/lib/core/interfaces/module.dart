import 'package:flutter/cupertino.dart';

/// Main class for any feature
///
/// Expose the domain layer to the presentation layers or other features domain
/// layer.
abstract class IModule {
  /// Used to inject dependencies
  Future<void> initialize() async {
    await initializeDependencies();

    await injectSelf();
  }

  static Future<void> initializeAll(List<IModule> modules) {
    var initializers = modules.map((e) => e.initialize());
    return Future.wait(initializers);
  }

  @protected
  Future<void> initializeDependencies();

  @protected
  Future<void> injectSelf();
}
