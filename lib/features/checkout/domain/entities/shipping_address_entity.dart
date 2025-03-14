class ShippingAddressEntity {
  String? name;
  String? email;
  String? address;
  String? city;
  String? phone;
  // String? addressDetails;
  String? floor;

  ShippingAddressEntity(
      {this.name,
      this.email,
      this.address,
      this.city,
      this.phone,
      // this.addressDetails,
      this.floor});

  @override
  String toString() {
    return '$address $floor $city';
  }
}
