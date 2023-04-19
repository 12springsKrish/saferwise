// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:saferwise_mobile/core/helper/custom_colors.dart';
import 'package:saferwise_mobile/core/helper/validations.dart';

import '../../services/textStyles.dart';

class CustomFormField extends StatefulWidget {
  String? hintText;
  String? prefixText;
  bool? obscureText = false, enabled;
  bool? enabledTextField = true;
  TextInputType? textInputType;
  int? maxLength;
  int? minLength;
  int? maxLines = 1;
  TextInputAction? textInputAction;
  String? error;
  TextEditingController? controller;
  ValidateTypes? validateTypes;
  ValidateState? validateState;
  Widget? suffixIcon;
  String? suffixText;
  bool? isVerifyButton;
  bool? isShowError;
  bool? showCounterText;
  List<TextInputFormatter>? inputFormat;
  Function(String)? onCountText;
  bool? isCounterCallback;
  int? counter;
  String? labelText;
  Function? applyPromo;
  String? errorMsg;
  FocusNode? focusNext;
  FocusNode? focusNode;
  bool? isOptional = false;
  Widget? suffix;
  int? minLines;
  void Function(String)? onChange;
  void Function(String)? onSubmit;
  void Function(String)? onEdite;
  TextCapitalization? textCapitalization;
  Widget? prefix;
  Color? fillColor;
  bool? showBorder = true;
  Color? borderColor;
  bool? showBoxShadow = true;
  bool? decoration;
  bool? isBio = false;
  String? label;

  CustomFormField(
      {Key? key,
        this.maxLength,
        this.minLength,
        this.error,
        this.textInputAction,
        this.maxLines,
        @required this.hintText,
        this.obscureText = false,
        this.enabled,
        this.textInputType,
        @required this.controller,
        this.validateTypes,
        this.validateState,
        this.suffixIcon,
        this.suffix,
        this.suffixText,
        this.enabledTextField,
        this.isVerifyButton,
        this.isShowError,
        this.inputFormat,
        this.onCountText,
        this.isCounterCallback = false,
        this.showCounterText = false,
        this.counter,
        this.applyPromo,
        this.labelText,
        this.errorMsg,
        this.focusNext,
        this.focusNode,
        this.isOptional = false,
        this.minLines,
        this.prefixText = "",
        this.onChange,
        this.onSubmit,
        this.textCapitalization,
        this.fillColor,
        this.prefix,
        this.showBorder = true,
        this.borderColor,
        this.showBoxShadow = true,
        this.decoration,
        this.isBio,
        this.label,
        this.onEdite})
      : super(key: key);

  @override
  CustomFormFieldState createState() => CustomFormFieldState();
}

class CustomFormFieldState extends State<CustomFormField> {
  FocusNode? _focusNode;
  bool isFocus = false;
  String? hintText;
  bool? enabled;
  TextInputType? textInputType;
  int? maxLength;
  int? maxLines;
  Widget? suffixIcon;
  TextInputAction? textInputAction;
  TextEditingController? controller;
  ValidateTypes? validateTypes;
  bool? isVerifyButton;
  bool? isVerify;
  String? errorMsg;
  FocusNode? focusNext;
  bool? isOptional;
  String? text = "";
  ValidateState? validateState;
  String? error;
  int? counter;
  bool? isBio = false;

  @override
  void initState() {
    super.initState();
    if (widget.focusNode == null) {
      _focusNode = FocusNode();
    } else {
      _focusNode = widget.focusNode;
      _focusNode!.addListener(() {
        setState(() {
          isFocus = _focusNode!.hasFocus;
        });
        if (!_focusNode!.hasFocus) {
          checkValidation(_focusNode!.hasFocus);
        }
      });
    }
    if (widget.controller != null) {
      widget.controller!.selection = TextSelection.fromPosition(
          TextPosition(offset: widget.controller!.text.length));
    }
    widget.enabled ??= true;
    widget.maxLines ??= 1;
    widget.textInputAction ??= TextInputAction.next;
    widget.error ??= "";
    widget.validateTypes ??= ValidateTypes.empty;
    widget.validateState ??= ValidateState.initial;
    suffixIcon = widget.suffixIcon;
    widget.isVerifyButton ??= false;
    widget.decoration ??= true;
    hintText = widget.hintText;
    enabled = widget.enabled;
    textInputType = widget.textInputType;
    maxLength = widget.maxLength;
    maxLines = widget.maxLines;
    textInputAction = widget.textInputAction;
    error = widget.error;
    controller = widget.controller;
    validateTypes = widget.validateTypes;
    validateState = widget.validateState;
    isVerifyButton = widget.isVerifyButton;
    focusNext = widget.focusNext;
    isOptional = widget.isOptional;
    isVerify = widget.isShowError;
    isBio = widget.isBio ?? false;

    if (controller != null && controller!.text.isNotEmpty) {
      checkValidation(true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /*Text(
          widget.label.toString(),
          style: CustomTextStyles.semiBold(
              fontSize: 16.0, fontColor: blackColor,fontWeight: FontWeight.w800),
        ),*/

        Container(
          padding: EdgeInsets.zero,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: grayBg)
            )
          ),
          child: TextField(
            enabled: widget.enabledTextField ?? true,
            textInputAction: textInputAction,
            keyboardType: widget.textInputType,
            maxLength: widget.maxLength,
            maxLines: widget.maxLines ?? 1,
            obscureText: widget.obscureText ?? false,
            autofocus: false,
            focusNode: widget.focusNode,
            onSubmitted: (v) {
              if (widget.focusNode == widget.focusNext) {
                FocusScope.of(context).unfocus();
              } else {
                FocusScope.of(context).requestFocus(widget.focusNext);
              }
            },
            onChanged: ((val) {
              if (widget.onChange != null) {
                widget.onChange!(val);
              }

              checkValidation(isFocus);
            }),
            onEditingComplete: () {
              widget.onEdite;
            },
            style:
            CustomTextStyles.normal(fontSize: 15.0, fontColor: blackColor),
            decoration: InputDecoration(
              hintText: widget.hintText,
              suffix: widget.suffixIcon,
               suffixIcon: widget.suffix,
              suffixIconConstraints: BoxConstraints(minHeight: 24, minWidth: 24),
              prefixText: widget.prefixText ?? "",
              prefixStyle: CustomTextStyles.normal(
                  fontSize: 14.0, fontColor: Colors.white30),
              hintStyle: CustomTextStyles.semiBold(
                  fontSize: 14.0, fontColor: darkGrayColor),
              counterText: "",
              contentPadding: const EdgeInsets.only(
                  left: 1.0, right: 8.0, bottom: 1, top: 10),
              enabledBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              // UnderlineInputBorder(
              //     borderSide: new BorderSide(color: grayBorderColor)),
              // focusedBorder: UnderlineInputBorder(
              //     borderSide: new BorderSide(color: grayBorderColor)
              // ),
            ),
            controller: controller,
          ),
        ),
        (widget.isShowError == null ? true : false)
            ? (validateState == ValidateState.inValidate && error!.isNotEmpty)
            ? Padding(
          padding: const EdgeInsets.only(top: 2),
          child: Row(
            children: [
              Icon(Icons.error,size: 18,),

              const SizedBox(
                width: 5,
              ),
              Text(
                error!,
                style: CustomTextStyles.normal(
                    fontSize: 14.0, fontColor: redColor),
              )
            ],
          ),
        )
            : const SizedBox(
          height: 0,
        )
            : const SizedBox(
          height: 0,
        ),
      ],
    );
  }

  trimSpaceAndSimbl() {
    if (widget.validateTypes == ValidateTypes.password) {
      return FilteringTextInputFormatter.deny(RegExp(r"\s\b|\b\s"));
    }
    if (widget.validateTypes == ValidateTypes.email) {
      return FilteringTextInputFormatter.deny(RegExp(r"\s\b|\b\s"));
    }
    if (widget.validateTypes == ValidateTypes.mobile) {
      return FilteringTextInputFormatter.allow(RegExp("[0-9]"));
    }

    if (widget.validateTypes == ValidateTypes.name) {
      return FilteringTextInputFormatter.deny(RegExp(r'[/\\]'));
    }
    if (widget.validateTypes == ValidateTypes.userName) {
      return FilteringTextInputFormatter.deny(RegExp(r'[/\\]'));
    }
    if (widget.validateTypes == ValidateTypes.amount) {
      return FilteringTextInputFormatter.deny(RegExp(r'[/\\]'));
    }
    if (widget.validateTypes == ValidateTypes.cvv) {
      return FilteringTextInputFormatter.deny(RegExp(r'[/\\]'));
    }
    if (widget.validateTypes == ValidateTypes.pan) {
      return FilteringTextInputFormatter.deny(RegExp(r'[/\\]'));
    }
  }

  bool checkValidation([bool isFocus = false]) {
    String errorText = "";
    var isCheck = true;
    if (isOptional! && controller!.text.isEmpty) {
      isCheck = false;
    }
    if (isCheck) {
      switch (validateTypes!) {
        case ValidateTypes.amount:
          {
            errorText = Validations.validateAmount(
                controller!.text.trim(),
                widget.errorMsg == null
                    ? hintText.toString()
                    : widget.errorMsg.toString());
            break;
          }
        case ValidateTypes.name:
          {
            errorText = Validations.validateName(
                controller!.text.trim(),
                widget.errorMsg == null
                    ? hintText.toString()
                    : widget.errorMsg.toString());
            break;
          }
        case ValidateTypes.empty:
          {
            errorText = Validations.validateEmpty(
                controller!.text.trim(),
                widget.errorMsg == null
                    ? hintText.toString()
                    : widget.errorMsg.toString());
            break;
          }
        case ValidateTypes.email:
          {
            errorText = Validations.validateEmail(
                controller!.text.trim(),
                widget.errorMsg == null
                    ? hintText.toString()
                    : widget.errorMsg.toString());
            break;
          }
        case ValidateTypes.mobile:
          {
            errorText = Validations.validateMobile(
                controller!.text.trim(),
                widget.errorMsg == null
                    ? hintText.toString()
                    : widget.errorMsg.toString());
            break;
          }
        case ValidateTypes.userName:
          {
            errorText = Validations.validateUserName(
                controller!.text.trim(),
                widget.errorMsg == null
                    ? hintText.toString()
                    : widget.errorMsg.toString());
            break;
          }
        case ValidateTypes.password:
          {
            errorText = Validations.validatePassword(
                controller!.text.trim(),
                widget.errorMsg == null
                    ? hintText.toString()
                    : widget.errorMsg.toString());
            break;
          }
        case ValidateTypes.cvv:
          {
            errorText = Validations.validateCVV(
                controller!.text.trim(),
                widget.errorMsg == null
                    ? hintText.toString()
                    : widget.errorMsg.toString());
            break;
          }
        case ValidateTypes.pan:
        // TODO: Handle this case.
          break;
      }
    }

    if (errorText.isNotEmpty) {
      if (validateState != ValidateState.inValidate) {
        setState(() {
          validateState = ValidateState.inValidate;
        });
      }
      if (!isFocus) {
        setState(() {
          error = errorText;
        });
      } else if (error!.isNotEmpty) {
        setState(() {
          error = "";
        });
      }
      return true;
    } else {
      if (validateState != ValidateState.validate) {
        setState(() {
          error = "";
          validateState = ValidateState.validate;
        });
      }
      return false;
    }
  }

  void setError(String errorText) {
    if (validateState != ValidateState.inValidate) {
      setState(() {
        validateState = ValidateState.inValidate;
      });
    }
    setState(() {
      error = errorText;
    });
  }
}

class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    debugPrint(newValue.text);
    return TextEditingValue(
      text: newValue.text.toUpperCase().toString(),
      selection: newValue.selection,
    );
  }
}

enum ValidateTypes {
  email,
  mobile,
  password,
  name,
  empty,
  userName,
  cvv,
  pan,
  amount,
}

enum ValidateState { initial, validate, inValidate }
