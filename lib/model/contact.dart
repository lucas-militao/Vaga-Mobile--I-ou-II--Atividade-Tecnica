class Contact {
  final int id;
  final String name;
  final String telephone;

  Contact(this.id, this.name, this.telephone);

  Map<String,dynamic> toMap(){
    return <String, dynamic>{
      "id": id,
      "name": name,
      "telephone": telephone
    };
  }
}