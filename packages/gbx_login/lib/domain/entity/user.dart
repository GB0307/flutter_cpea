class GbxUser {
  GbxUser(
      {required this.uid,
      this.email,
      this.phoneNumber,
      required this.emailVerified,
      this.displayName});

  final String? displayName;
  final String uid;
  final String? email;
  final String? phoneNumber;
  final bool emailVerified;
}
