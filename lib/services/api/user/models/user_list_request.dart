import 'package:dcf_app/services/api/model/limit.dart';

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

  UserListRequest.fromJson(dynamic json) {
    bankAccountName = json["bankAccountName"];
    bankAccountNumber = json["bankAccountNumber"];
    bankCode = json["bankCode"];
    bankName = json["bankName"];
    businessType = json["businessType"];
    changeBy = json["changeBy"];
    changeDateFrom = json["changeDateFrom"];
    changeDateTo = json["changeDateTo"];
    corporateBusinessType = json["corporateBusinessType"];
    corporateEmail = json["corporateEmail"];
    corporateEmailDisplay = json["corporateEmailDisplay"];
    corporateNameEn = json["corporateNameEn"];
    corporateNameTh = json["corporateNameTh"];
    corporateNumber = json["corporateNumber"];
    corporatePurpose = json["corporatePurpose"];
    corporateRegistrationDate = json["corporateRegistrationDate"];
    corporateSymbol = json["corporateSymbol"];
    corporateTelephone = json["corporateTelephone"];
    corporateTelephoneDisplay = json["corporateTelephoneDisplay"];
    corporateType = json["corporateType"];
    corporateUrlFacebook = json["corporateUrlFacebook"];
    corporateUrlFacebookDisplay = json["corporateUrlFacebookDisplay"];
    corporateUrlInstagram = json["corporateUrlInstagram"];
    corporateUrlInstagramDisplay = json["corporateUrlInstagramDisplay"];
    corporateUrlTwitter = json["corporateUrlTwitter"];
    corporateUrlTwitterDisplay = json["corporateUrlTwitterDisplay"];
    corporateUrlWebsite = json["corporateUrlWebsite"];
    corporateUrlWebsiteDisplay = json["corporateUrlWebsiteDisplay"];
    createBy = json["createBy"];
    createDateFrom = json["createDateFrom"];
    createDateTo = json["createDateTo"];
    dipchipStatus = json["dipchipStatus"];
    displayName = json["displayName"];
    email = json["email"];
    emailVerificationStatus = json["emailVerificationStatus"];
    firstNameEn = json["firstNameEn"];
    firstNameTh = json["firstNameTh"];
    id = json["id"];
    idCardNo = json["idCardNo"];
    incomeRange = json["incomeRange"];
    incomeValue = json["incomeValue"];
    kycStatus = json["kycStatus"];
    lastNameEn = json["lastNameEn"];
    lastNameTh = json["lastNameTh"];
    limit = json["limit"] != null ? Limit.fromJson(json["limit"]) : null;
    loginName = json["loginName"];
    occupationType = json["occupationType"];
    otpStatus = json["otpStatus"];
    referenceCorporateName = json["referenceCorporateName"];
    searchText = json["searchText"];
    sortBy = json["sortBy"];
    sortDirectionBy = json["sortDirectionBy"];
    state = json["state"];
    stateFilter = json["stateFilter"] != null ? json["stateFilter"].cast<String>() : [];
    status = json["status"];
    telephone = json["telephone"];
    userSubtype = json["userSubtype"];
    userSubtypeFilter = json["userSubtypeFilter"] != null ? json["userSubtypeFilter"].cast<String>() : [];
    userType = json["userType"];
    userTypeFilter = json["userTypeFilter"] != null ? json["userTypeFilter"].cast<String>() : [];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["bankAccountName"] = bankAccountName;
    map["bankAccountNumber"] = bankAccountNumber;
    map["bankCode"] = bankCode;
    map["bankName"] = bankName;
    map["businessType"] = businessType;
    map["changeBy"] = changeBy;
    map["changeDateFrom"] = changeDateFrom;
    map["changeDateTo"] = changeDateTo;
    map["corporateBusinessType"] = corporateBusinessType;
    map["corporateEmail"] = corporateEmail;
    map["corporateEmailDisplay"] = corporateEmailDisplay;
    map["corporateNameEn"] = corporateNameEn;
    map["corporateNameTh"] = corporateNameTh;
    map["corporateNumber"] = corporateNumber;
    map["corporatePurpose"] = corporatePurpose;
    map["corporateRegistrationDate"] = corporateRegistrationDate;
    map["corporateSymbol"] = corporateSymbol;
    map["corporateTelephone"] = corporateTelephone;
    map["corporateTelephoneDisplay"] = corporateTelephoneDisplay;
    map["corporateType"] = corporateType;
    map["corporateUrlFacebook"] = corporateUrlFacebook;
    map["corporateUrlFacebookDisplay"] = corporateUrlFacebookDisplay;
    map["corporateUrlInstagram"] = corporateUrlInstagram;
    map["corporateUrlInstagramDisplay"] = corporateUrlInstagramDisplay;
    map["corporateUrlTwitter"] = corporateUrlTwitter;
    map["corporateUrlTwitterDisplay"] = corporateUrlTwitterDisplay;
    map["corporateUrlWebsite"] = corporateUrlWebsite;
    map["corporateUrlWebsiteDisplay"] = corporateUrlWebsiteDisplay;
    map["createBy"] = createBy;
    map["createDateFrom"] = createDateFrom;
    map["createDateTo"] = createDateTo;
    map["dipchipStatus"] = dipchipStatus;
    map["displayName"] = displayName;
    map["email"] = email;
    map["emailVerificationStatus"] = emailVerificationStatus;
    map["firstNameEn"] = firstNameEn;
    map["firstNameTh"] = firstNameTh;
    map["id"] = id;
    map["idCardNo"] = idCardNo;
    map["incomeRange"] = incomeRange;
    map["incomeValue"] = incomeValue;
    map["kycStatus"] = kycStatus;
    map["lastNameEn"] = lastNameEn;
    map["lastNameTh"] = lastNameTh;
    if (limit != null) {
      map["limit"] = limit.toJson();
    }
    map["loginName"] = loginName;
    map["occupationType"] = occupationType;
    map["otpStatus"] = otpStatus;
    map["referenceCorporateName"] = referenceCorporateName;
    map["searchText"] = searchText;
    map["sortBy"] = sortBy;
    map["sortDirectionBy"] = sortDirectionBy;
    map["state"] = state;
    map["stateFilter"] = stateFilter;
    map["status"] = status;
    map["telephone"] = telephone;
    map["userSubtype"] = userSubtype;
    map["userSubtypeFilter"] = userSubtypeFilter;
    map["userType"] = userType;
    map["userTypeFilter"] = userTypeFilter;
    return map;
  }

}
