import 'package:json_annotation/json_annotation.dart';

part 'project.g.dart';

/// Portfolio project synchronized with the Django REST Framework API.
@JsonSerializable(fieldRename: FieldRename.snake)
class Project {
  const Project({
    this.id,
    required this.title,
    required this.description,
    this.link = '',
    this.image = '',
    // TODO: Add required parameters for description, techStack, and projectUrl
    // TODO: Add optional parameter projectImsageUrl (default '') and nullable id
  });
  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);

  // TODO: Implement factory Project.fromJson(Map<String, dynamic> json)
  // delegating to _$ProjectFromJson(json)

  @JsonKey(includeToJson: false)
  final String? id;
  final String title;
  final String description;
  @JsonKey(defaultValue: '')
  final String link;
  @JsonKey(defaultValue: '')
  final String image;
  // TODO: Declare final String fields for description, techStack, projectUrl,
  // and projectImageUrl (annotated with @JsonKey(defaultValue: ''))

  Map<String, dynamic> toJson() => _$ProjectToJson(this);
  // TODO: Implement Map<String, dynamic> toJson() delegating to _$ProjectToJson(this)
}
