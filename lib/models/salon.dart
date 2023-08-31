import 'dart:convert';

class ListSalon {
  List<Salon> items = [];
  ListSalon();
  ListSalon.fromJsonList(jsonList) {
    if (jsonList == null) return;
    for (var item in jsonList) {
      final salon = Salon.fromJson(item);
      items.add(salon);
    }
  }
}

Salon salonFromJson(String str) => Salon.fromJson(json.decode(str));

String salonToJson(Salon data) => json.encode(data.toJson());

class Salon {
  String matricula;
  String proponente;
  String organizacion;
  String estadoDeLaMatricula;
  String razonSocial;
  String? nit;
  String fechaRenovacion;
  String ultimoAORenovado;
  String fechaConstitucion;
  String direccionComercial;
  String barrioComercial;
  String municipioComercial;
  String emailComercial;
  String ciiu1;
  String ciiu2;
  String ciiu3;
  String ciiu4;
  String actividad;
  String tamaOEmpresa;
  String matriculaPropietario;
  String nitPropietario;
  String camaraDePropietario;
  String nombreDePropietario;
  String direccionPropietario;
  String municipioPropietario;
  String emailPropietario;
  String representanteLegalSuplente;

  Salon(
      {required this.matricula,
      required this.proponente,
      required this.organizacion,
      required this.estadoDeLaMatricula,
      required this.razonSocial,
      required this.fechaRenovacion,
      required this.ultimoAORenovado,
      required this.fechaConstitucion,
      required this.direccionComercial,
      required this.barrioComercial,
      required this.municipioComercial,
      required this.emailComercial,
      required this.ciiu1,
      required this.ciiu2,
      required this.ciiu3,
      required this.ciiu4,
      required this.actividad,
      required this.tamaOEmpresa,
      required this.matriculaPropietario,
      required this.nitPropietario,
      required this.camaraDePropietario,
      required this.nombreDePropietario,
      required this.direccionPropietario,
      required this.municipioPropietario,
      required this.emailPropietario,
      required this.representanteLegalSuplente,
      this.nit});

  factory Salon.fromJson(Map<String, dynamic> json) => Salon(
        matricula: json["matricula"],
        proponente: json["proponente"],
        organizacion: json["organizacion"],
        estadoDeLaMatricula: json["estado_de_la_matricula"],
        razonSocial: json["razon_social"],
        nit: json["nit"],
        fechaRenovacion: json["fecha_renovacion"],
        ultimoAORenovado: json["ultimo_a_o_renovado"],
        fechaConstitucion: json["fecha_constitucion"],
        direccionComercial: json["direccion_comercial"],
        barrioComercial: json["barrio_comercial"],
        municipioComercial: json["municipio_comercial"],
        emailComercial: json["email_comercial"],
        ciiu1: json["ciiu_1"],
        ciiu2: json["ciiu_2"],
        ciiu3: json["ciiu_3"],
        ciiu4: json["ciiu_4"],
        actividad: json["actividad"],
        tamaOEmpresa: json["tama_o_empresa"],
        matriculaPropietario: json["matricula_propietario"],
        nitPropietario: json["nit_propietario"],
        camaraDePropietario: json["camara_de_propietario"],
        nombreDePropietario: json["nombre_de_propietario"],
        direccionPropietario: json["direccion_propietario"],
        municipioPropietario: json["municipio_propietario"],
        emailPropietario: json["email_propietario"],
        representanteLegalSuplente: json["representante_legal_suplente"],
      );

  Map<String, dynamic> toJson() => {
        "matricula": matricula,
        "proponente": proponente,
        "organizacion": organizacion,
        "estado_de_la_matricula": estadoDeLaMatricula,
        "razon_social": razonSocial,
        "nit": nit,
        "fecha_renovacion": fechaRenovacion,
        "ultimo_a_o_renovado": ultimoAORenovado,
        "fecha_constitucion": fechaConstitucion,
        "direccion_comercial": direccionComercial,
        "barrio_comercial": barrioComercial,
        "municipio_comercial": municipioComercial,
        "email_comercial": emailComercial,
        "ciiu_1": ciiu1,
        "ciiu_2": ciiu2,
        "ciiu_3": ciiu3,
        "ciiu_4": ciiu4,
        "actividad": actividad,
        "tama_o_empresa": tamaOEmpresa,
        "matricula_propietario": matriculaPropietario,
        "nit_propietario": nitPropietario,
        "camara_de_propietario": camaraDePropietario,
        "nombre_de_propietario": nombreDePropietario,
        "direccion_propietario": direccionPropietario,
        "municipio_propietario": municipioPropietario,
        "email_propietario": emailPropietario,
        "representante_legal_suplente": representanteLegalSuplente,
      };
}
