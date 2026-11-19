/// Supertype of every `<Widget>Keys` companion.
///
/// `analysis_options.yaml` lists it under `ignored_types` of
/// `avoid_multiple_declarations_per_file`, so a companion may outgrow the
/// 15-line limit and still share its widget's file.
abstract class WidgetKeys {}
