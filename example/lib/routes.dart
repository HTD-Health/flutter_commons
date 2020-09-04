class NamedRoute {
  final String val;
  const NamedRoute._(this.val);
}

class Routes {
  Routes._();
  static const home = NamedRoute._('/');
  static const fader = NamedRoute._('/widgets/fader');
  static const fadeButton = NamedRoute._('/widgets/fade-button');
}
