class TodoModel {
  late int id;
  late String avatarUrl;
  late String gravatarId;
  late String starredUrl;
  late String login;
  late String htmlUrl;

  TodoModel({
    required this.login,
    required this.id,
    required this.avatarUrl,
    required this.gravatarId,
    required this.starredUrl,
    required this.htmlUrl,
  });

  TodoModel.fromJson(Map<String, dynamic> json) {
    login = json['login'];
    id = json['id'];
    avatarUrl = json['avatar_url'];
    gravatarId = json['gravatar_id'];
    starredUrl = json['starred_url'];
    htmlUrl = json['html_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['login'] = this.login;
    data['id'] = this.id;
    data['avatar_url'] = this.avatarUrl;
    data['gravatar_id'] = this.gravatarId;
    data['starred_url'] = this.starredUrl;
    return data;
  }
}
