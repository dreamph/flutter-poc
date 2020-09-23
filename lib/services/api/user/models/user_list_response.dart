import 'package:dcf_app/cores/converts/json_converter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_list_response.g.dart';

@CustomDateTimeConverter()
@JsonSerializable(nullable: true)
class UserListResponse {
  List<Data> data;
  Page page;

  UserListResponse({
      this.data, 
      this.page});

  factory UserListResponse.fromJson(Map<String, dynamic> json) => _$UserListResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserListResponseToJson(this);
}

@CustomDateTimeConverter()
@JsonSerializable(nullable: true)
class Page {
  int pageNumber;
  int pageSize;
  int total;
  int totalPages;

  Page({
      this.pageNumber, 
      this.pageSize, 
      this.total, 
      this.totalPages});

  factory Page.fromJson(Map<String, dynamic> json) => _$PageFromJson(json);

  Map<String, dynamic> toJson() => _$PageToJson(this);
}

@CustomDateTimeConverter()
@JsonSerializable(nullable: true)
class Data {
  Info info;
  State state;

  Data({
      this.info, 
      this.state});
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

}

@CustomDateTimeConverter()
@JsonSerializable(nullable: true)
class State {
  String bankAccountName;
  String bankAccountNumber;
  String bankCode;
  String bankName;
  //@JsonKey(fromJson: CustomDateTimeConverter.fromJsonData, toJson: CustomDateTimeConverter.toJsonData)
  DateTime birthDate;
  String birthDay;
  String birthMonth;
  String birthYear;
  String businessType;
  String changeBy;
  //@JsonKey(fromJson: CustomDateTimeConverter.fromJsonData, toJson: CustomDateTimeConverter.toJsonData)
  DateTime changeDate;
  String company;
  String corporateBusinessType;
  String corporateEmail;
  bool corporateEmailDisplay;
  String corporateNameEn;
  String corporateNameTh;
  String corporateNumber;
  String corporatePurpose;
  //@JsonKey(fromJson: CustomDateTimeConverter.fromJsonData, toJson: CustomDateTimeConverter.toJsonData)
  DateTime corporateRegistrationDate;
  String corporateSymbol;
  String corporateTelephone;
  bool corporateTelephoneDisplay;
  String corporateType;
  String corporateUrlFacebook;
  bool corporateUrlFacebookDisplay;
  String corporateUrlInstagram;
  bool corporateUrlInstagramDisplay;
  String corporateUrlTwitter;
  bool corporateUrlTwitterDisplay;
  String corporateUrlWebsite;
  bool corporateUrlWebsiteDisplay;
  String createBy;
  DateTime createDate;
  DateTime dipchipDate;
  bool dipchipStatus;
  String displayName;
  String documentSubmitChannel;
  String email;
  bool emailVerificationStatus;
  String firstNameEn;
  String firstNameTh;
  String gender;
  String id;
  String idCardNo;
  String income;
  int incomeMax;
  int incomeMin;
  int investorScore;
  bool kycCorporateStatus;
  bool kycStatus;
  DateTime kycUpdatedDate;
  String lastNameEn;
  String lastNameTh;
  DateTime loginLatest;
  String loginName;
  String loginPassword;
  String marriageStatus;
  String nationality;
  String occupation;
  String occupationType;
  bool otpStatus;
  String passportIdNo;
  String photo;
  String portraitUrl;
  String referenceCorporateName;
  String state;
  String status;
  String telephone;
  String title;
  String userSubtype;
  String userType;

  State({
      this.bankAccountName, 
      this.bankAccountNumber, 
      this.bankCode, 
      this.bankName, 
      this.birthDate, 
      this.birthDay, 
      this.birthMonth, 
      this.birthYear, 
      this.businessType, 
      this.changeBy, 
      this.changeDate, 
      this.company, 
      this.corporateBusinessType, 
      this.corporateEmail, 
      this.corporateEmailDisplay, 
      this.corporateNameEn, 
      this.corporateNameTh, 
      this.corporateNumber, 
      this.corporatePurpose, 
      this.corporateRegistrationDate, 
      this.corporateSymbol, 
      this.corporateTelephone, 
      this.corporateTelephoneDisplay, 
      this.corporateType, 
      this.corporateUrlFacebook, 
      this.corporateUrlFacebookDisplay, 
      this.corporateUrlInstagram, 
      this.corporateUrlInstagramDisplay, 
      this.corporateUrlTwitter, 
      this.corporateUrlTwitterDisplay, 
      this.corporateUrlWebsite, 
      this.corporateUrlWebsiteDisplay, 
      this.createBy, 
      this.createDate, 
      this.dipchipDate, 
      this.dipchipStatus, 
      this.displayName, 
      this.documentSubmitChannel, 
      this.email, 
      this.emailVerificationStatus, 
      this.firstNameEn, 
      this.firstNameTh, 
      this.gender, 
      this.id, 
      this.idCardNo, 
      this.income, 
      this.incomeMax, 
      this.incomeMin, 
      this.investorScore, 
      this.kycCorporateStatus, 
      this.kycStatus, 
      this.kycUpdatedDate, 
      this.lastNameEn, 
      this.lastNameTh,
      this.loginLatest, 
      this.loginName, 
      this.loginPassword, 
      this.marriageStatus, 
      this.nationality, 
      this.occupation, 
      this.occupationType, 
      this.otpStatus, 
      this.passportIdNo, 
      this.photo, 
      this.portraitUrl, 
      this.referenceCorporateName, 
      this.state, 
      this.status, 
      this.telephone, 
      this.title, 
      this.userSubtype, 
      this.userType});

  factory State.fromJson(Map<String, dynamic> json) => _$StateFromJson(json);

  Map<String, dynamic> toJson() => _$StateToJson(this);

}

@CustomDateTimeConverter()
@JsonSerializable(nullable: true)
class Info {
  String corporateLogoUrl;
  String userProfileImageUrl;

  Info({
      this.corporateLogoUrl, 
      this.userProfileImageUrl});

  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);

  Map<String, dynamic> toJson() => _$InfoToJson(this);

}
