class UserListResponse {
  List<Data> data;
  Page page;

  UserListResponse({
      this.data, 
      this.page});

  UserListResponse.fromJson(dynamic json) {
    if (json["data"] != null) {
      data = [];
      json["data"].forEach((v) {
        data.add(Data.fromJson(v));
      });
    }
    page = json["page"] != null ? Page.fromJson(json["page"]) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (data != null) {
      map["data"] = data.map((v) => v.toJson()).toList();
    }
    if (page != null) {
      map["page"] = page.toJson();
    }
    return map;
  }

}

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

  Page.fromJson(dynamic json) {
    pageNumber = json["pageNumber"];
    pageSize = json["pageSize"];
    total = json["total"];
    totalPages = json["totalPages"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["pageNumber"] = pageNumber;
    map["pageSize"] = pageSize;
    map["total"] = total;
    map["totalPages"] = totalPages;
    return map;
  }

}

class Data {
  Info info;
  State state;

  Data({
      this.info, 
      this.state});

  Data.fromJson(dynamic json) {
    info = json["info"] != null ? Info.fromJson(json["info"]) : null;
    state = json["state"] != null ? State.fromJson(json["state"]) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (info != null) {
      map["info"] = info.toJson();
    }
    if (state != null) {
      map["state"] = state.toJson();
    }
    return map;
  }

}

class State {
  String bankAccountName;
  String bankAccountNumber;
  String bankCode;
  String bankName;
  String birthDate;
  String birthDay;
  String birthMonth;
  String birthYear;
  String businessType;
  String changeBy;
  String changeDate;
  String company;
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
  String createDate;
  String dipchipDate;
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
  String kycUpdatedDate;
  String lastNameEn;
  String lastNameTh;
  String loginLatest;
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

  State.fromJson(dynamic json) {
    bankAccountName = json["bankAccountName"];
    bankAccountNumber = json["bankAccountNumber"];
    bankCode = json["bankCode"];
    bankName = json["bankName"];
    birthDate = json["birthDate"];
    birthDay = json["birthDay"];
    birthMonth = json["birthMonth"];
    birthYear = json["birthYear"];
    businessType = json["businessType"];
    changeBy = json["changeBy"];
    changeDate = json["changeDate"];
    company = json["company"];
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
    createDate = json["createDate"];
    dipchipDate = json["dipchipDate"];
    dipchipStatus = json["dipchipStatus"];
    displayName = json["displayName"];
    documentSubmitChannel = json["documentSubmitChannel"];
    email = json["email"];
    emailVerificationStatus = json["emailVerificationStatus"];
    firstNameEn = json["firstNameEn"];
    firstNameTh = json["firstNameTh"];
    gender = json["gender"];
    id = json["id"];
    idCardNo = json["idCardNo"];
    income = json["income"];
    incomeMax = json["incomeMax"];
    incomeMin = json["incomeMin"];
    investorScore = json["investorScore"];
    kycCorporateStatus = json["kycCorporateStatus"];
    kycStatus = json["kycStatus"];
    kycUpdatedDate = json["kycUpdatedDate"];
    lastNameEn = json["lastNameEn"];
    lastNameTh = json["lastNameTh"];
    loginLatest = json["loginLatest"];
    loginName = json["loginName"];
    loginPassword = json["loginPassword"];
    marriageStatus = json["marriageStatus"];
    nationality = json["nationality"];
    occupation = json["occupation"];
    occupationType = json["occupationType"];
    otpStatus = json["otpStatus"];
    passportIdNo = json["passportIdNo"];
    photo = json["photo"];
    portraitUrl = json["portraitUrl"];
    referenceCorporateName = json["referenceCorporateName"];
    state = json["state"];
    status = json["status"];
    telephone = json["telephone"];
    title = json["title"];
    userSubtype = json["userSubtype"];
    userType = json["userType"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["bankAccountName"] = bankAccountName;
    map["bankAccountNumber"] = bankAccountNumber;
    map["bankCode"] = bankCode;
    map["bankName"] = bankName;
    map["birthDate"] = birthDate;
    map["birthDay"] = birthDay;
    map["birthMonth"] = birthMonth;
    map["birthYear"] = birthYear;
    map["businessType"] = businessType;
    map["changeBy"] = changeBy;
    map["changeDate"] = changeDate;
    map["company"] = company;
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
    map["createDate"] = createDate;
    map["dipchipDate"] = dipchipDate;
    map["dipchipStatus"] = dipchipStatus;
    map["displayName"] = displayName;
    map["documentSubmitChannel"] = documentSubmitChannel;
    map["email"] = email;
    map["emailVerificationStatus"] = emailVerificationStatus;
    map["firstNameEn"] = firstNameEn;
    map["firstNameTh"] = firstNameTh;
    map["gender"] = gender;
    map["id"] = id;
    map["idCardNo"] = idCardNo;
    map["income"] = income;
    map["incomeMax"] = incomeMax;
    map["incomeMin"] = incomeMin;
    map["investorScore"] = investorScore;
    map["kycCorporateStatus"] = kycCorporateStatus;
    map["kycStatus"] = kycStatus;
    map["kycUpdatedDate"] = kycUpdatedDate;
    map["lastNameEn"] = lastNameEn;
    map["lastNameTh"] = lastNameTh;
    map["loginLatest"] = loginLatest;
    map["loginName"] = loginName;
    map["loginPassword"] = loginPassword;
    map["marriageStatus"] = marriageStatus;
    map["nationality"] = nationality;
    map["occupation"] = occupation;
    map["occupationType"] = occupationType;
    map["otpStatus"] = otpStatus;
    map["passportIdNo"] = passportIdNo;
    map["photo"] = photo;
    map["portraitUrl"] = portraitUrl;
    map["referenceCorporateName"] = referenceCorporateName;
    map["state"] = state;
    map["status"] = status;
    map["telephone"] = telephone;
    map["title"] = title;
    map["userSubtype"] = userSubtype;
    map["userType"] = userType;
    return map;
  }

}

class Info {
  String corporateLogoUrl;
  String userProfileImageUrl;

  Info({
      this.corporateLogoUrl, 
      this.userProfileImageUrl});

  Info.fromJson(dynamic json) {
    corporateLogoUrl = json["corporateLogoUrl"];
    userProfileImageUrl = json["userProfileImageUrl"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["corporateLogoUrl"] = corporateLogoUrl;
    map["userProfileImageUrl"] = userProfileImageUrl;
    return map;
  }

}