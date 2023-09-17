/// result : {"token":"eyJhbGciOiJodHRwOi8vd3d3LnczLm9yZy8yMDAxLzA0L3htbGRzaWctbW9yZSNobWFjLXNoYTI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoiRGF0YSBTb3VyY2U9MTEzLjE5Ny4zNi4xNztJbml0aWFsIENhdGFsb2c9ZGVmYXVsdHBvc2RiO1VzZXIgSWQ9YnJpbnRhYmRhO1Bhc3N3b3JkPUVhRjBReTVlTUo3TGpRZiQ7TWF4IFBvb2wgU2l6ZT02MDA7IiwianRpIjoiODRmOGRmZDUtZmQ4MC00Njk2LTk5ZWQtNDdjZjI2OGIwMTdiIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbmFtZWlkZW50aWZpZXIiOiI4NGY4ZGZkNS1mZDgwLTQ2OTYtOTllZC00N2NmMjY4YjAxN2IiLCJodHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL3dzLzIwMDgvMDYvaWRlbnRpdHkvY2xhaW1zL3VzZXJkYXRhIjoiOTdkMmJiM2UtZjBlOS00YTY4LThkZGUtOTdiODMwMmYwMDhiIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy9yb2xlIjpbIlJlZ3VsYXIiLCJSZWd1bGFyIl0sImh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vd3MvMjAwOC8wNi9pZGVudGl0eS9jbGFpbXMvZ3JvdXBzaWQiOiI1IiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvcG9zdGFsY29kZSI6IiswNjowMCIsImV4cCI6MTY5NzUyMTg2MSwiaXNzIjoiaHR0cDovL2xvY2FsaG9zdDo4OTA3IiwiYXVkIjoiVXNlciJ9.HcPDlA53gcOTQSPV3xGh1pHyyxc00zUhPqULwtfQLNk","expires_in":"2023-10-17T13:51:01.2576841+08:00","validTo":"2023-10-17T05:51:01","user":{"companyId":"97d2bb3e-f0e9-4a68-8dde-97b8302f008b","companyName":"Piistech Ltd","profilePicture":"/employe/profile-pic/84f8dfd5-fd80-4696-99ed-47cf268b017b/w-180/h-180/onlyview.jpg","userGuidId":"84f8dfd5-fd80-4696-99ed-47cf268b017b","userIntId":79,"userGroupId":5,"fullName":"Unassign ","phone":"","email":"vvifile2006@gmail.com","designation":"Sales","regNo":"9999","joinDate":"0001-01-01T00:00:00"}}
/// success : true
/// error : ""

class LoginModel {
  LoginModel({
      Result? result, 
      bool? success, 
      String? error,}){
    _result = result;
    _success = success;
    _error = error;
}

  LoginModel.fromJson(dynamic json) {
    _result = json['result'] != null ? Result.fromJson(json['result']) : null;
    _success = json['success'];
    _error = json['error'];
  }
  Result? _result;
  bool? _success;
  String? _error;
LoginModel copyWith({  Result? result,
  bool? success,
  String? error,
}) => LoginModel(  result: result ?? _result,
  success: success ?? _success,
  error: error ?? _error,
);
  Result? get result => _result;
  bool? get success => _success;
  String? get error => _error;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_result != null) {
      map['result'] = _result?.toJson();
    }
    map['success'] = _success;
    map['error'] = _error;
    return map;
  }

}

/// token : "eyJhbGciOiJodHRwOi8vd3d3LnczLm9yZy8yMDAxLzA0L3htbGRzaWctbW9yZSNobWFjLXNoYTI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoiRGF0YSBTb3VyY2U9MTEzLjE5Ny4zNi4xNztJbml0aWFsIENhdGFsb2c9ZGVmYXVsdHBvc2RiO1VzZXIgSWQ9YnJpbnRhYmRhO1Bhc3N3b3JkPUVhRjBReTVlTUo3TGpRZiQ7TWF4IFBvb2wgU2l6ZT02MDA7IiwianRpIjoiODRmOGRmZDUtZmQ4MC00Njk2LTk5ZWQtNDdjZjI2OGIwMTdiIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbmFtZWlkZW50aWZpZXIiOiI4NGY4ZGZkNS1mZDgwLTQ2OTYtOTllZC00N2NmMjY4YjAxN2IiLCJodHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL3dzLzIwMDgvMDYvaWRlbnRpdHkvY2xhaW1zL3VzZXJkYXRhIjoiOTdkMmJiM2UtZjBlOS00YTY4LThkZGUtOTdiODMwMmYwMDhiIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy9yb2xlIjpbIlJlZ3VsYXIiLCJSZWd1bGFyIl0sImh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vd3MvMjAwOC8wNi9pZGVudGl0eS9jbGFpbXMvZ3JvdXBzaWQiOiI1IiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvcG9zdGFsY29kZSI6IiswNjowMCIsImV4cCI6MTY5NzUyMTg2MSwiaXNzIjoiaHR0cDovL2xvY2FsaG9zdDo4OTA3IiwiYXVkIjoiVXNlciJ9.HcPDlA53gcOTQSPV3xGh1pHyyxc00zUhPqULwtfQLNk"
/// expires_in : "2023-10-17T13:51:01.2576841+08:00"
/// validTo : "2023-10-17T05:51:01"
/// user : {"companyId":"97d2bb3e-f0e9-4a68-8dde-97b8302f008b","companyName":"Piistech Ltd","profilePicture":"/employe/profile-pic/84f8dfd5-fd80-4696-99ed-47cf268b017b/w-180/h-180/onlyview.jpg","userGuidId":"84f8dfd5-fd80-4696-99ed-47cf268b017b","userIntId":79,"userGroupId":5,"fullName":"Unassign ","phone":"","email":"vvifile2006@gmail.com","designation":"Sales","regNo":"9999","joinDate":"0001-01-01T00:00:00"}

class Result {
  Result({
      String? token, 
      String? expiresIn, 
      String? validTo, 
      User? user,}){
    _token = token;
    _expiresIn = expiresIn;
    _validTo = validTo;
    _user = user;
}

  Result.fromJson(dynamic json) {
    _token = json['token'];
    _expiresIn = json['expires_in'];
    _validTo = json['validTo'];
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
  }
  String? _token;
  String? _expiresIn;
  String? _validTo;
  User? _user;
Result copyWith({  String? token,
  String? expiresIn,
  String? validTo,
  User? user,
}) => Result(  token: token ?? _token,
  expiresIn: expiresIn ?? _expiresIn,
  validTo: validTo ?? _validTo,
  user: user ?? _user,
);
  String? get token => _token;
  String? get expiresIn => _expiresIn;
  String? get validTo => _validTo;
  User? get user => _user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['token'] = _token;
    map['expires_in'] = _expiresIn;
    map['validTo'] = _validTo;
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    return map;
  }

}

/// companyId : "97d2bb3e-f0e9-4a68-8dde-97b8302f008b"
/// companyName : "Piistech Ltd"
/// profilePicture : "/employe/profile-pic/84f8dfd5-fd80-4696-99ed-47cf268b017b/w-180/h-180/onlyview.jpg"
/// userGuidId : "84f8dfd5-fd80-4696-99ed-47cf268b017b"
/// userIntId : 79
/// userGroupId : 5
/// fullName : "Unassign "
/// phone : ""
/// email : "vvifile2006@gmail.com"
/// designation : "Sales"
/// regNo : "9999"
/// joinDate : "0001-01-01T00:00:00"

class User {
  User({
      String? companyId, 
      String? companyName, 
      String? profilePicture, 
      String? userGuidId, 
      num? userIntId, 
      num? userGroupId, 
      String? fullName, 
      String? phone, 
      String? email, 
      String? designation, 
      String? regNo, 
      String? joinDate,}){
    _companyId = companyId;
    _companyName = companyName;
    _profilePicture = profilePicture;
    _userGuidId = userGuidId;
    _userIntId = userIntId;
    _userGroupId = userGroupId;
    _fullName = fullName;
    _phone = phone;
    _email = email;
    _designation = designation;
    _regNo = regNo;
    _joinDate = joinDate;
}

  User.fromJson(dynamic json) {
    _companyId = json['companyId'];
    _companyName = json['companyName'];
    _profilePicture = json['profilePicture'];
    _userGuidId = json['userGuidId'];
    _userIntId = json['userIntId'];
    _userGroupId = json['userGroupId'];
    _fullName = json['fullName'];
    _phone = json['phone'];
    _email = json['email'];
    _designation = json['designation'];
    _regNo = json['regNo'];
    _joinDate = json['joinDate'];
  }
  String? _companyId;
  String? _companyName;
  String? _profilePicture;
  String? _userGuidId;
  num? _userIntId;
  num? _userGroupId;
  String? _fullName;
  String? _phone;
  String? _email;
  String? _designation;
  String? _regNo;
  String? _joinDate;
User copyWith({  String? companyId,
  String? companyName,
  String? profilePicture,
  String? userGuidId,
  num? userIntId,
  num? userGroupId,
  String? fullName,
  String? phone,
  String? email,
  String? designation,
  String? regNo,
  String? joinDate,
}) => User(  companyId: companyId ?? _companyId,
  companyName: companyName ?? _companyName,
  profilePicture: profilePicture ?? _profilePicture,
  userGuidId: userGuidId ?? _userGuidId,
  userIntId: userIntId ?? _userIntId,
  userGroupId: userGroupId ?? _userGroupId,
  fullName: fullName ?? _fullName,
  phone: phone ?? _phone,
  email: email ?? _email,
  designation: designation ?? _designation,
  regNo: regNo ?? _regNo,
  joinDate: joinDate ?? _joinDate,
);
  String? get companyId => _companyId;
  String? get companyName => _companyName;
  String? get profilePicture => _profilePicture;
  String? get userGuidId => _userGuidId;
  num? get userIntId => _userIntId;
  num? get userGroupId => _userGroupId;
  String? get fullName => _fullName;
  String? get phone => _phone;
  String? get email => _email;
  String? get designation => _designation;
  String? get regNo => _regNo;
  String? get joinDate => _joinDate;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['companyId'] = _companyId;
    map['companyName'] = _companyName;
    map['profilePicture'] = _profilePicture;
    map['userGuidId'] = _userGuidId;
    map['userIntId'] = _userIntId;
    map['userGroupId'] = _userGroupId;
    map['fullName'] = _fullName;
    map['phone'] = _phone;
    map['email'] = _email;
    map['designation'] = _designation;
    map['regNo'] = _regNo;
    map['joinDate'] = _joinDate;
    return map;
  }

}