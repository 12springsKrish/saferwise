
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saferwise_mobile/core/services/textStyles.dart';
import '../custom_colors.dart';
import '../resources.dart';

class CustomDropDown {
  static dropdown({items,initialValue,selectedValue, question}) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: grayBg))
      ),
      child: ButtonTheme(
        alignedDropdown: true,
        child: DropdownButton<String>(
          dropdownColor: grayBg,
          isExpanded: true,
          key: UniqueKey(),
          // itemHeight: 30.0,
          // isExpanded: true,

          onChanged: (selectedItem) {

          },
          // onChanged: widget.onChanged,
          items: items
              .map<DropdownMenuItem<String>>(
                  (dropDownItem) {
                return DropdownMenuItem<String>(
                  key: UniqueKey(),
                  value: initialValue,
                  child: Text(
                    dropDownItem,
                    maxLines: 2,
                    // overflow: TextOverflow.clip,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.semiBold(fontSize: 14.0, fontColor: grayColor)
                  ),
                );
              }).toList(),
          value: selectedValue,
          hint: question,
        ),
      ),
    );
  }
}
