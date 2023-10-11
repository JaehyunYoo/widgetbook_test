import 'package:flutter/material.dart';
import 'package:widget_book_test/components/custom_button.dart';
import 'package:widget_book_test/dialogs/custom_dialog.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

void main() => runApp(const WidgetbookApp());

@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      directories: [
        WidgetbookFolder(
          name: 'button',
          children: [
            WidgetbookComponent(
              name: 'Test',
              useCases: [
                WidgetbookUseCase(
                  name: 'with green color',
                  builder: (context) => CustomButton(
                      title: context.knobs
                          .string(label: 'Click me', initialValue: '테스트벝른'),
                      textColor: context.knobs.boolean(label: '버튼상태')
                          ? Colors.amberAccent
                          : Colors.black87),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Container',
              useCases: [
                WidgetbookUseCase(
                  name: 'with green color',
                  builder: (context) => CustomContainer(
                    width: 52,
                    height: 52,
                  ),
                ),
              ],
            )
          ],
        )
      ],
      addons: [
        DeviceFrameAddon(devices: Devices.ios.all),
      ],
    );
  }
}
