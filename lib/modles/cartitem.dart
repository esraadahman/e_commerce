class CartItem {
  String? name;
  String? image;
  int? count;
  int? singleprice;
  int? totalprice;

  CartItem(
      {this.name, this.image, this.count, this.singleprice, this.totalprice});
}

List<CartItem> cartitems = [];