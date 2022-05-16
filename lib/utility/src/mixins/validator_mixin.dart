// ignore_for_file: body_might_complete_normally_nullable

part of mixins;

/// use this mixin for all form field
mixin ValidatorMixin {
  String? nationalIdentityValidator({required String? value, required String errorMessage}) {
    if (value!.isEmpty) {
      return Strings.fieldCantBeEmpty;
    } else if (!persian_tools.verifyIranianNationalId(value)) {
      return errorMessage;
    }
  }

  String? requiredFieldValidator({
    required String? value,
  }) {
    if (value!.isEmpty) {
      return Strings.fieldCantBeEmpty;
    }
    return null;
  }

  String? beforeTodayValidator({required String? value, required String errorMessage}) {
    try {
      DateTime date = DateConverter.toDateTime(shamsiDate: value);
      if (!date.isBefore(DateTime.now())) {
        return errorMessage;
      }
    } catch (ignore) {
      return null;
    }
  }

  String? mobileNumberValidator({required String? value, required String errorMessage}) {
    if (value!.isEmpty) {
      return Strings.fieldCantBeEmpty;
    } else {
      if (!persian_tools.phoneNumberValidator(value)) {
        return errorMessage;
      }
    }
  }

  String? dateValidator({bool isRequired = false, required String? value, String? errorMessage}) {
    final requiredFieldError = isRequired ? requiredFieldValidator(value: value) : null;
    if (requiredFieldError == null) {
      RegExp dateRegExp = RegExp(
        r"[0-9]{4}/[0-9]{2}/[0-9]{2}",
        caseSensitive: false,
        multiLine: false,
      );
      if (dateRegExp.hasMatch(value!)) {
        var splitDate = (value.split("/"));
        if (int.parse(splitDate[0]) > 1450) {
          return Strings.yearNotValid;
        } else if (int.parse(splitDate[1]) > 12) {
          return Strings.monthNotValid;
        } else if (int.parse(splitDate[2]) > 31) {
          return Strings.dayNotValid;
        }
      }
      return requiredFieldError;
    }
    return requiredFieldError;
  }

  String? endDateAfterStartDateValidator(
      {bool isRequired = false, required String? startDate, required String? endDate}) {
    final validDateError = dateValidator(isRequired: isRequired, value: endDate);

    if (validDateError == null) {
      try {
        DateTime start = DateConverter.toDateTime(shamsiDate: startDate);
        DateTime end = DateConverter.toDateTime(shamsiDate: endDate);
        if (end.isAfter(start) || end.isAtSameMomentAs(start)) {
          return null;
        } else {
          return "تاریخ نامعتبر است";
        }
      } catch (e) {
        //ignore
      }
    } else {
      return validDateError;
    }
  }
}
