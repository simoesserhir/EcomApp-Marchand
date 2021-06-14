import 'Categorie.dart';
import 'ShippingMethod.dart';

class Item {
   late String id;
  late String nom;
   late String description;
   late String imageUrl;
   late double price;
   late int quantity;
   late String idMarchand;
   late Categorie categorie;
   late List<ShippingMethod> shippingMethod;
}