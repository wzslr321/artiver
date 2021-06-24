import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/widgets.dart';

export 'package:flutter_gen/gen_l10n/app_localizations.dart';

/// Extension that lets to use l10n as a getter
/// on [BuildContext] to have less boilerplate.
extension AppLocalizationsX on BuildContext {
  /// l10n getter that gives access to .arb translations
  /// with minimal amount of boilerplate.
  AppLocalizations get l10n => AppLocalizations.of(this)!;
}
