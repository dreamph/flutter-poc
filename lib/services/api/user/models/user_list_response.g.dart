// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserListResponse _$UserListResponseFromJson(Map<String, dynamic> json) {
  return UserListResponse(
    data: (json['data'] as List)
        ?.map(
            (e) => e == null ? null : Data.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    page: json['page'] == null
        ? null
        : Page.fromJson(json['page'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$UserListResponseToJson(UserListResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'page': instance.page,
    };

Page _$PageFromJson(Map<String, dynamic> json) {
  return Page(
    pageNumber: json['pageNumber'] as int,
    pageSize: json['pageSize'] as int,
    total: json['total'] as int,
    totalPages: json['totalPages'] as int,
  );
}

Map<String, dynamic> _$PageToJson(Page instance) => <String, dynamic>{
      'pageNumber': instance.pageNumber,
      'pageSize': instance.pageSize,
      'total': instance.total,
      'totalPages': instance.totalPages,
    };

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    info: json['info'] == null
        ? null
        : Info.fromJson(json['info'] as Map<String, dynamic>),
    state: json['state'] == null
        ? null
        : State.fromJson(json['state'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'info': instance.info,
      'state': instance.state,
    };

State _$StateFromJson(Map<String, dynamic> json) {
  return State(
    bankAccountName: json['bankAccountName'] as String,
    bankAccountNumber: json['bankAccountNumber'] as String,
    bankCode: json['bankCode'] as String,
    bankName: json['bankName'] as String,
    birthDate:
        const CustomDateTimeConverter().fromJson(json['birthDate'] as int),
    birthDay: json['birthDay'] as String,
    birthMonth: json['birthMonth'] as String,
    birthYear: json['birthYear'] as String,
    businessType: json['businessType'] as String,
    changeBy: json['changeBy'] as String,
    changeDate:
        const CustomDateTimeConverter().fromJson(json['changeDate'] as int),
    company: json['company'] as String,
    corporateBusinessType: json['corporateBusinessType'] as String,
    corporateEmail: json['corporateEmail'] as String,
    corporateEmailDisplay: json['corporateEmailDisplay'] as bool,
    corporateNameEn: json['corporateNameEn'] as String,
    corporateNameTh: json['corporateNameTh'] as String,
    corporateNumber: json['corporateNumber'] as String,
    corporatePurpose: json['corporatePurpose'] as String,
    corporateRegistrationDate: const CustomDateTimeConverter()
        .fromJson(json['corporateRegistrationDate'] as int),
    corporateSymbol: json['corporateSymbol'] as String,
    corporateTelephone: json['corporateTelephone'] as String,
    corporateTelephoneDisplay: json['corporateTelephoneDisplay'] as bool,
    corporateType: json['corporateType'] as String,
    corporateUrlFacebook: json['corporateUrlFacebook'] as String,
    corporateUrlFacebookDisplay: json['corporateUrlFacebookDisplay'] as bool,
    corporateUrlInstagram: json['corporateUrlInstagram'] as String,
    corporateUrlInstagramDisplay: json['corporateUrlInstagramDisplay'] as bool,
    corporateUrlTwitter: json['corporateUrlTwitter'] as String,
    corporateUrlTwitterDisplay: json['corporateUrlTwitterDisplay'] as bool,
    corporateUrlWebsite: json['corporateUrlWebsite'] as String,
    corporateUrlWebsiteDisplay: json['corporateUrlWebsiteDisplay'] as bool,
    createBy: json['createBy'] as String,
    createDate:
        const CustomDateTimeConverter().fromJson(json['createDate'] as int),
    dipchipDate:
        const CustomDateTimeConverter().fromJson(json['dipchipDate'] as int),
    dipchipStatus: json['dipchipStatus'] as bool,
    displayName: json['displayName'] as String,
    documentSubmitChannel: json['documentSubmitChannel'] as String,
    email: json['email'] as String,
    emailVerificationStatus: json['emailVerificationStatus'] as bool,
    firstNameEn: json['firstNameEn'] as String,
    firstNameTh: json['firstNameTh'] as String,
    gender: json['gender'] as String,
    id: json['id'] as String,
    idCardNo: json['idCardNo'] as String,
    income: json['income'] as String,
    incomeMax: json['incomeMax'] as int,
    incomeMin: json['incomeMin'] as int,
    investorScore: json['investorScore'] as int,
    kycCorporateStatus: json['kycCorporateStatus'] as bool,
    kycStatus: json['kycStatus'] as bool,
    kycUpdatedDate:
        const CustomDateTimeConverter().fromJson(json['kycUpdatedDate'] as int),
    lastNameEn: json['lastNameEn'] as String,
    lastNameTh: json['lastNameTh'] as String,
    loginLatest:
        const CustomDateTimeConverter().fromJson(json['loginLatest'] as int),
    loginName: json['loginName'] as String,
    loginPassword: json['loginPassword'] as String,
    marriageStatus: json['marriageStatus'] as String,
    nationality: json['nationality'] as String,
    occupation: json['occupation'] as String,
    occupationType: json['occupationType'] as String,
    otpStatus: json['otpStatus'] as bool,
    passportIdNo: json['passportIdNo'] as String,
    photo: json['photo'] as String,
    portraitUrl: json['portraitUrl'] as String,
    referenceCorporateName: json['referenceCorporateName'] as String,
    state: json['state'] as String,
    status: json['status'] as String,
    telephone: json['telephone'] as String,
    title: json['title'] as String,
    userSubtype: json['userSubtype'] as String,
    userType: json['userType'] as String,
  );
}

Map<String, dynamic> _$StateToJson(State instance) => <String, dynamic>{
      'bankAccountName': instance.bankAccountName,
      'bankAccountNumber': instance.bankAccountNumber,
      'bankCode': instance.bankCode,
      'bankName': instance.bankName,
      'birthDate': const CustomDateTimeConverter().toJson(instance.birthDate),
      'birthDay': instance.birthDay,
      'birthMonth': instance.birthMonth,
      'birthYear': instance.birthYear,
      'businessType': instance.businessType,
      'changeBy': instance.changeBy,
      'changeDate': const CustomDateTimeConverter().toJson(instance.changeDate),
      'company': instance.company,
      'corporateBusinessType': instance.corporateBusinessType,
      'corporateEmail': instance.corporateEmail,
      'corporateEmailDisplay': instance.corporateEmailDisplay,
      'corporateNameEn': instance.corporateNameEn,
      'corporateNameTh': instance.corporateNameTh,
      'corporateNumber': instance.corporateNumber,
      'corporatePurpose': instance.corporatePurpose,
      'corporateRegistrationDate': const CustomDateTimeConverter()
          .toJson(instance.corporateRegistrationDate),
      'corporateSymbol': instance.corporateSymbol,
      'corporateTelephone': instance.corporateTelephone,
      'corporateTelephoneDisplay': instance.corporateTelephoneDisplay,
      'corporateType': instance.corporateType,
      'corporateUrlFacebook': instance.corporateUrlFacebook,
      'corporateUrlFacebookDisplay': instance.corporateUrlFacebookDisplay,
      'corporateUrlInstagram': instance.corporateUrlInstagram,
      'corporateUrlInstagramDisplay': instance.corporateUrlInstagramDisplay,
      'corporateUrlTwitter': instance.corporateUrlTwitter,
      'corporateUrlTwitterDisplay': instance.corporateUrlTwitterDisplay,
      'corporateUrlWebsite': instance.corporateUrlWebsite,
      'corporateUrlWebsiteDisplay': instance.corporateUrlWebsiteDisplay,
      'createBy': instance.createBy,
      'createDate': const CustomDateTimeConverter().toJson(instance.createDate),
      'dipchipDate':
          const CustomDateTimeConverter().toJson(instance.dipchipDate),
      'dipchipStatus': instance.dipchipStatus,
      'displayName': instance.displayName,
      'documentSubmitChannel': instance.documentSubmitChannel,
      'email': instance.email,
      'emailVerificationStatus': instance.emailVerificationStatus,
      'firstNameEn': instance.firstNameEn,
      'firstNameTh': instance.firstNameTh,
      'gender': instance.gender,
      'id': instance.id,
      'idCardNo': instance.idCardNo,
      'income': instance.income,
      'incomeMax': instance.incomeMax,
      'incomeMin': instance.incomeMin,
      'investorScore': instance.investorScore,
      'kycCorporateStatus': instance.kycCorporateStatus,
      'kycStatus': instance.kycStatus,
      'kycUpdatedDate':
          const CustomDateTimeConverter().toJson(instance.kycUpdatedDate),
      'lastNameEn': instance.lastNameEn,
      'lastNameTh': instance.lastNameTh,
      'loginLatest':
          const CustomDateTimeConverter().toJson(instance.loginLatest),
      'loginName': instance.loginName,
      'loginPassword': instance.loginPassword,
      'marriageStatus': instance.marriageStatus,
      'nationality': instance.nationality,
      'occupation': instance.occupation,
      'occupationType': instance.occupationType,
      'otpStatus': instance.otpStatus,
      'passportIdNo': instance.passportIdNo,
      'photo': instance.photo,
      'portraitUrl': instance.portraitUrl,
      'referenceCorporateName': instance.referenceCorporateName,
      'state': instance.state,
      'status': instance.status,
      'telephone': instance.telephone,
      'title': instance.title,
      'userSubtype': instance.userSubtype,
      'userType': instance.userType,
    };

Info _$InfoFromJson(Map<String, dynamic> json) {
  return Info(
    corporateLogoUrl: json['corporateLogoUrl'] as String,
    userProfileImageUrl: json['userProfileImageUrl'] as String,
  );
}

Map<String, dynamic> _$InfoToJson(Info instance) => <String, dynamic>{
      'corporateLogoUrl': instance.corporateLogoUrl,
      'userProfileImageUrl': instance.userProfileImageUrl,
    };
