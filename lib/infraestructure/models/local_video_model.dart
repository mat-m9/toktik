import 'package:toktik/domain/entities/video_post.dart';

class LocalVideoModel{

  final String name;
  final String videoUrl;
  final int likes;
  final int view;

  LocalVideoModel({
    required this.name, 
    required this.videoUrl, 
    required this.likes, 
    required this.view
    });

  factory LocalVideoModel.fromJsonMap(Map<String,dynamic> json) => LocalVideoModel(
    name: json['name'] ?? 'No video name',
    videoUrl: json['videoUrl'],
    likes: json['likes'] ?? 0,
    view: json['views'] ?? 0
  );

  VideoPost toVideoPostEntity() => VideoPost(
    caption: name,
    videoUrl: videoUrl,
    likes: likes,
    view: view
  );
}