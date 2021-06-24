import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:big_wallet/app/app.dart';

/// Text field widget for taking phone input with
/// country picker dialog
class CountryPhoneField extends StatefulWidget {
  CountryPhoneField(
      {Key? key,
      this.autofocus = false,
      this.autoValidate = true,
      this.controller,
      this.countries,
      this.countryCodeTextColor,
      this.errorText,
      this.dropDownArrowColor,
      this.dropdownDecoration = const BoxDecoration(),
      this.enabled = true,
      this.focusNode,
      this.initialCountryCode,
      this.obscureText = false,
      this.textAlign = TextAlign.left,
      this.onTap,
      this.readOnly = false,
      this.initialValue,
      this.keyboardType = TextInputType.number,
      this.style,
      this.onSubmitted,
      this.validator,
      this.onChanged,
      this.onCountryChanged,
      this.onSaved,
      this.showDropdownIcon = true,
      this.inputFormatters,
      this.keyboardAppearance = Brightness.light,
      this.searchText = 'Search by Country Name',
      this.textInputAction})
      : super(key: key);

  final bool obscureText;
  final TextAlign textAlign;
  final VoidCallback? onTap;

  final String? errorText;

  /// {@macro flutter.widgets.editableText.readOnly}
  final bool readOnly;
  final FormFieldSetter<PhoneNumber>? onSaved;

  /// {@macro flutter.widgets.editableText.onChanged}
  ///
  /// See also:
  ///
  ///  * [inputFormatters], which are called before [onChanged]
  ///    runs and can validate and change ("format") the input value.
  ///  *  [onSubmitted], [onSelectionChanged]:
  ///    which are more specialized input change notifications.
  final ValueChanged<PhoneNumber>? onChanged;
  final ValueChanged<PhoneNumber>? onCountryChanged;
  final FormFieldValidator<String>? validator;
  final bool autoValidate;

  /// {@macro flutter.widgets.editableText.keyboardType}
  final TextInputType keyboardType;

  /// Controls the text being edited.
  ///
  /// If null, this widget will create its own [TextEditingController].
  final TextEditingController? controller;

  /// Defines the keyboard focus for this widget.
  ///
  /// The [focusNode] is a long-lived object that's typically managed by a
  /// [StatefulWidget] parent. See [FocusNode] for more information.
  ///
  /// To give the keyboard focus to this widget, provide a [focusNode] and then
  /// use the current [FocusScope] to request the focus:
  ///
  /// ```dart
  /// FocusScope.of(context).requestFocus(myFocusNode);
  /// ```
  ///
  /// This happens automatically when the widget is tapped.
  ///
  /// To be notified when the widget gains or loses the focus, add a listener
  /// to the [focusNode]:
  ///
  /// ```dart
  /// focusNode.addListener(() { print(myFocusNode.hasFocus); });
  /// ```
  ///
  /// If null, this widget will create its own [FocusNode].
  ///
  /// ## Keyboard
  ///
  /// Requesting the focus will typically cause the keyboard to be shown
  /// if it's not showing already.
  ///
  /// On Android, the user can hide the keyboard - without changing the focus -
  /// with the system back button. They can restore the keyboard's visibility
  /// by tapping on a text field.  The user might hide the keyboard and
  /// switch to a physical keyboard, or they might just need to get it
  /// out of the way for a moment, to expose something it's
  /// obscuring. In this case requesting the focus again will not
  /// cause the focus to change, and will not make the keyboard visible.
  ///
  /// This widget builds an [EditableText] and will ensure that the keyboard is
  /// showing when it is tapped by calling [EditableTextState.requestKeyboard()].
  final FocusNode? focusNode;

  /// {@macro flutter.widgets.editableText.onSubmitted}
  ///
  /// See also:
  ///
  ///  * [EditableText.onSubmitted] for an example of how to handle moving to
  ///    the next/previous field when using [TextInputAction.next] and
  ///    [TextInputAction.previous] for [textInputAction].
  final void Function(String)? onSubmitted;

  /// If false the text field is "disabled":
  final bool enabled;

  /// The appearance of the keyboard.
  ///
  /// This setting is only honored on iOS devices.
  ///
  /// If unset, defaults to the brightness of [ThemeData.primaryColorBrightness].
  final Brightness keyboardAppearance;

  /// Initial Value for the field.
  /// This property can be used to pre-fill the field.
  final String? initialValue;

  /// 2 Letter ISO Code
  final String? initialCountryCode;

  /// List of 2 Letter ISO Codes of countries to show. Defaults to showing the inbuilt list of all countries.
  final List<String>? countries;

  /// The style to use for the text being edited.
  ///
  ///
  /// If null, defaults to the `subtitle1` text style from the current [Theme].
  final TextStyle? style;
  final bool showDropdownIcon;

  final BoxDecoration dropdownDecoration;

  /// {@macro flutter.widgets.editableText.inputFormatters}
  final List<TextInputFormatter>? inputFormatters;

  /// Placeholder Text to Display in Searchbar for searching countries
  final String searchText;

  /// Color of the country code
  final Color? countryCodeTextColor;

  /// Color of the drop down arrow
  final Color? dropDownArrowColor;

  /// Whether this text field should focus itself if nothing else is already focused.
  final bool autofocus;

  final TextInputAction? textInputAction;

  static const countryPhoneFieldKey = Key('CountryPhoneFieldKey');

  @override
  _CountryPhoneFieldState createState() => _CountryPhoneFieldState();
}

class _CountryPhoneFieldState extends State<CountryPhoneField> {
  late List<Map<String, dynamic>> _countryList;
  late Map<String, dynamic> _selectedCountry;
  late List<Map<String, dynamic>> filteredCountries;

  FormFieldValidator<String>? validator;

  @override
  void initState() {
    super.initState();
    _countryList = widget.countries == null
        ? countries
        : countries
            .where((country) => widget.countries!.contains(country['code']))
            .toList();
    filteredCountries = _countryList;
    _selectedCountry = _countryList.firstWhere(
        (item) => item['code'] == (widget.initialCountryCode ?? 'US'),
        orElse: () => _countryList.first);

    validator = widget.autoValidate
        ? ((value) => value != null && value.length != 10
            ? 'Invalid Mobile Number'
            : null)
        : widget.validator;
  }

  Future<void> _changeCountry() async {
    filteredCountries = _countryList;
    await showDialog<void>(
      context: context,
      useRootNavigator: false,
      builder: (context) => StatefulBuilder(
        builder: (ctx, setState) => Dialog(
          child: Container(
            padding: Dimens.edgeInsets10,
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    suffixIcon: const Icon(Icons.search),
                    labelText: widget.searchText,
                  ),
                  onChanged: (value) {
                    setState(() {
                      filteredCountries = _countryList
                          .where((country) => (country['name']! as String)
                              .toLowerCase()
                              .contains(value.toLowerCase()))
                          .toList();
                    });
                  },
                ),
                Dimens.boxHeight20,
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: filteredCountries.length,
                    itemBuilder: (ctx, index) => Column(
                      children: <Widget>[
                        ListTile(
                          title: Text(
                            filteredCountries[index]['name']! as String,
                            style: const TextStyle(fontWeight: FontWeight.w700),
                          ),
                          trailing: Text(
                            '+${filteredCountries[index]['dial_code']}',
                            style: const TextStyle(fontWeight: FontWeight.w700),
                          ),
                          onTap: () {
                            _selectedCountry = filteredCountries[index];

                            if (widget.onCountryChanged != null) {
                              widget.onCountryChanged!(
                                PhoneNumber(
                                  countryISOCode:
                                      _selectedCountry['code'] as String,
                                  countryCode:
                                      '+${_selectedCountry['dial_code']}',
                                  number: '',
                                ),
                              );
                            }

                            Navigator.of(context).pop();
                          },
                        ),
                        const Divider(thickness: 1),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) => TextFormField(
        initialValue: widget.initialValue,
        readOnly: widget.readOnly,
        obscureText: widget.obscureText,
        textAlign: widget.textAlign,
        onTap: () {
          if (widget.onTap != null) widget.onTap!();
        },
        controller: widget.controller,
        focusNode: widget.focusNode,
        onFieldSubmitted: (s) {
          if (widget.onSubmitted != null) widget.onSubmitted!(s);
        },
        decoration: InputDecoration(
          prefixIcon: _buildFlagsButton(),
          contentPadding: Dimens.edgeInsets16,
          fillColor: ColorsValue.backgroundColor,
          hintText: StringConstants.phone,
          hintStyle: Styles.lightGrey15,
          errorStyle: Styles.black16,
          errorText: widget.errorText,
          border: Styles.outlineBorderRadius5,
          counter: const SizedBox.shrink(),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimens.three),
              borderSide: const BorderSide(color: ColorsValue.borderColor)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimens.three),
              borderSide: const BorderSide(color: ColorsValue.borderColor)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimens.three),
              borderSide: const BorderSide(color: ColorsValue.borderColor)),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimens.three),
              borderSide: const BorderSide(color: ColorsValue.borderColor)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimens.three),
              borderSide: const BorderSide(color: ColorsValue.borderColor)),
        ),
        style: widget.style,
        onSaved: (value) {
          if (widget.onSaved != null) {
            widget.onSaved!(
              PhoneNumber(
                countryISOCode: _selectedCountry['code'] as String,
                countryCode: '+${_selectedCountry['dial_code']}',
                number: value,
              ),
            );
          }
        },
        onChanged: (value) {
          if (widget.onChanged != null) {
            widget.onChanged!(
              PhoneNumber(
                countryISOCode: _selectedCountry['code'] as String,
                countryCode: '+${_selectedCountry['dial_code']}',
                number: value,
              ),
            );
          }
        },
        validator: validator,
        maxLength: _selectedCountry['max_length'] as int,
        keyboardType: widget.keyboardType,
        inputFormatters: widget.inputFormatters,
        enabled: widget.enabled,
        keyboardAppearance: widget.keyboardAppearance,
        autofocus: widget.autofocus,
        textInputAction: widget.textInputAction,
      );

  DecoratedBox _buildFlagsButton() => DecoratedBox(
        decoration: widget.dropdownDecoration,
        child: InkWell(
          borderRadius: widget.dropdownDecoration.borderRadius as BorderRadius?,
          onTap: _changeCountry,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Image.asset(
                //   'assets/flags/${_selectedCountry['code']!.toLowerCase()}.png',
                //   package: 'intl_phone_field',
                //   width: 32,
                // ),
                Dimens.boxWidth8,
                FittedBox(
                  child: Text(
                    '+${_selectedCountry['dial_code']}',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: widget.countryCodeTextColor),
                  ),
                ),
                if (widget.showDropdownIcon) ...[
                  Icon(
                    Icons.arrow_drop_down,
                    color: widget.dropDownArrowColor,
                  ),
                  Dimens.boxWidth8,
                ],
                // SizedBox(width: 8),
              ],
            ),
          ),
        ),
      );
}
