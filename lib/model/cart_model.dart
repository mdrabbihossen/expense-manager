class CartModel {
  final int id;
  final String name;
  final String bankName;
  final String number;
  final String currency;

  final int available;

  CartModel({
    required this.id,
    required this.name,
    required this.bankName,
    required this.number,
    required this.currency,
    required this.available,
  });

  Map toJson() => {
    'id': id,
    'name': name,
    'bankName': bankName,
    'number': number,
    'currency': currency,
    'available': available
  };

  CartModel.fromJson(Map json)
      : id = json['id'],
        name = json['name'],
        bankName = json['bankName'],
        number = json['number'],
        currency = json['currency'],
        available = json['available'];
}
