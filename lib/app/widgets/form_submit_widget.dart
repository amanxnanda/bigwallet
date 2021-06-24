import 'package:flutter/material.dart';
import 'package:big_wallet/app/app.dart';

/// A widget which will be used in the forms to allow user to submit the
/// details which were filled by the user.
///
/// [opacity] : The opacity of the widget to show that the widget is not enabled.
/// [disableColor] : The disable color of the widget.
/// [padding] : The padding around the content of the widget.
/// [onTap] : The tap event which will be triggered.
/// [text] : The text which will be shown.
/// [textStyle] : The style of the [text].
class FormSubmitWidget extends StatelessWidget {
  FormSubmitWidget({
    Key? key,
    this.opacity = 1,
    this.disableColor,
    this.padding,
    this.onTap,
    required this.text,
    this.textStyle,
    this.autoFocus = false,
    this.fixedSize,
  }) : super(key: key);

  final double opacity;
  final Color? disableColor;
  final EdgeInsets? padding;
  final void Function()? onTap;
  final String? text;
  final TextStyle? textStyle;
  final bool autoFocus;
  final Size? fixedSize;

  @override
  Widget build(BuildContext context) => Opacity(
        opacity: opacity,
        child: ElevatedButton(
          autofocus: autoFocus,
          style: Styles.elevatedButtonTheme.style!.copyWith(
            fixedSize: MaterialStateProperty.resolveWith<Size?>(
                (Set<MaterialState> states) => fixedSize),
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) =>
                  states.contains(MaterialState.disabled)
                      ? disableColor!
                      : ColorsValue.primaryColor,
            ),
            textStyle: MaterialStateProperty.all(
              textStyle,
            ),
            padding: MaterialStateProperty.all(
              padding,
            ),
          ),
          onPressed: onTap,
          child: Text(
            text!,
            style: textStyle,
          ),
        ),
      );
}
