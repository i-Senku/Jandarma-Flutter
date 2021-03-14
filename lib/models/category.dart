enum CategoryType{KANUNLAR,YONETMELIK,IDARIPARA,SUCTASNIFLERI,KAVRAMLAR,TAHKIKAT,TUTANAKLAR,USTYAZILAR}

class Category {
  String name;
  String image;
  CategoryType type;

  Category({this.name,this.image,this.type});
}

var categoryList = [
  Category(name: 'Kanunlar',image: 'assets/category/kanunlar.jpg',type: CategoryType.KANUNLAR),
  Category(name: 'Yönetmelik',image: 'assets/category/yonetmelik.jpg',type: CategoryType.YONETMELIK),
  Category(name: 'İdari Para',image: 'assets/category/idari.jpg',type: CategoryType.IDARIPARA),
  Category(name: 'SUÇ TASNİFLERİ',image: 'assets/category/suc.jpg',type: CategoryType.SUCTASNIFLERI),
  Category(name: 'KAVRAMLAR',image: 'assets/category/kavramlar.jpg',type: CategoryType.KAVRAMLAR),
  Category(name: 'TAHKİKAT',image: 'assets/category/tahkikat.png',type: CategoryType.TAHKIKAT),
  Category(name: 'TUTANAKLAR',image: 'assets/category/tutanak.jpg',type: CategoryType.TUTANAKLAR),
  Category(name: 'ÜST YAZILAR',image: 'assets/category/ustyazi.jpg',type: CategoryType.USTYAZILAR),
];
