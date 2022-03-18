// ignore_for_file: body_might_complete_normally_nullable

part of mixins;

/// use this mixin for all form field
mixin ValidatorMixin implements DateConverterMixin {
  String? validateNationalIdentity(
      {required String? value, required String errorMessage}) {
    if (value!.isEmpty) {
      return "این فیلد الزامی است*";
    } else if (!persianTools.verifyIranianNationalId(value)) {
      return errorMessage;
    }
  }

  String? validateIsNotEmpty(
      {required String? value, required String errorMessage}) {
    if (value!.isEmpty) {
      return errorMessage;
    }
  }

  String? validateBeforeToday(
      {required String? value, required String errorMessage}) {
    try {
      DateTime? date = toDateTimeFromString(value);
      if (date != null && date.isAfter(DateTime.now())) {
        return errorMessage;
      }
    } catch (ignore) {
      return null;
    }
  }

  String? validateMobileNumber(
      {required String value, required String errorMessage}) {
    if (value.isEmpty) {
      return "این فیلد نمی تواند خالی باشد*";
    } else {
      if (!persianTools.phoneNumberValidator(value)) {
        return errorMessage;
      }
    }
  }
}
