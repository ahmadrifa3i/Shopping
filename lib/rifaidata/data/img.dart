/*Load image from folder assets/images/
 */
class Img {
  static String get(String name){
    return 'assets/images/'+name;
    //assets/images/image_1
  }
  static String geticons(String name){
    return 'assets/icons/$name';
  }
}
