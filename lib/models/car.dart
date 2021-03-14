class Car {
  final String name;
  final int yerlesimYeri;
  final int sehirlerArasi;
  final int bolunmusYollar;
  final int otoYollar;

  const Car({this.name,this.yerlesimYeri,this.sehirlerArasi,this.bolunmusYollar,this.otoYollar});
}

const carList = <Car>[
  Car(name: "Otomobil (M1),(M1G)",yerlesimYeri: 50,sehirlerArasi: 90,bolunmusYollar: 110,otoYollar: 120),
  Car(name: "Minibüs (M2)",yerlesimYeri: 50,sehirlerArasi: 80,bolunmusYollar: 90,otoYollar: 100),
  Car(name: "Otobüs (M2-M3)",yerlesimYeri: 50,sehirlerArasi: 80,bolunmusYollar: 85,otoYollar: 95),
  Car(name: "Panelvan (N1) ",yerlesimYeri: 50,sehirlerArasi: 85,bolunmusYollar: 100,otoYollar: 110),
  Car(name: "Kamyon (N2-N3)",yerlesimYeri: 50,sehirlerArasi: 80,bolunmusYollar: 85,otoYollar: 90),
  Car(name: "Çekici (N2-N3)",yerlesimYeri: 50,sehirlerArasi: 80,bolunmusYollar: 85,otoYollar: 90),
  Car(name: "Motosiklet (L3)",yerlesimYeri: 50,sehirlerArasi: 80,bolunmusYollar: 90,otoYollar: 100),
  Car(name: "Motosiklet (L4, L5, L7)",yerlesimYeri: 50,sehirlerArasi: 70,bolunmusYollar: 80,otoYollar: 80),
  Car(name: "Motorlu bisiklet (L1, L2, L6)",yerlesimYeri: 30,sehirlerArasi: 45,bolunmusYollar: 45,otoYollar: 0),
  Car(name: " Motorsuz bisiklet",yerlesimYeri: 30,sehirlerArasi: 45,bolunmusYollar: 45,otoYollar: 0),
];