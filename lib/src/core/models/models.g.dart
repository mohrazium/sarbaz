// GENERATED CODE - DO NOT MODIFY BY HAND

part of models;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactInfoModel _$ContactInfoModelFromJson(Map<String, dynamic> json) =>
    ContactInfoModel(
      id: json['id'] as int?,
      phoneNumber: json['phoneNumber'] as String?,
      mobileNumber: json['mobileNumber'] as String,
      province: json['province'] as String?,
      city: json['city'] as String?,
      address: json['address'] as String,
      distance: json['distance'] as int,
    );

Map<String, dynamic> _$ContactInfoModelToJson(ContactInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phoneNumber': instance.phoneNumber,
      'mobileNumber': instance.mobileNumber,
      'province': instance.province,
      'city': instance.city,
      'address': instance.address,
      'distance': instance.distance,
    };

DailyVaccationModel _$DailyVaccationModelFromJson(Map<String, dynamic> json) =>
    DailyVaccationModel(
      id: json['id'] as int?,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      amount: json['amount'] as int,
      vacctionType: json['vacctionType'] as String,
    );

Map<String, dynamic> _$DailyVaccationModelToJson(
        DailyVaccationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'amount': instance.amount,
      'vacctionType': instance.vacctionType,
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
    };

FurtherInfoModel _$FurtherInfoModelFromJson(Map<String, dynamic> json) =>
    FurtherInfoModel(
      json['id'] as int?,
      json['maritalState'] as String,
      json['dateOfMarriage'] == null
          ? null
          : DateTime.parse(json['dateOfMarriage'] as String),
      json['numberOfChilds'] as int?,
      json['religion'] as String?,
      json['sect'] as String?,
      json['height'] as int?,
      (json['weight'] as num?)?.toDouble(),
      json['hairColor'] as String?,
      json['eyesColor'] as String?,
      json['bloodType'] as String?,
    );

Map<String, dynamic> _$FurtherInfoModelToJson(FurtherInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'maritalState': instance.maritalState,
      'dateOfMarriage': instance.dateOfMarriage?.toIso8601String(),
      'numberOfChilds': instance.numberOfChilds,
      'religion': instance.religion,
      'sect': instance.sect,
      'height': instance.height,
      'weight': instance.weight,
      'hairColor': instance.hairColor,
      'eyesColor': instance.eyesColor,
      'bloodType': instance.bloodType,
    };

HealthStatusModel _$HealthStatusModelFromJson(Map<String, dynamic> json) =>
    HealthStatusModel(
      id: json['id'] as int?,
      isHealthy: json['isHealthy'] as bool,
      accordingTo: json['accordingTo'] as String,
      isBGroup: json['isBGroup'] as bool,
    );

Map<String, dynamic> _$HealthStatusModelToJson(HealthStatusModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isHealthy': instance.isHealthy,
      'accordingTo': instance.accordingTo,
      'isBGroup': instance.isBGroup,
    };

HourlyVaccationModel _$HourlyVaccationModelFromJson(
        Map<String, dynamic> json) =>
    HourlyVaccationModel(
      id: json['id'] as int?,
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
      totalTime: json['totalTime'] as int?,
      overtimePerMonth: json['overtimePerMonth'] as int?,
    );

Map<String, dynamic> _$HourlyVaccationModelToJson(
        HourlyVaccationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
      'totalTime': instance.totalTime,
      'overtimePerMonth': instance.overtimePerMonth,
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
      furtherInfo: json['furtherInfo'] == null
          ? null
          : FurtherInfoModel.fromJson(
              json['furtherInfo'] as Map<String, dynamic>),
      contactInfo: json['contactInfo'] == null
          ? null
          : ContactInfoModel.fromJson(
              json['contactInfo'] as Map<String, dynamic>),
      educationalInfo: json['educationalInfo'] == null
          ? null
          : EducationalInfoModel.fromJson(
              json['educationalInfo'] as Map<String, dynamic>),
      soldier: json['soldier'] == null
          ? null
          : SoldierModel.fromJson(json['soldier'] as Map<String, dynamic>),
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
      'furtherInfo': instance.furtherInfo,
      'contactInfo': instance.contactInfo,
      'educationalInfo': instance.educationalInfo,
      'soldier': instance.soldier,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

RankModel _$RankModelFromJson(Map<String, dynamic> json) => RankModel(
      id: json['id'] as int?,
      gradeCode: json['gradeCode'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$RankModelToJson(RankModel instance) => <String, dynamic>{
      'id': instance.id,
      'gradeCode': instance.gradeCode,
      'name': instance.name,
    };

SectionModel _$SectionModelFromJson(Map<String, dynamic> json) => SectionModel(
      id: json['id'] as int?,
      locationName: json['locationName'] as String,
      sectionCode: json['sectionCode'] as String?,
      sectionName: json['sectionName'] as String?,
      sectionNameAbbr: json['sectionNameAbbr'] as String?,
      soldier: json['soldier'] == null
          ? null
          : SoldierModel.fromJson(json['soldier'] as Map<String, dynamic>),
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
      'soldier': instance.soldier,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

ServiceDeficitModel _$ServiceDeficitModelFromJson(Map<String, dynamic> json) =>
    ServiceDeficitModel(
      id: json['id'] as int?,
      claculatedDeficitAmount: json['claculatedDeficitAmount'] as int?,
      records: (json['records'] as List<dynamic>?)
          ?.map((e) =>
              ServiceDeficitRecordModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      operationalRecords: (json['operationalRecords'] as List<dynamic>?)
          ?.map((e) => OperationalServiceDeficitRecordModel.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ServiceDeficitModelToJson(
        ServiceDeficitModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'claculatedDeficitAmount': instance.claculatedDeficitAmount,
      'records': instance.records,
      'operationalRecords': instance.operationalRecords,
    };

SoldierCaseModel _$SoldierCaseModelFromJson(Map<String, dynamic> json) =>
    SoldierCaseModel(
      id: json['id'] as int?,
      fileNo: json['fileNo'] as String?,
      archiveFileNo: json['archiveFileNo'] as String?,
      status: json['status'] as String?,
      startDateOfService: DateTime.parse(json['startDateOfService'] as String),
      endDateOfService: DateTime.parse(json['endDateOfService'] as String),
      legalPeriodOfService: json['legalPeriodOfService'] as int,
      introductionDate: DateTime.parse(json['introductionDate'] as String),
      lastPeriodOfService: json['lastPeriodOfService'] as int?,
      amountOfService: json['amountOfService'] as int?,
      overtime: json['overtime'] == null
          ? null
          : OvertimeModel.fromJson(json['overtime'] as Map<String, dynamic>),
      vaccations: json['vaccations'] == null
          ? null
          : VaccationsModel.fromJson(
              json['vaccations'] as Map<String, dynamic>),
      serviceDeficit: json['serviceDeficit'] == null
          ? null
          : ServiceDeficitModel.fromJson(
              json['serviceDeficit'] as Map<String, dynamic>),
      rank: json['rank'] == null
          ? null
          : RankModel.fromJson(json['rank'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SoldierCaseModelToJson(SoldierCaseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fileNo': instance.fileNo,
      'archiveFileNo': instance.archiveFileNo,
      'status': instance.status,
      'startDateOfService': instance.startDateOfService.toIso8601String(),
      'endDateOfService': instance.endDateOfService.toIso8601String(),
      'legalPeriodOfService': instance.legalPeriodOfService,
      'introductionDate': instance.introductionDate.toIso8601String(),
      'lastPeriodOfService': instance.lastPeriodOfService,
      'amountOfService': instance.amountOfService,
      'overtime': instance.overtime,
      'vaccations': instance.vaccations,
      'serviceDeficit': instance.serviceDeficit,
      'rank': instance.rank,
    };

SoldierModel _$SoldierModelFromJson(Map<String, dynamic> json) => SoldierModel(
      id: json['id'] as int?,
      imagePath: json['imagePath'] as String?,
      personnelCode: json['personnelCode'] as String?,
      latestStatus: json['latestStatus'] as String?,
      divisionStatus: json['divisionStatus'] as bool?,
      section: json['section'] == null
          ? null
          : SectionModel.fromJson(json['section'] as Map<String, dynamic>),
      trainigStatus: json['trainigStatus'] == null
          ? null
          : TrainigStatusModel.fromJson(
              json['trainigStatus'] as Map<String, dynamic>),
      healthStatus: json['healthStatus'] == null
          ? null
          : HealthStatusModel.fromJson(
              json['healthStatus'] as Map<String, dynamic>),
      soldierCase: json['soldierCase'] == null
          ? null
          : SoldierCaseModel.fromJson(
              json['soldierCase'] as Map<String, dynamic>),
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
      'divisionStatus': instance.divisionStatus,
      'section': instance.section,
      'trainigStatus': instance.trainigStatus,
      'healthStatus': instance.healthStatus,
      'soldierCase': instance.soldierCase,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

TrainigStatusModel _$TrainigStatusModelFromJson(Map<String, dynamic> json) =>
    TrainigStatusModel(
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
    );

Map<String, dynamic> _$TrainigStatusModelToJson(TrainigStatusModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startDate': instance.startDate?.toIso8601String(),
      'placeName': instance.placeName,
      'period': instance.period,
      'status': instance.status,
      'type': instance.type,
      'endDate': instance.endDate?.toIso8601String(),
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

VaccationsModel _$VaccationsModelFromJson(Map<String, dynamic> json) =>
    VaccationsModel(
      id: json['id'] as int?,
      amountOfEligibleVaccations: json['amountOfEligibleVaccations'] as int?,
      amountOfSickVaccations: json['amountOfSickVaccations'] as int?,
      amountOfIncentiveVaccations: json['amountOfIncentiveVaccations'] as int?,
      eligibleVaccationsUsed: json['eligibleVaccationsUsed'] as int?,
      sickVaccationsUsed: json['sickVaccationsUsed'] as int?,
      incentiveVaccationsUsed: json['incentiveVaccationsUsed'] as int?,
      dailyVaccations: (json['dailyVaccations'] as List<dynamic>?)
          ?.map((e) => DailyVaccationModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      hourlyVaccations: (json['hourlyVaccations'] as List<dynamic>?)
          ?.map((e) => HourlyVaccationModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$VaccationsModelToJson(VaccationsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amountOfEligibleVaccations': instance.amountOfEligibleVaccations,
      'amountOfSickVaccations': instance.amountOfSickVaccations,
      'amountOfIncentiveVaccations': instance.amountOfIncentiveVaccations,
      'eligibleVaccationsUsed': instance.eligibleVaccationsUsed,
      'sickVaccationsUsed': instance.sickVaccationsUsed,
      'incentiveVaccationsUsed': instance.incentiveVaccationsUsed,
      'dailyVaccations': instance.dailyVaccations,
      'hourlyVaccations': instance.hourlyVaccations,
    };

OvertimeModel _$OvertimeModelFromJson(Map<String, dynamic> json) =>
    OvertimeModel(
      id: json['id'] as int?,
      disciplinalOvertime: json['disciplinalOvertime'] == null
          ? null
          : DisciplinalOvertimeModel.fromJson(
              json['disciplinalOvertime'] as Map<String, dynamic>),
      annualOvertime: json['annualOvertime'] == null
          ? null
          : AnnualOvertimeModel.fromJson(
              json['annualOvertime'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OvertimeModelToJson(OvertimeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'disciplinalOvertime': instance.disciplinalOvertime,
      'annualOvertime': instance.annualOvertime,
    };

DisciplinalOvertimeModel _$DisciplinalOvertimeModelFromJson(
        Map<String, dynamic> json) =>
    DisciplinalOvertimeModel(
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
    );

Map<String, dynamic> _$DisciplinalOvertimeModelToJson(
        DisciplinalOvertimeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'calculatedOvertime': instance.calculatedOvertime,
      'violationsOvertimes': instance.violationsOvertimes,
      'dailyAbsenceOvertimes': instance.dailyAbsenceOvertimes,
    };

AnnualOvertimeModel _$AnnualOvertimeModelFromJson(Map<String, dynamic> json) =>
    AnnualOvertimeModel(
      id: json['id'] as int?,
      overtime: json['overtime'] as int,
      forgivenessOvertime: json['forgivenessOvertime'] as int?,
      overtimeBalance: json['overtimeBalance'] as int,
    );

Map<String, dynamic> _$AnnualOvertimeModelToJson(
        AnnualOvertimeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'overtime': instance.overtime,
      'forgivenessOvertime': instance.forgivenessOvertime,
      'overtimeBalance': instance.overtimeBalance,
    };

ViolationsOvertimeModel _$ViolationsOvertimeModelFromJson(
        Map<String, dynamic> json) =>
    ViolationsOvertimeModel(
      id: json['id'] as int?,
      violationType: json['violationType'] as String,
      overtime: json['overtime'] as int,
      forgivenessOvertime: json['forgivenessOvertime'] as int,
    );

Map<String, dynamic> _$ViolationsOvertimeModelToJson(
        ViolationsOvertimeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'violationType': instance.violationType,
      'overtime': instance.overtime,
      'forgivenessOvertime': instance.forgivenessOvertime,
    };

DailyAbsenceOvertimeModel _$DailyAbsenceOvertimeModelFromJson(
        Map<String, dynamic> json) =>
    DailyAbsenceOvertimeModel(
      id: json['id'] as int?,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      absenceDays: json['absenceDays'] as int,
      overtime: json['overtime'] as int?,
    );

Map<String, dynamic> _$DailyAbsenceOvertimeModelToJson(
        DailyAbsenceOvertimeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'absenceDays': instance.absenceDays,
      'overtime': instance.overtime,
    };

ServiceDeficitRecordModel _$ServiceDeficitRecordModelFromJson(
        Map<String, dynamic> json) =>
    ServiceDeficitRecordModel(
      id: json['id'] as int?,
      type: json['type'] as String?,
      amount: json['amount'] as int,
    );

Map<String, dynamic> _$ServiceDeficitRecordModelToJson(
        ServiceDeficitRecordModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'amount': instance.amount,
    };

OperationalServiceDeficitRecordModel
    _$OperationalServiceDeficitRecordModelFromJson(Map<String, dynamic> json) =>
        OperationalServiceDeficitRecordModel(
          id: json['id'] as int?,
          startDate: DateTime.parse(json['startDate'] as String),
          endDate: DateTime.parse(json['endDate'] as String),
          durationOfPresence: json['durationOfPresence'] as int,
          deficitAmount: json['deficitAmount'] as int?,
        );

Map<String, dynamic> _$OperationalServiceDeficitRecordModelToJson(
        OperationalServiceDeficitRecordModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'durationOfPresence': instance.durationOfPresence,
      'deficitAmount': instance.deficitAmount,
    };
