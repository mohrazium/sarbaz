// GENERATED CODE - DO NOT MODIFY BY HAND

part of models;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnnualOvertimeModel _$AnnualOvertimeModelFromJson(Map<String, dynamic> json) =>
    AnnualOvertimeModel(
      id: json['id'] as int?,
      overtime: json['overtime'] as int,
      forgivenessOvertime: json['forgivenessOvertime'] as int?,
      overtimeBalance: json['overtimeBalance'] as int,
      description: json['description'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$AnnualOvertimeModelToJson(
        AnnualOvertimeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'overtime': instance.overtime,
      'forgivenessOvertime': instance.forgivenessOvertime,
      'overtimeBalance': instance.overtimeBalance,
      'description': instance.description,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

CaseNoModel _$CaseNoModelFromJson(Map<String, dynamic> json) => CaseNoModel(
      id: json['id'] as int?,
      caseName: json['caseName'] as String?,
      caseCode: json['caseCode'] as String,
      isFull: json['isFull'] as bool? ?? false,
      description: json['description'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$CaseNoModelToJson(CaseNoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'caseName': instance.caseName,
      'caseCode': instance.caseCode,
      'isFull': instance.isFull,
      'description': instance.description,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

ContactInfoModel _$ContactInfoModelFromJson(Map<String, dynamic> json) =>
    ContactInfoModel(
      id: json['id'] as int?,
      phoneNumber: json['phoneNumber'] as String?,
      mobileNumber: json['mobileNumber'] as String,
      province: json['province'] as String?,
      city: json['city'] as String?,
      address: json['address'] as String,
      postalCode: json['postalCode'] as String?,
      distance: json['distance'] as int,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$ContactInfoModelToJson(ContactInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phoneNumber': instance.phoneNumber,
      'mobileNumber': instance.mobileNumber,
      'province': instance.province,
      'city': instance.city,
      'address': instance.address,
      'postalCode': instance.postalCode,
      'distance': instance.distance,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

DailyAbsenceOvertimeModel _$DailyAbsenceOvertimeModelFromJson(
        Map<String, dynamic> json) =>
    DailyAbsenceOvertimeModel(
      id: json['id'] as int?,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      absenceDays: json['absenceDays'] as int,
      isVacuum: json['isVacuum'] as bool,
      overtime: json['overtime'] as int?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$DailyAbsenceOvertimeModelToJson(
        DailyAbsenceOvertimeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'absenceDays': instance.absenceDays,
      'isVacuum': instance.isVacuum,
      'overtime': instance.overtime,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

DailyVacationModel _$DailyVacationModelFromJson(Map<String, dynamic> json) =>
    DailyVacationModel(
      id: json['id'] as int?,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      amount: json['amount'] as int,
      vacationType: json['vacationType'] as String,
      description: json['description'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$DailyVacationModelToJson(DailyVacationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'amount': instance.amount,
      'vacationType': instance.vacationType,
      'description': instance.description,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

DisciplinaryOvertimeModel _$DisciplinaryOvertimeModelFromJson(
        Map<String, dynamic> json) =>
    DisciplinaryOvertimeModel(
      id: json['id'] as int?,
      calculatedOvertime: json['calculatedOvertime'] as int,
      violationsOvertimes: (json['violationsOvertimes'] as List<dynamic>?)
          ?.map((e) =>
              ViolationsOvertimeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      dailyAbsenceOvertimes: (json['dailyAbsenceOvertimes'] as List<dynamic>?)
          ?.map((e) =>
              DailyAbsenceOvertimeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$DisciplinaryOvertimeModelToJson(
        DisciplinaryOvertimeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'calculatedOvertime': instance.calculatedOvertime,
      'violationsOvertimes': instance.violationsOvertimes,
      'dailyAbsenceOvertimes': instance.dailyAbsenceOvertimes,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

EducationalInfoModel _$EducationalInfoModelFromJson(
        Map<String, dynamic> json) =>
    EducationalInfoModel(
      id: json['id'] as int?,
      levelOfEducation: json['levelOfEducation'] as String,
      fieldOfStudy: json['fieldOfStudy'] as String?,
      educationPlace: json['educationPlace'] as String?,
      grade: (json['grade'] as num?)?.toDouble(),
      skills: json['skills'] as String?,
      permissionToStudy: json['permissionToStudy'] as bool?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$EducationalInfoModelToJson(
        EducationalInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'levelOfEducation': instance.levelOfEducation,
      'fieldOfStudy': instance.fieldOfStudy,
      'educationPlace': instance.educationPlace,
      'grade': instance.grade,
      'skills': instance.skills,
      'permissionToStudy': instance.permissionToStudy,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

FurtherInfoModel _$FurtherInfoModelFromJson(Map<String, dynamic> json) =>
    FurtherInfoModel(
      id: json['id'] as int?,
      maritalState: json['maritalState'] as String,
      dateOfMarriage: json['dateOfMarriage'] == null
          ? null
          : DateTime.parse(json['dateOfMarriage'] as String),
      numberOfChildren: json['numberOfChildren'] as int?,
      religion: json['religion'] as String?,
      sect: json['sect'] as String?,
      height: json['height'] as int?,
      weight: (json['weight'] as num?)?.toDouble(),
      hairColor: json['hairColor'] as String?,
      eyesColor: json['eyesColor'] as String?,
      bloodType: json['bloodType'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$FurtherInfoModelToJson(FurtherInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'maritalState': instance.maritalState,
      'dateOfMarriage': instance.dateOfMarriage?.toIso8601String(),
      'numberOfChildren': instance.numberOfChildren,
      'religion': instance.religion,
      'sect': instance.sect,
      'height': instance.height,
      'weight': instance.weight,
      'hairColor': instance.hairColor,
      'eyesColor': instance.eyesColor,
      'bloodType': instance.bloodType,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

HealthStatusModel _$HealthStatusModelFromJson(Map<String, dynamic> json) =>
    HealthStatusModel(
      id: json['id'] as int?,
      isHealthy: json['isHealthy'] as bool,
      accordingTo: json['accordingTo'] as String,
      isBGroup: json['isBGroup'] as bool,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$HealthStatusModelToJson(HealthStatusModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isHealthy': instance.isHealthy,
      'accordingTo': instance.accordingTo,
      'isBGroup': instance.isBGroup,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

HourlyVacationModel _$HourlyVacationModelFromJson(Map<String, dynamic> json) =>
    HourlyVacationModel(
      id: json['id'] as int?,
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
      totalTime: json['totalTime'] as int?,
      overtimePerMonth: json['overtimePerMonth'] as int?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$HourlyVacationModelToJson(
        HourlyVacationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
      'totalTime': instance.totalTime,
      'overtimePerMonth': instance.overtimePerMonth,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

OperationalServiceDeficitRecordModel
    _$OperationalServiceDeficitRecordModelFromJson(Map<String, dynamic> json) =>
        OperationalServiceDeficitRecordModel(
          id: json['id'] as int?,
          startDate: DateTime.parse(json['startDate'] as String),
          endDate: DateTime.parse(json['endDate'] as String),
          durationOfPresence: json['durationOfPresence'] as int,
          deficitAmount: json['deficitAmount'] as int?,
          createdAt: json['createdAt'] == null
              ? null
              : DateTime.parse(json['createdAt'] as String),
          updatedAt: json['updatedAt'] == null
              ? null
              : DateTime.parse(json['updatedAt'] as String),
        );

Map<String, dynamic> _$OperationalServiceDeficitRecordModelToJson(
        OperationalServiceDeficitRecordModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'durationOfPresence': instance.durationOfPresence,
      'deficitAmount': instance.deficitAmount,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

OvertimeModel _$OvertimeModelFromJson(Map<String, dynamic> json) =>
    OvertimeModel(
      id: json['id'] as int?,
      disciplinaryOvertime: json['disciplinaryOvertime'] == null
          ? null
          : DisciplinaryOvertimeModel.fromJson(
              json['disciplinaryOvertime'] as Map<String, dynamic>),
      annualOvertime: json['annualOvertime'] == null
          ? null
          : AnnualOvertimeModel.fromJson(
              json['annualOvertime'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$OvertimeModelToJson(OvertimeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'disciplinaryOvertime': instance.disciplinaryOvertime,
      'annualOvertime': instance.annualOvertime,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

PersonalInfoModel _$PersonalInfoModelFromJson(Map<String, dynamic> json) =>
    PersonalInfoModel(
      id: json['id'] as int?,
      nationalCode: json['nationalCode'] as String,
      nationalIdentity: json['nationalIdentity'] as String?,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      fatherName: json['fatherName'] as String?,
      dateOfBirth: json['dateOfBirth'] == null
          ? null
          : DateTime.parse(json['dateOfBirth'] as String),
      placeOfBirth: json['placeOfBirth'] as String?,
      placeOfIssue: json['placeOfIssue'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$PersonalInfoModelToJson(PersonalInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nationalCode': instance.nationalCode,
      'nationalIdentity': instance.nationalIdentity,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'fatherName': instance.fatherName,
      'dateOfBirth': instance.dateOfBirth?.toIso8601String(),
      'placeOfBirth': instance.placeOfBirth,
      'placeOfIssue': instance.placeOfIssue,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

RankModel _$RankModelFromJson(Map<String, dynamic> json) => RankModel(
      id: json['id'] as int?,
      gradeCode: json['gradeCode'] as int,
      name: json['name'] as String,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$RankModelToJson(RankModel instance) => <String, dynamic>{
      'id': instance.id,
      'gradeCode': instance.gradeCode,
      'name': instance.name,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

RelativeContactsInfoModel _$RelativeContactsInfoModelFromJson(
        Map<String, dynamic> json) =>
    RelativeContactsInfoModel(
      id: json['id'] as int?,
      nameAndFamily: json['nameAndFamily'] as String,
      phoneNumber: json['phoneNumber'] as String,
      workAddress: json['workAddress'] as String?,
      homeAddress: json['homeAddress'] as String?,
      description: json['description'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$RelativeContactsInfoModelToJson(
        RelativeContactsInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nameAndFamily': instance.nameAndFamily,
      'phoneNumber': instance.phoneNumber,
      'workAddress': instance.workAddress,
      'homeAddress': instance.homeAddress,
      'description': instance.description,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

SectionModel _$SectionModelFromJson(Map<String, dynamic> json) => SectionModel(
      id: json['id'] as int?,
      locationName: json['locationName'] as String,
      sectionCode: json['sectionCode'] as String?,
      sectionName: json['sectionName'] as String?,
      sectionNameAbbr: json['sectionNameAbbr'] as String?,
      soldiers: (json['soldiers'] as List<dynamic>?)
          ?.map((e) => SoldierModel.fromJson(e))
          .toList(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$SectionModelToJson(SectionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'locationName': instance.locationName,
      'sectionCode': instance.sectionCode,
      'sectionName': instance.sectionName,
      'sectionNameAbbr': instance.sectionNameAbbr,
      'soldiers': instance.soldiers,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

ServiceDeficitModel _$ServiceDeficitModelFromJson(Map<String, dynamic> json) =>
    ServiceDeficitModel(
      id: json['id'] as int?,
      calculatedDeficitAmount: json['calculatedDeficitAmount'] as int?,
      records: (json['records'] as List<dynamic>?)
          ?.map((e) =>
              ServiceDeficitRecordModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      operationalRecords: (json['operationalRecords'] as List<dynamic>?)
          ?.map((e) => OperationalServiceDeficitRecordModel.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$ServiceDeficitModelToJson(
        ServiceDeficitModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'calculatedDeficitAmount': instance.calculatedDeficitAmount,
      'records': instance.records,
      'operationalRecords': instance.operationalRecords,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

ServiceDeficitRecordModel _$ServiceDeficitRecordModelFromJson(
        Map<String, dynamic> json) =>
    ServiceDeficitRecordModel(
      id: json['id'] as int?,
      type: json['type'] as String?,
      amount: json['amount'] as int,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$ServiceDeficitRecordModelToJson(
        ServiceDeficitRecordModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'amount': instance.amount,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

SoldierCaseModel _$SoldierCaseModelFromJson(Map<String, dynamic> json) =>
    SoldierCaseModel(
      id: json['id'] as int?,
      membershipType: json['membershipType'] as String,
      dispatchDate: DateTime.parse(json['dispatchDate'] as String),
      dispatcher: json['dispatcher'] as String,
      serviceCategory: json['serviceCategory'] as String,
      startDateOfService: DateTime.parse(json['startDateOfService'] as String),
      endDateOfService: DateTime.parse(json['endDateOfService'] as String),
      legalPeriodOfService: json['legalPeriodOfService'] as int,
      introductionDate: DateTime.parse(json['introductionDate'] as String),
      lastPeriodOfService: json['lastPeriodOfService'] as int?,
      amountOfService: json['amountOfService'] as int?,
      description: json['description'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$SoldierCaseModelToJson(SoldierCaseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'membershipType': instance.membershipType,
      'dispatchDate': instance.dispatchDate.toIso8601String(),
      'dispatcher': instance.dispatcher,
      'serviceCategory': instance.serviceCategory,
      'startDateOfService': instance.startDateOfService.toIso8601String(),
      'endDateOfService': instance.endDateOfService.toIso8601String(),
      'legalPeriodOfService': instance.legalPeriodOfService,
      'introductionDate': instance.introductionDate.toIso8601String(),
      'lastPeriodOfService': instance.lastPeriodOfService,
      'amountOfService': instance.amountOfService,
      'description': instance.description,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

SoldierModel _$SoldierModelFromJson(Map<String, dynamic> json) => SoldierModel(
      id: json['id'] as int?,
      imagePath: json['imagePath'] as String?,
      personnelCode: json['personnelCode'] as String?,
      latestStatus: json['latestStatus'] as String?,
      caseStatus: json['caseStatus'] as String,
      divisionStatus: json['divisionStatus'] as bool,
      isArchived: json['isArchived'] as bool,
      archiveCaseNo: json['archiveCaseNo'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$SoldierModelToJson(SoldierModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imagePath': instance.imagePath,
      'personnelCode': instance.personnelCode,
      'latestStatus': instance.latestStatus,
      'caseStatus': instance.caseStatus,
      'divisionStatus': instance.divisionStatus,
      'isArchived': instance.isArchived,
      'archiveCaseNo': instance.archiveCaseNo,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

TrainingStatusModel _$TrainingStatusModelFromJson(Map<String, dynamic> json) =>
    TrainingStatusModel(
      id: json['id'] as int?,
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      placeName: json['placeName'] as String,
      period: json['period'] as int?,
      status: json['status'] as String?,
      type: json['type'] as String?,
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      description: json['description'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$TrainingStatusModelToJson(
        TrainingStatusModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startDate': instance.startDate?.toIso8601String(),
      'placeName': instance.placeName,
      'period': instance.period,
      'status': instance.status,
      'type': instance.type,
      'endDate': instance.endDate?.toIso8601String(),
      'description': instance.description,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

UnitPropertiesModel _$UnitPropertiesModelFromJson(Map<String, dynamic> json) =>
    UnitPropertiesModel(
      id: json['id'] as int?,
      unitName: json['unitName'] as String,
      unitCode: json['unitCode'] as String?,
      unitCity: json['unitCity'] as String?,
      unitType: json['unitType'] as String?,
      sections: (json['sections'] as List<dynamic>)
          .map((e) => SectionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$UnitPropertiesModelToJson(
        UnitPropertiesModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'unitName': instance.unitName,
      'unitCode': instance.unitCode,
      'unitCity': instance.unitCity,
      'unitType': instance.unitType,
      'sections': instance.sections,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

VacationsModel _$VacationsModelFromJson(Map<String, dynamic> json) =>
    VacationsModel(
      id: json['id'] as int?,
      eligibleTotal: (json['eligibleTotal'] as num?)?.toDouble(),
      eligibleBalance: (json['eligibleBalance'] as num).toDouble(),
      eligibleUsed: (json['eligibleUsed'] as num).toDouble(),
      eligibleValuePerMonth:
          (json['eligibleValuePerMonth'] as num?)?.toDouble(),
      sickTotal: (json['sickTotal'] as num?)?.toDouble(),
      sickBalance: (json['sickBalance'] as num).toDouble(),
      sickUsed: (json['sickUsed'] as num).toDouble(),
      sickValuePerMonth: (json['sickValuePerMonth'] as num?)?.toDouble(),
      incentiveTotal: (json['incentiveTotal'] as num?)?.toDouble(),
      incentiveBalance: (json['incentiveBalance'] as num?)?.toDouble(),
      incentiveUsed: (json['incentiveUsed'] as num?)?.toDouble(),
      incentiveValueLimit: (json['incentiveValueLimit'] as num?)?.toDouble(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$VacationsModelToJson(VacationsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'eligibleTotal': instance.eligibleTotal,
      'eligibleBalance': instance.eligibleBalance,
      'eligibleUsed': instance.eligibleUsed,
      'eligibleValuePerMonth': instance.eligibleValuePerMonth,
      'sickTotal': instance.sickTotal,
      'sickBalance': instance.sickBalance,
      'sickUsed': instance.sickUsed,
      'sickValuePerMonth': instance.sickValuePerMonth,
      'incentiveTotal': instance.incentiveTotal,
      'incentiveBalance': instance.incentiveBalance,
      'incentiveUsed': instance.incentiveUsed,
      'incentiveValueLimit': instance.incentiveValueLimit,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

ViolationsOvertimeModel _$ViolationsOvertimeModelFromJson(
        Map<String, dynamic> json) =>
    ViolationsOvertimeModel(
      id: json['id'] as int?,
      violationType: json['violationType'] as String,
      overtime: json['overtime'] as int,
      forgivenessOvertime: json['forgivenessOvertime'] as int,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$ViolationsOvertimeModelToJson(
        ViolationsOvertimeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'violationType': instance.violationType,
      'overtime': instance.overtime,
      'forgivenessOvertime': instance.forgivenessOvertime,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
