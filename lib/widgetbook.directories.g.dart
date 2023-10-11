// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:widget_book_test/components/custom_button.dart' as _i2;
import 'package:widget_book_test/dialogs/custom_dialog.dart' as _i3;
import 'package:widgetbook/widgetbook.dart' as _i1;

final directories = <_i1.WidgetbookNode>[
  _i1.WidgetbookFolder(
    name: 'components',
    children: [
      _i1.WidgetbookComponent(
        name: 'CustomButton',
        useCases: [
          _i1.WidgetbookUseCase(
            name: 'Disabled',
            builder: _i2.disabledButton,
          ),
          _i1.WidgetbookUseCase(
            name: 'Enabled',
            builder: _i2.enabledButton,
          ),
        ],
      )
    ],
  ),
  _i1.WidgetbookFolder(
    name: 'dialogs',
    children: [
      _i1.WidgetbookComponent(
        name: 'CustomContainer',
        useCases: [
          _i1.WidgetbookUseCase(
            name: 'Contaienr1',
            builder: _i3.CustomContainerTest,
          )
        ],
      )
    ],
  ),
];
