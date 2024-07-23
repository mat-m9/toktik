import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:toktik/config/theme/helpers/human_formats.dart';
import 'package:toktik/domain/entities/video_post.dart';

class VideoButtons extends StatelessWidget {
  final VideoPost video;
  const VideoButtons({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton(value: video.likes, iconData: Icons.favorite, color: Colors.red),
        const SizedBox(height: 20,),
        _CustomIconButton(value: video.view, iconData: Icons.remove_red_eye_outlined),
        const SizedBox(height: 20,),
        //animate_do package
        SpinPerfect(
          infinite: true,
          duration: const Duration(seconds: 4),
          child: const _CustomIconButton(
            value: 0, iconData: Icons.motion_photos_on_outlined
          )
        )
      ],
    );
  }
}


class _CustomIconButton extends StatelessWidget {
  final int value;
  final IconData iconData;
  final Color color;

  const _CustomIconButton({
    required this.value, 
    required this.iconData, 
    this.color = Colors.white
    });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(onPressed: (){}, 
        icon: Icon(iconData, color: color, size: 30,)),
        if(value > 0)
          Text(HumanFormats.humanRedableNumber(value.toDouble()))
      ],
    );
  }
}