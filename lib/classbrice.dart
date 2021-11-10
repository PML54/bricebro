

class Cartonton {
 int cartonNo;
 int imageNo;
  String categorie="";
  String descriptif="";
  int prixVoulu;

//
  Cartonton({ required this.cartonNo,required this.imageNo,required this.categorie,required this.descriptif,
     required this.prixVoulu});

  factory Cartonton.fromJson(Map<String, dynamic> json) {
    return Cartonton(

        cartonNo : int.parse(json['carton']) ,
        imageNo: int.parse(json['image']) ,
        categorie: json['categorie'] as String,
        descriptif: json['descriptif'] as String,
        prixVoulu: int.parse(json['prix']));
  }
}
