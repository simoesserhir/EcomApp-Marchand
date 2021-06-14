import 'CreditCard.dart';
import 'Item.dart';
import 'ShippingAddress.dart';
import 'User.dart';

 class Client extends User{

   late List<ShippingAddress> shippingAddress;
   late List<CreditCard> creditCard;
   late List<Item> favourites;
   late List<Item> shoppingCart;

  Client(String id, String nom, String prenom, String email, String userName, String password, String address, String phoneNumber, String role) : super(id, nom, prenom, email, userName, password, address, phoneNumber, role);


}