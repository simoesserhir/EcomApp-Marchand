import 'Item.dart';
import 'User.dart';





class Marchand extends User{
  Marchand(String id, String nom, String prenom, String email, String userName, String password, String address, String phoneNumber, String role, List<Item> items) :
        this.items = items,
        super(id, nom, prenom, email, userName, password, address, phoneNumber, role);

   List<Item> items;
}