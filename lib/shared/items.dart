class item {
  String imgpath;
  double price;
  String location;
  String name;
  item({required this.imgpath,required this.name,required this.price ,this.location="Main Branch"});
}


final List<item> items=[
  item(name: "product1", imgpath:"assets/img/1.webp" , price:152.5, location: "flower shop"),
  item(name: "product2", imgpath:"assets/img/2.webp" , price:154.5,),
  item(name: "product3", imgpath:"assets/img/3.webp" , price:157.5,),
  item(name: "product4", imgpath:"assets/img/4.webp" , price:155.5,),
  