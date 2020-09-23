import 'package:dcf_app/cores/converts/json_converter.dart';
import 'package:dcf_app/services/api/models/limit.dart';
import 'package:json_annotation/json_annotation.dart';
part 'user_list_request.g.dart';

@CustomDateTimeConverter()
@JsonSerializable(nullable: true)
class UserListRequest {
  String bankAccountName;
  String bankAccountNumber;
  String bankCode;
  String bankName;
  String businessType;
  String changeBy;
  String changeDateFrom;
  String changeDateTo;
  String corporateBusinessType;
  String corporateEmail;
  bool corporateEmailDisplay;
  String corporateNameEn;
  String corporateNameTh;
  String corporateNumber;
  String corporatePurpose;
  String corporateRegistrationDate;
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
  String createDateFrom;
  String createDateTo;
  bool dipchipStatus;
  String displayName;
  String email;
  bool emailVerificationStatus;
  String firstNameEn;
  String firstNameTh;
  String id;
  String idCardNo;
  String incomeRange;
  int incomeValue;
  bool kycStatus;
  String lastNameEn;
  String lastNameTh;
  Limit limit;
  String loginName;
  String occupationType;
  bool otpStatus;
  String referenceCorporateName;
  String searchText;
  String sortBy;
  String sortDirectionBy;
  String state;
  List<String> stateFilter;
  String status;
  String telephone;
  String userSubtype;
  List<String> userSubtypeFilter;
  String userType;
  List<String> userTypeFilter;

  UserListRequest({
      this.bankAccountName, 
      this.bankAccountNumber, 
      this.bankCode, 
      this.bankName, 
      this.businessType, 
      this.changeBy, 
      this.changeDateFrom, 
      this.changeDateTo, 
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
      this.createDateFrom, 
      this.createDateTo, 
      this.dipchipStatus, 
      this.displayName, 
      this.email, 
      this.emailVerificationStatus, 
      this.firstNameEn, 
      this.firstNameTh, 
      this.id, 
      this.idCardNo, 
      this.incomeRange, 
      this.incomeValue, 
      this.kycStatus, 
      this.lastNameEn, 
      this.lastNameTh, 
      this.limit, 
      this.loginName, 
      this.occupationType, 
      this.otpStatus, 
      this.referenceCorporateName, 
      this.searchText, 
      this.sortBy, 
      this.sortDirectionBy, 
      this.state, 
      this.stateFilter, 
      this.status, 
      this.telephone, 
      this.userSubtype, 
      this.userSubtypeFilter, 
      this.userType, 
      this.userTypeFilter});

  factory UserListRequest.fromJson(Map<String, dynamic> json) => _$UserListRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UserListRequestToJson(this);
}
