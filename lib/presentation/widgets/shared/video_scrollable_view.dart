import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/presentation/widgets/shared/video_buttons.dart';
import 'package:toktik/presentation/widgets/video/full_screen_player.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;
  const VideoScrollableView({
    super.key, 
    required this.videos
    });

  @override
  Widget build(BuildContext context) {
    //PageView permite hacer scroll a pantalla completa
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index){
        final VideoPost videoPost = videos[index];
        return Stack(
          
          children: [
            SizedBox.expand(
              child: FullScreenPlayer(
                caption: videoPost.caption,
                videoUrl: videoPost.videoUrl,
              )
            ),
            //Videp player + gradiente
            //Botones
            Positioned(
              bottom: 40,
              right: 20,
              child: VideoButtons(video:videoPost))
          ],
        );
      },
    );
  }
}