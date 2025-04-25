import 'package:flutter/widgets.dart';
import 'package:tech_taste/l10n/app_localizations.dart';

extension TranslateX on BuildContext {
  AppLocalizations get tr => AppLocalizations.of(this)!;
}
