class AppLink{
  static const String server="https://php-myadmin.net/db_structure.php?db=if0_38155641_ecommmerce/";

//image
  static const String imageststatic = "$server/upload";
  // static const String imagestatic=' $imageststatic/categories';
  static const String imageCategories='$imageststatic/categories';
  static const String imageItems='$imageststatic/items';

//===============Auth=====================
  static const String signUp='$server/auth/signup.php';
  static const String login='$server/auth/login.php';
  static const String verfiycodessignup='$server/auth/verfiycode.php';

//==============Forgetpassword===========
  static const String checkemail='$server/forgetpassword/checkemail.php';
  static const String verfiycodeforgetpassword='$server/forgetpassword/verfiycode.php';
  static const String resetpassword='$server/forgetpassword/resetpassword.php';


  //Home
  static const String homepage='$server/home.php';
  static const String items='$server/items/items.php';

//Favorite
  static const String favoriteAdd='$server/favorite/add.php';
  static const String favoriteRemove='$server/favorite/remove.php';

}