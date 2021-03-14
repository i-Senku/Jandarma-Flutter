
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'pdf_detail.g.dart';

@HiveType(typeId: 0)
class PDFDetail extends Equatable{
  @HiveField(0)
  String name;
  @HiveField(1)
  String path;

  
  PDFDetail({this.name,this.path});

  @override
  List<Object> get props => [path];
}

final kanunlarDetailList = [
  PDFDetail(name: 'DEVLET MEMURLARI KANUNU',path: 'assets/kanunlar/1.pdf'),
  PDFDetail(name: 'UMUMİ HIFZISSIHHA KANUNU',path: 'assets/kanunlar/2.pdf'),
  PDFDetail(name: 'KİMLİK BİLDİRME KANUNU',path: 'assets/kanunlar/3.pdf'),
  PDFDetail(name: 'UYUŞTURUCU MADDELERİN MURAKABESİ HAKKINDA KANUN',path: 'assets/kanunlar/4.pdf'),

  PDFDetail(name: 'AVDA VE SPORDA KULLANILAN TÜFEKLER, NİŞAN TABANCALARI VE AV BIÇAKLARININ YAPIMI, ALIMI, SATIMI VE BULUNDURULMASINA DAİR KANUN',path: 'assets/kanunlar/5.pdf'),
  PDFDetail(name: 'POLİS VAZİFE VE SALȂHİYET KANUNU',path: 'assets/kanunlar/6.pdf'),
  PDFDetail(name: 'JANDARMA TEŞKİLAT, GÖREV VE YETKİLERİ KANUNU',path: 'assets/kanunlar/7.pdf'),
  PDFDetail(name: 'ÇEVRE KANUNU',path: 'assets/kanunlar/8.pdf'),
  PDFDetail(name: 'KARAYOLLARI TRAFİK KANUNU',path: 'assets/kanunlar/9.pdf'),
  PDFDetail(name: 'UZMAN ERBAŞ KANUNU',path: 'assets/kanunlar/10.pdf'),
  PDFDetail(name: 'UYUŞTURUCU MADDELERLE İLGİLİ KANUN',path: 'assets/kanunlar/11.pdf'),
  PDFDetail(name: 'UZMAN JANDARMA KANUNU',path: 'assets/kanunlar/12.pdf'),

  PDFDetail(name: 'KIYI KANUN',path: 'assets/kanunlar/13.pdf'),
  PDFDetail(name: 'TERÖRLE MÜCADELE KANUNU HAKKINDA KANUN',path: 'assets/kanunlar/14.pdf'),
  PDFDetail(name: 'TÜTÜN ÜRÜNLERİNİN ZARARLARININ ÖNLENMESİ VE KONTROLÜ HAKKINDA KANUN',path: 'assets/kanunlar/15.pdf'),
  PDFDetail(name: 'MEMURLAR VE DİĞER KAMU GÖREVLİLERİNİN YARGILANMASI HAKKINDA KANUN',path: 'assets/kanunlar/16.pdf'),

  PDFDetail(name: 'TÜRK SİLAHLI KUVVETLERİNDE İSTİHDAM EDİLECEK SÖZLEŞMELİ SUBAY VE ASTSUBAYLAR HAKKINDA KANUN ',path: 'assets/kanunlar/17.pdf'),
  PDFDetail(name: 'KARA AVCILIĞI KANUNU',path: 'assets/kanunlar/18.pdf'),
  PDFDetail(name: 'HAYVANLARI KORUMA KANUNU',path: 'assets/kanunlar/19.pdf'),
  PDFDetail(name: 'TÜRK CEZA KANUNU',path: 'assets/kanunlar/20.pdf'),

  PDFDetail(name: 'CEZA MUHAKEMESİ KANUNU',path: 'assets/kanunlar/21.pdf'),
  PDFDetail(name: 'CEZA VE GÜVENLİK TEDBİRLERİNİN İNFAZI HAKKINDA KANUN',path: 'assets/kanunlar/22.pdf'),
  PDFDetail(name: 'KABAHATLER KANUNU',path: 'assets/kanunlar/23.pdf'),
  PDFDetail(name: 'İL İDARESİ KANUNU',path: 'assets/kanunlar/24.pdf'),

  PDFDetail(name: 'KAÇAKÇILIKLA MÜCADELE KANUNU',path: 'assets/kanunlar/25.pdf'),
  PDFDetail(name: 'ATEŞLİ SİLAHLAR VE BIÇAKLAR İLE DİĞER ALETLER HAKKINDA KANUN',path: 'assets/kanunlar/26.pdf'),
  PDFDetail(name: 'AİLENİN KORUNMASI VE KADINA KARŞI ŞİDDETİN ÖNLENMESİNE DAİR KANUN',path: 'assets/kanunlar/27.pdf'),
  PDFDetail(name: 'ORMAN KANUNU',path: 'assets/kanunlar/28.pdf'),
  PDFDetail(name: 'GENEL KOLLUK DİSİPLİN HÜKÜMLERİ HAKKINDA KANUN HÜKMÜNDE KARARNAMENİN KABUL EDİLMESİNE DAİR KANUN',path: 'assets/kanunlar/29.pdf'),
];


final yonetmelikDetailList = [

  PDFDetail(name: 'KİMLİK BİLDİRME KANUNUNUN UYGULANMASI İLE İLGİLİ YÖNETMELİK',path: 'assets/yonetmelik/1.pdf'),
  PDFDetail(name: '6284 SAYILI AİLENİN KORUNMASI VE KADINA KARŞI ŞİDDETİN ÖNLENMESİNE DAİR KANUNA İLİŞKİN UYGULAMA YÖNETMELİĞİ',path: 'assets/yonetmelik/2.pdf'),
  PDFDetail(name: 'ADLÎ KOLLUK YÖNETMELİĞİ',path: 'assets/yonetmelik/3.pdf'),
  PDFDetail(name: 'ADLÎ VE ÖNLEME ARAMALARI YÖNETMELİĞİ YÖNETMELİK',path: 'assets/yonetmelik/4.pdf'),
  PDFDetail(name: 'CEZA MUHAKEMESİNDE BEDEN MUAYENESİ, GENETİK İNCELEMELER VE FİZİK KİMLİĞİN TESPİTİ HAKKINDA YÖNETMELİK',path: 'assets/yonetmelik/5.pdf'),
  PDFDetail(name: 'CEZA İNFAZ KURUMLARININ YÖNETİM, Diş KORUMA, HÜKÜMLÜ VE TUTUKLULARIN SEVK VE NAKİLLERİ İLE SAĞLIK HİZMETLERİNİN YÜRÜTÜLMESİ HAKKINDA PROTOKOL ',path: 'assets/yonetmelik/6.pdf'),
  PDFDetail(name: 'GÜVENLİK SORUŞTURMASI VE ARŞİV ARAŞTIRMASI YÖNETMELİĞİ',path: 'assets/yonetmelik/7.pdf'),
  PDFDetail(name: 'İNTERNET TOPLU KULLANIM SAĞLAYICILARI HAKKINDA YÖNETMELİK',path: 'assets/yonetmelik/8.pdf'),
  PDFDetail(name: 'JANDARMA TEŞKİLAT, GÖREV VE YETKİLERİ YÖNETMELİĞİ',path: 'assets/yonetmelik/9.pdf'),
  PDFDetail(name: 'JANDARMA GENEL KOMUTANLIĞI KIYAFET YÖNETMELİĞİ',path: 'assets/yonetmelik/10.pdf'),
  PDFDetail(name: 'JANDARMA VE SAHİL GÜVENLİK AKADEMİSİ LİSANS VE ÖN LİSANS EĞİTİM-ÖĞRETİM YÖNETMELİĞİ',path: 'assets/yonetmelik/11.pdf'),
  PDFDetail(name: 'JSGA ÖĞRENCİ ÖDÜL VE DİSİPLİN YÖNETMELİĞİ',path: 'assets/yonetmelik/12.pdf'),
  PDFDetail(name: 'JANDARMA VE SAHİL GÜVENLİK AKADEMİSİ BAŞKANLIĞI EĞİTİM MERKEZİ KOMUTANLIĞI TEMİN YÖNETMELİĞİ',path: 'assets/yonetmelik/13.pdf'),
  PDFDetail(name: 'JANDARMA VE SAHİL GÜVENLİK AKADEMİSİ BAŞKANLIĞI FAKÜLTE VE MESLEK YÜKSEKOKULLARI TEMİN YÖNETMELİĞİ',path: 'assets/yonetmelik/14.pdf'),
  PDFDetail(name: 'KARAYOLU TAŞIMA YÖNETMELİĞİ',path: 'assets/yonetmelik/15.pdf'),
  PDFDetail(name: 'KARAYOLLARI TRAFİK YÖNETMELİĞİ',path: 'assets/yonetmelik/16.pdf'),
  PDFDetail(name: 'JANDARMA GENEL KOMUTANLIĞI VE SAHİL GÜVENLİK KOMUTANLIĞI PERSONEL YÖNETMELİĞİ',path: 'assets/yonetmelik/17.pdf'),
  PDFDetail(name: 'RESMÎ YAZIŞMALARDA UYGULANACAK USUL VE ESASLAR HAKKINDA YÖNETMELİK',path: 'assets/yonetmelik/18.pdf'),
  PDFDetail(name: 'TÜRK SİLAHLI KUVVETLERİ, JANDARMA GENEL KOMUTANLIĞI VE SAHİL GÜVENLİK KOMUTANLIĞI SAĞLIK YETENEĞİ YÖNETMELİĞİ',path: 'assets/yonetmelik/19.pdf'),
  PDFDetail(name: 'SÖZLEŞMELİ SUBAY VE ASTSUBAY YÖNETMELİĞİ',path: 'assets/yonetmelik/20.pdf'),
  PDFDetail(name: 'SUÇ EŞYASI YÖNETMELİĞİ',path: 'assets/yonetmelik/21.pdf'),
  PDFDetail(name: 'UZMAN ERBAŞ YÖNETMELİĞİ',path: 'assets/yonetmelik/22.pdf'),
  PDFDetail(name: 'YAKALAMA, GÖZALTINA ALMA VE İFADE ALMA YÖNETMELİĞİ',path: 'assets/yonetmelik/23.pdf'),
];


final idariParaList = [
  PDFDetail(name: '1774 SAYILI KİMLİK BİLDİRME KANUNU ÇERÇEVESİNDE 2021 YILINDA UYGULANACAK İDARİ PARA CEZALARI',path: 'assets/idari_para/1.pdf'),
  PDFDetail(name: '2559 SAYILI POLİS VAZİFE VE SALAHİYET KANUNU MADDE.6 ÇERÇEVESİNDE 2021 YILINDA UYGULANACAK İDARİ PARA CEZALARI',path: 'assets/idari_para/2.pdf'),
  PDFDetail(name: '4207 SAYILI KANUNDA ÖNGÖRÜLEN İDARİ PARA CEZALARI ve DİĞER İDARİ YAPTIRIMLAR',path: 'assets/idari_para/3.pdf'),
  PDFDetail(name: '4250 SAYILI İSPİRTO VE İSPİRTOLU İÇKİLER İNHİSARI KANUNUNDA ÖNGÖRÜLEN İDARİ PARA CEZALARI ve DİĞER İDARİ YAPTIRIMLAR',path: 'assets/idari_para/4.pdf'),
  PDFDetail(name: '4733 SAYILI TÜTÜN VE ALKOL PİYASASI DÜZENLEME KURUMU TEŞKİLAT VE GÖREVLERİ HAKKINDA KANUN`DAKİ BAZI CEZA MİKTARLARI',path: 'assets/idari_para/5.pdf'),
  PDFDetail(name: '5326 SAYILI KABAHATLER KANUNU ÇERÇEVESİNDE ÇEŞİTLİ KABAHATLERE İLİŞKİN 2021 YILINDA UYGULANACAK İDARİ PARA CEZALARI',path: 'assets/idari_para/6.pdf'),
  PDFDetail(name: '2021 YILI İDARİ PARA CEZALARI',path: 'assets/idari_para/7.pdf'),
];

final sucTasnifleriList = [
  PDFDetail(name: 'Asayiş Olayları Tasnifi',path: 'assets/suc_tasnisfleri/1.pdf'),
  PDFDetail(name: 'Kabahat Olayları Tasnifi',path: 'assets/suc_tasnisfleri/2.pdf'),
  PDFDetail(name: 'Kaçakçılık Olayları Tasnifi',path: 'assets/suc_tasnisfleri/3.pdf'),
  PDFDetail(name: 'Takibi Gereken Olaylar',path: 'assets/suc_tasnisfleri/4.pdf'),
];

final kavramlarList = [
  PDFDetail(name: 'ADLİ KAVRAMLAR',path: 'assets/kavramlar/adli.pdf'),
  PDFDetail(name: 'İDARİ KAVRAMLAR',path: 'assets/kavramlar/idari.pdf'),
];

final tahkikatList = [
  PDFDetail(name: '6136 SAYILI YASAYA MUHALEFET OLAYLARINDA',path: 'assets/tahkikat/1.pdf'),
  PDFDetail(name: 'AİLENİN KORUNMASINA YÖNELİK TEDBİR KARARLARININ İNFAZI',path: 'assets/tahkikat/2.pdf'),
  PDFDetail(name: 'BELGEDE SAHTECİLİK OLAYLARINDA',path: 'assets/tahkikat/3.pdf'),
  PDFDetail(name: 'CİNSEL SALDIRI OLAYLARINDA',path: 'assets/tahkikat/4.pdf'),
  PDFDetail(name: 'CİNSEL TACİZ OLAYLARINDA',path: 'assets/tahkikat/5.pdf'),
  PDFDetail(name: 'ÇOCUKLARIN CİNSEL İSTİSMARI OLAYLARINDA',path: 'assets/tahkikat/6.pdf'),
  PDFDetail(name: 'GENEL GÜVENLİĞİ TEHLİKEYE SOKMA OLAYLARINDA',path: 'assets/tahkikat/7.pdf'),
  PDFDetail(name: 'HAKARET OLAYLARINDA',path: 'assets/tahkikat/8.pdf'),
  PDFDetail(name: 'İZİNSİZ HAŞHAŞ EKİM OLAYLARINDA',path: 'assets/tahkikat/9.pdf'),
  PDFDetail(name: 'HIRSIZLIK OLAYLARINDA',path: 'assets/tahkikat/10.pdf'),
  PDFDetail(name: 'KİŞİYİ HÜRRİYETİNDEN YOKSUN KILMA OLAYLARINDA',path: 'assets/tahkikat/11.pdf'),
  PDFDetail(name: 'KAÇAKÇILIKLA MÜCADALE KANUNUNA MUHALEFET OLAYLARINDA',path: 'assets/tahkikat/12.pdf'),
  PDFDetail(name: 'KAÇAK PETROL OLAYLARINDA',path: 'assets/tahkikat/13.pdf'),
  PDFDetail(name: 'KASTEN ÖLDÜRME OLAYLARINDA',path: 'assets/tahkikat/14.pdf'),
  PDFDetail(name: 'KASTEN YARALAMA OLAYLARINDA',path: 'assets/tahkikat/15.pdf'),
  PDFDetail(name: 'KENEVİR EKİM OLAYLARINDA',path: 'assets/tahkikat/16.pdf'),
  PDFDetail(name: 'KONUT DOKUNULMAZLIĞINI İHLAL OLAYLARINDA',path: 'assets/tahkikat/17.pdf'),
  PDFDetail(name: 'KULLANMAK İÇİN UYUŞTURUCU veya UYARICI MADDE BULUNDURMA OLAYLARINDA',path: 'assets/tahkikat/18.pdf'),
  PDFDetail(name: 'MALA ZARAR VERME OLAYLARINDA',path: 'assets/tahkikat/19.pdf'),
  PDFDetail(name: 'KİŞİLERİN HUZUR ve SÜKUNUNU BOZMA (RAHATSIZ ETME) OLAYLARINDA',path: 'assets/tahkikat/20.pdf'),
  PDFDetail(name: 'REŞİT OLMAYANLA CİNSEL İLİŞKİ OLAYLARINDA ',path: 'assets/tahkikat/21.pdf'),
  PDFDetail(name: 'TAKSİRLE YARALAMA OLAYLARINDA',path: 'assets/tahkikat/22.pdf'),
  PDFDetail(name: 'TEHDİT OLAYLARINDA',path: 'assets/tahkikat/23.pdf'),
  PDFDetail(name: 'TRAFİK GÜVENLİĞİNİ TEHLİKEYE SOKMA OLAYLARINDA',path: 'assets/tahkikat/24.pdf'),
  PDFDetail(name: 'UYUŞTURUCU MADDE TİCARETİ OLAYLARINDA',path: 'assets/tahkikat/25.pdf'),
  PDFDetail(name: 'YAĞMA OLAYLARINDA',path: 'assets/tahkikat/26.pdf'),

];