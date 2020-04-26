class Item {
  String name;
  int quantity;
  String image;

  Item.plane() {
    this.name = "";
    this.quantity = 0;
    this.image = "https://toppng.com/uploads/preview/clipart-free-seaweed-clipart-draw-food-placeholder-11562968708qhzooxrjly.png";
  }
  Item(String name, int quantity, String image) {
   this.name = name;
   this.quantity = quantity;
   this.image = image;
  }
}