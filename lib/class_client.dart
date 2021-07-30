// To parse this JSON data, do
//
//     final client = clientFromMap(jsonString);

import 'dart:convert';

List<Client> clientFromMap(String str) =>
    List<Client>.from(json.decode(str).map((x) => Client.fromMap(x)));

String clientToMap(List<Client> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class Client {
  Client({
    required this.id,
    required this.nom,
    required this.prenom,
    required this.adresse,
    required this.codepostale,
    required this.ville,
    required this.departement,
    required this.numero,
    required this.email,
    required this.emailconfirmation,
    required this.mdp,
    required this.mdpconfirmation,
  });

  final String id;
  final String nom;
  final String prenom;
  final String adresse;
  final String codepostale;
  final String ville;
  final String departement;
  final String numero;
  final String email;
  final String emailconfirmation;
  final String mdp;
  final String mdpconfirmation;

  factory Client.fromMap(Map<String, dynamic> json) => Client(
    id: json["id"],
    nom: json["nom"],
    prenom: json["prenom"],
    adresse: json["adresse"],
    codepostale: json["codepostale"],
    ville: json["ville"],
    departement: json["departement"],
    numero: json["numero"],
    email: json["email"],
    emailconfirmation: json["emailconfirmation"],
    mdp: json["mdp"],
    mdpconfirmation: json["mdpconfirmation"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "nom": nom,
    "prenom": prenom,
    "adresse": adresse,
    "codepostale": codepostale,
    "ville": ville,
    "departement": departement,
    "numero": numero,
    "email": email,
    "emailconfirmation": emailconfirmation,
    "mdp": mdp,
    "mdpconfirmation": mdpconfirmation,
  };
}
