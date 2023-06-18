import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/features/home/presentation/media_details/controller/media_details.dart';
import 'package:pod_player/pod_player.dart';
import 'package:tmdb_client/tmdb_client.dart';

class CustomVideoPlayerScreen extends StatefulWidget {
  const CustomVideoPlayerScreen({
    required this.tmdbVideoDetails,
    super.key,
  });

  final TmdbVideoDetails tmdbVideoDetails;

  static MaterialPageRoute<void> pageRoute({
    required TmdbVideoDetails tmdbVideoDetails,
  }) {
    return MaterialPageRoute<void>(
      builder: (context) => CustomVideoPlayerScreen(
        tmdbVideoDetails: tmdbVideoDetails,
      ),
    );
  }

  @override
  State<CustomVideoPlayerScreen> createState() =>
      _CustomVideoPlayerScreenState();
}

class _CustomVideoPlayerScreenState extends State<CustomVideoPlayerScreen> {
  late final PodPlayerController controller;

  @override
  void initState() {
    super.initState();
    controller = PodPlayerController(
      playVideoFrom:
          PlayVideoFrom.youtube(widget.tmdbVideoDetails.youtubeVideoUrl),
    )..initialise();
    controller.enableFullScreen();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: PodVideoPlayer(
        controller: controller,
        videoThumbnail: DecorationImage(
          image: CachedNetworkImageProvider(
            widget.tmdbVideoDetails.youtubeThumbnailUrl,
          ),
        ),
      ),
    );
  }
}
