class Character {
  late int char_id;
  late String name;
  late String birthday;
  late List<dynamic> occupation;
  late String img;
  late String status;
  late List<dynamic> appearance;
  late String nickname;
  late String portrayed;
  late String category;
  late List<dynamic> better_call_saul_appearance;

  // Character({
  //   required this.char_id,
  //   required this.name,
  //   required this.birthday,
  //   required this.occupation,
  //   required this.img,
  //   required this.status,
  //   required this.nickname,
  //   required this.portrayed,
  //   required this.category,
  //   required this.better_call_saul_appearance,
  // });
  Character.fromJson(Map<String, dynamic> json) {
    char_id = json['char_id'];
    name = json['name'];
    birthday = json['birthday'];
    occupation = json['occupation'];
    img = json['img'];
    status = json['status'];
    appearance = json['appearance'];
    nickname = json['nickname'];
    portrayed = json['portrayed'];
    category = json['category'];
    better_call_saul_appearance = json['better_call_saul_appearance'];
  }
}
