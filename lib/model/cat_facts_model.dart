class CatFactsModel {
  int? id;
  String? name;
  String? status;
  String? specie;
  String? type;
  String? gender;
  String? image;
  List? episode;
  String? url;
  String? created;

  CatFactsModel({
    this.id,
    this.status,
    this.name,
    this.specie,
    this.type,
    this.gender,
    this.image,
    this.episode,
    this.url,
    this.created,
  });

  CatFactsModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    status = json["status"];
    name = json["name"];
    specie = json["species"];
    type = json["type"];
    gender = json["gender"];
    image = json["image"];
    episode = json["episode"];
    url = json["url"];
    created = json["created"];
  }

  // Map helper = {
  //   "id": 108,
  //   "name": "Dr. Xenon Bloom",
  //   "status": "Dead",
  //   "species": "Humanoid",
  //   "type": "Amoeba-Person",
  //   "gender": "Male",
  //   "origin": {"name": "unknown", "url": ""},
  //   "location": {
  //     "name": "Anatomy Park",
  //     "url": "https://rickandmortyapi.com/api/location/5"
  //   },
  //   "image": "https://rickandmortyapi.com/api/character/avatar/108.jpeg",
  //   "episode": ["https://rickandmortyapi.com/api/episode/3"],
  //   "url": "https://rickandmortyapi.com/api/character/108",
  //   "created": "2017-12-26T13:14:12.157Z",
  // };
}
