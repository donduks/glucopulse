// ignore_for_file: public_member_api_docs, sort_constructors_first
class AppInformationDetails {
  String informationHeader;
  String informationBody;
  AppInformationDetails({
    required this.informationHeader,
    required this.informationBody,
  });
}

class MyInfoDetail {
  AppInformationDetails header(String header, String body) {
    final information =
        AppInformationDetails(informationHeader: header, informationBody: body);
    return information;
  }
}
