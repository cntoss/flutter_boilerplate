enum CommonEnum { verified, unverified }

extension CommonEnumExtension on CommonEnum {
  String displayName() {
    switch (this) {
      // case OnSiteHourEnum.all:
      //   return 'All';
      case CommonEnum.unverified:
        return 'Unverified';
      case CommonEnum.verified:
        return 'Verified';
    }
  }
}
