import 'package:movie_app/features/media/data/sources/tmdb_client.dart';
import 'package:movie_app/features/media/domain/tmdb_media/tmdb_media.dart';
import 'package:movie_app/features/media/domain/tmdb_paginated_response/tmdb_paginated_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'media_repository.g.dart';

@riverpod
MediaRepository mediaRepository(MediaRepositoryRef ref) {
  return MediaRepository(tmdbClient: ref.read(tMDBClientProvider));
}

class MediaRepository {
  MediaRepository({
    required TMDBClient tmdbClient,
  }) : _client = tmdbClient;

  // ignore: unused_field
  final TMDBClient _client;

  FutureOr<List<TMDBMedia>> getTrendingMediaList({
    required TMDBMediaType mediaType,
    required TMDBTimeWindow timeWindow,
  }) async {
    // final path =
    //     '${TMDBApiConfigs.trending}/${mediaType.name}/${timeWindow.name}';

    // final response = await _client.get<Map<String, dynamic>>(path);
    await Future<void>.delayed(const Duration(seconds: 1));
    final response = sampleResponse;
    // if (response.data == null) {
    //   throw Exception('No data found');
    // } else {
    //   final paginatedResponse = TMDBPaginatedResponse.fromJson(response.data!);
    //   return paginatedResponse.results.map(TMDBMedia.fromJson).toList();
    // }
    final paginatedResponse = TMDBPaginatedResponse.fromJson(response);
    return paginatedResponse.results.map(TMDBMedia.fromJson).toList();
  }
}

Map<String, Object> sampleResponse = {
  'page': 1,
  'results': [
    {
      'adult': false,
      'backdrop_path': '/6ZZjNFjTlO9F25467CruIibwuxl.jpg',
      'id': 739405,
      'title': 'Operation Fortune: Ruse de Guerre',
      'original_language': 'en',
      'original_title': 'Operation Fortune: Ruse de Guerre',
      'overview':
          "Special agent Orson Fortune and his team of operatives recruit one of Hollywood's biggest movie stars to help them on an undercover mission when the sale of a deadly new weapons technology threatens to disrupt the world order.",
      'poster_path': '/vQGw9lzfh9hEoYSOWAE5XbZ6J7s.jpg',
      'media_type': 'movie',
      'genre_ids': [28, 53, 35],
      'popularity': 135.243,
      'release_date': '2023-01-04',
      'video': false,
      'vote_average': 6.778,
      'vote_count': 97
    },
    {
      'adult': false,
      'backdrop_path': '/A5JyEZvXHbPLN2cU65oB9NaIuYH.jpg',
      'id': 768362,
      'title': 'Missing',
      'original_language': 'en',
      'original_title': 'Missing',
      'overview':
          'When her mother disappears while on vacation in Colombia with her new boyfriend, June’s search for answers is hindered by international red tape. Stuck thousands of miles away in Los Angeles, June creatively uses all the latest technology at her fingertips to try and find her before it’s too late. But as she digs deeper, her digital sleuthing raises more questions than answers... and when June unravels secrets about her mom, she discovers that she never really knew her at all.',
      'poster_path': '/wEOUYSU5Uf8J7152PT6jdb5233Y.jpg',
      'media_type': 'movie',
      'genre_ids': [53, 9648, 18, 27],
      'popularity': 262.669,
      'release_date': '2023-01-19',
      'video': false,
      'vote_average': 7.807,
      'vote_count': 96
    },
    {
      'adult': false,
      'backdrop_path': '/ae4xZiU7IeFVrvXxm2GjdcTrBm.jpg',
      'id': 934433,
      'title': 'Scream VI',
      'original_language': 'en',
      'original_title': 'Scream VI',
      'overview':
          'Following the latest Ghostface killings, the four survivors leave Woodsboro behind and start a fresh chapter.',
      'poster_path': '/t2NEaFrNFRCrBIyAETlz5sqq15H.jpg',
      'media_type': 'movie',
      'genre_ids': [27, 9648, 53],
      'popularity': 588.087,
      'release_date': '2023-03-08',
      'video': false,
      'vote_average': 7.58,
      'vote_count': 56
    },
    {
      'adult': false,
      'backdrop_path': '/rqbCbjB19amtOtFQbb3K2lgm2zv.jpg',
      'id': 1429,
      'name': 'Attack on Titan',
      'original_language': 'ja',
      'original_name': '進撃の巨人',
      'overview':
          'Several hundred years ago, humans were nearly exterminated by Titans. Titans are typically several stories tall, seem to have no intelligence, devour human beings and, worst of all, seem to do it for the pleasure rather than as a food source. A small percentage of humanity survived by walling themselves in a city protected by extremely high walls, even taller than the biggest Titans. Flash forward to the present and the city has not seen a Titan in over 100 years. Teenage boy Eren and his foster sister Mikasa witness something horrific as the city walls are destroyed by a Colossal Titan that appears out of thin air. As the smaller Titans flood the city, the two kids watch in horror as their mother is eaten alive. Eren vows that he will murder every single Titan and take revenge for all of mankind.',
      'poster_path': '/sHim6U0ANsbzxcmNRYuIubBVQaz.jpg',
      'media_type': 'tv',
      'genre_ids': [10765, 16, 10759],
      'popularity': 285.585,
      'first_air_date': '2013-04-07',
      'vote_average': 8.648,
      'vote_count': 5017,
      'origin_country': ['JP']
    },
    {
      'adult': false,
      'backdrop_path': '/fJHUv0stNG1XDvHvgyiBVu2auMq.jpg',
      'id': 844417,
      'title': 'Marlowe',
      'original_language': 'en',
      'original_title': 'Marlowe',
      'overview':
          'As poor business and loneliness tolls on private detective Philip Marlowe, a beautiful blonde arrives and asks him to find her ex-lover, which proves to be just a small part in a bigger mystery.',
      'poster_path': '/th6vfqUtkGx69NI9TGa9gpOl7xg.jpg',
      'media_type': 'movie',
      'genre_ids': [9648, 53, 80],
      'popularity': 51.573,
      'release_date': '2023-02-15',
      'video': false,
      'vote_average': 5.439,
      'vote_count': 33
    },
    {
      'adult': false,
      'backdrop_path': '/6Lw54zxm6BAEKJeGlabyzzR5Juu.jpg',
      'id': 82856,
      'name': 'The Mandalorian',
      'original_language': 'en',
      'original_name': 'The Mandalorian',
      'overview':
          'After the fall of the Galactic Empire, lawlessness has spread throughout the galaxy. A lone gunfighter makes his way through the outer reaches, earning his keep as a bounty hunter.',
      'poster_path': '/eU1i6eHXlzMOlEq0ku1Rzq7Y4wA.jpg',
      'media_type': 'tv',
      'genre_ids': [10765, 10759, 18],
      'popularity': 1607.738,
      'first_air_date': '2019-11-12',
      'vote_average': 8.478,
      'vote_count': 8499,
      'origin_country': ['US']
    },
    {
      'adult': false,
      'backdrop_path': '/pUptUgPYwdNVSzMNRcUUs7WZ2Ap.jpg',
      'id': 1081291,
      'title': 'Faraway',
      'original_language': 'de',
      'original_title': 'Faraway',
      'overview':
          'Zeynep Altin (Naomi Krauss) is at the end of her tether. She’s over-worked and pushed around by her husband, daughter and aging father. Her mother’s death and her funeral, which nearly ends in total disaster, is the last straw for Zeynep – she leaves Munich and escapes to an island in Croatia. In the house her mother bought secretly years ago, and gifted to her in her will, she hopes to find peace, freedom and herself. If only the former owner, Josip, an islander through and through, wasn’t still living on the same property…',
      'poster_path': '/v4czyy4HQuOMQtGCCB9N6JcvJwT.jpg',
      'media_type': 'movie',
      'genre_ids': [10749, 35],
      'popularity': 55.654,
      'release_date': '2023-03-08',
      'video': false,
      'vote_average': 6.167,
      'vote_count': 9
    },
    {
      'adult': false,
      'backdrop_path': '/uDgy6hyPd82kOHh6I95FLtLnj6p.jpg',
      'id': 100088,
      'name': 'The Last of Us',
      'original_language': 'en',
      'original_name': 'The Last of Us',
      'overview':
          'Twenty years after modern civilization has been destroyed, Joel, a hardened survivor, is hired to smuggle Ellie, a 14-year-old girl, out of an oppressive quarantine zone. What starts as a small job soon becomes a brutal, heartbreaking journey, as they both must traverse the United States and depend on each other for survival.',
      'poster_path': '/uKvVjHNqB5VmOrdxqAt2F7J78ED.jpg',
      'media_type': 'tv',
      'genre_ids': [18],
      'popularity': 3795.042,
      'first_air_date': '2023-01-15',
      'vote_average': 8.818,
      'vote_count': 2393,
      'origin_country': ['US']
    },
    {
      'adult': false,
      'backdrop_path': '/qsHt4rqzSbryz8B1wCPCBvXUld3.jpg',
      'id': 220499,
      'name': 'MH370: The Plane That Disappeared',
      'original_language': 'en',
      'original_name': 'MH370: The Plane That Disappeared',
      'overview':
          'In 2014, a plane with 239 people aboard vanishes from all radar. This docuseries delves into one of our greatest modern mysteries: Flight MH370.',
      'poster_path': '/eKWmv4TOPzXyWY4myW5fW1LTjcW.jpg',
      'media_type': 'tv',
      'genre_ids': [99],
      'popularity': 68.032,
      'first_air_date': '2023-03-08',
      'vote_average': 7.6,
      'vote_count': 15,
      'origin_country': ['GB']
    },
    {
      'adult': false,
      'backdrop_path': '/aeksAhU6dZl0Fclm3dBRt6cKBmD.jpg',
      'id': 942922,
      'title': '80 for Brady',
      'original_language': 'en',
      'original_title': '80 for Brady',
      'overview':
          'A quartet of elderly best friends decide to live life to the fullest by taking a wild trip to the Super Bowl LI to see their hero Tom Brady play.',
      'poster_path': '/jixBLmH4gQuTKTenZr89egvqZbW.jpg',
      'media_type': 'movie',
      'genre_ids': [35],
      'popularity': 69.278,
      'release_date': '2023-02-03',
      'video': false,
      'vote_average': 6.308,
      'vote_count': 13
    },
    {
      'adult': false,
      'backdrop_path': '/vmaiCsfTQ2SSfMSWsPHcFSubPpD.jpg',
      'id': 78191,
      'name': 'You',
      'original_language': 'en',
      'original_name': 'You',
      'overview':
          'A dangerously charming, intensely obsessive young man goes to extreme measures to insert himself into the lives of those he is transfixed by.',
      'poster_path': '/7bEYwjUvlJW7GerM8GYmqwl4oS3.jpg',
      'media_type': 'tv',
      'genre_ids': [9648, 80, 18],
      'popularity': 611.302,
      'first_air_date': '2018-09-09',
      'vote_average': 8.118,
      'vote_count': 2511,
      'origin_country': ['US']
    },
    {
      'adult': false,
      'backdrop_path': '/1LyPGN2D5MtMeCPzmfq5QC5zaXv.jpg',
      'id': 202213,
      'name': 'History of the World, Part II',
      'original_language': 'en',
      'original_name': 'History of the World, Part II',
      'overview':
          'Explore different periods of human history through a variety of sketches.',
      'poster_path': '/6PlHUsScubMx3VADGRh1kIylML2.jpg',
      'media_type': 'tv',
      'genre_ids': [35],
      'popularity': 145.296,
      'first_air_date': '2023-03-06',
      'vote_average': 5.65,
      'vote_count': 10,
      'origin_country': ['US']
    },
    {
      'adult': false,
      'backdrop_path': '/5i6SjyDbDWqyun8klUuCxrlFbyw.jpg',
      'id': 677179,
      'title': 'Creed III',
      'original_language': 'en',
      'original_title': 'Creed III',
      'overview':
          'After dominating the boxing world, Adonis Creed has been thriving in both his career and family life. When a childhood friend and former boxing prodigy, Damien Anderson, resurfaces after serving a long sentence in prison, he is eager to prove that he deserves his shot in the ring. The face-off between former friends is more than just a fight. To settle the score, Adonis must put his future on the line to battle Damien - a fighter who has nothing to lose.',
      'poster_path': '/cvsXj3I9Q2iyyIo95AecSd1tad7.jpg',
      'media_type': 'movie',
      'genre_ids': [18, 28],
      'popularity': 1427.727,
      'release_date': '2023-03-01',
      'video': false,
      'vote_average': 7.0,
      'vote_count': 257
    },
    {
      'adult': false,
      'backdrop_path': '/kHwVieve8p8EtLZ9iFbc0W7pjme.jpg',
      'id': 937278,
      'title': 'A Man Called Otto',
      'original_language': 'en',
      'original_title': 'A Man Called Otto',
      'overview':
          'When a lively young family moves in next door, grumpy widower Otto Anderson meets his match in a quick-witted, pregnant woman named Marisol, leading to an unlikely friendship that turns his world upside down.',
      'poster_path': '/130H1gap9lFfiTF9iDrqNIkFvC9.jpg',
      'media_type': 'movie',
      'genre_ids': [35, 18],
      'popularity': 1765.887,
      'release_date': '2022-12-28',
      'video': false,
      'vote_average': 7.878,
      'vote_count': 603
    },
    {
      'adult': false,
      'backdrop_path': '/5fxTB08O7CW1hAcN2MWOKodp1h1.jpg',
      'id': 615777,
      'title': 'Babylon',
      'original_language': 'en',
      'original_title': 'Babylon',
      'overview':
          "A tale of outsized ambition and outrageous excess, tracing the rise and fall of multiple characters in an era of unbridled decadence and depravity during Hollywood's transition from silent films and to sound films in the late 1920s.",
      'poster_path': '/wjOHjWCUE0YzDiEzKv8AfqHj3ir.jpg',
      'media_type': 'movie',
      'genre_ids': [18, 35],
      'popularity': 345.906,
      'release_date': '2022-12-22',
      'video': false,
      'vote_average': 7.591,
      'vote_count': 1308
    },
    {
      'adult': false,
      'backdrop_path': '/r7Dfg9aRZ78gJsmDlCirIIlNH3d.jpg',
      'id': 785084,
      'title': 'The Whale',
      'original_language': 'en',
      'original_title': 'The Whale',
      'overview':
          'A reclusive English teacher suffering from severe obesity attempts to reconnect with his estranged teenage daughter for one last chance at redemption.',
      'poster_path': '/jQ0gylJMxWSL490sy0RrPj1Lj7e.jpg',
      'media_type': 'movie',
      'genre_ids': [18],
      'popularity': 613.685,
      'release_date': '2022-12-09',
      'video': false,
      'vote_average': 8.007,
      'vote_count': 916
    },
    {
      'adult': false,
      'backdrop_path': '/A3m5GJu5kzAKK2wkGlzErlCCElT.jpg',
      'id': 900667,
      'title': 'One Piece Film Red',
      'original_language': 'ja',
      'original_title': 'ONE PIECE FILM RED',
      'overview':
          'Uta — the most beloved singer in the world. Her voice, which she sings with while concealing her true identity, has been described as “otherworldly.” She will appear in public for the first time at a live concert. As the venue fills with all kinds of Uta fans — excited pirates, the Navy watching closely, and the Straw Hats led by Luffy who simply came to enjoy her sonorous performance — the voice that the whole world has been waiting for is about to resound.',
      'poster_path': '/LQodiqLLJc8N19HUJZ8DMMkfpe.jpg',
      'media_type': 'movie',
      'genre_ids': [16, 12, 28, 14],
      'popularity': 179.351,
      'release_date': '2022-08-06',
      'video': false,
      'vote_average': 7.442,
      'vote_count': 347
    },
    {
      'adult': false,
      'backdrop_path': '/2Wk2p4ZXZXzJN69rWk9oNJxwZqN.jpg',
      'id': 211240,
      'name': 'The Swarm',
      'original_language': 'en',
      'original_name': 'The Swarm',
      'overview':
          'Mysterious events are piling up in the oceans around the world: whales destroy boats, deep-sea crabs attack beaches, mussels paralyze container ships. A previously unknown ice worm destabilizes continental slopes in the oceans and triggers tsunamis. A deadly pathogen is spreading from the coasts in drinking water. More and more people in the world are in mortal danger. On the feverish search for the causes of the mysterious phenomena, a small group of international scientists comes together and the previously unthinkable finally becomes a certainty. A previously unknown species exists in the sea and this swarm intelligence is attacking mankind. But hardly anyone believes the researchers. And so the group dares to go on a life-threatening mission on their own. The traces lead them with their research ship into the eternal ice of the Arctic Ocean. An ecological thriller based on the international bestselling novel by Frank Schätzing. The most expensive German TV production of all time.',
      'poster_path': '/lNdibhy8GbRCIxVHB2IhNg6esHk.jpg',
      'media_type': 'tv',
      'genre_ids': [18, 10765, 9648],
      'popularity': 872.132,
      'first_air_date': '2023-03-06',
      'vote_average': 7.1,
      'vote_count': 12,
      'origin_country': ['DE']
    },
    {
      'adult': false,
      'backdrop_path': '/jr8tSoJGj33XLgFBy6lmZhpGQNu.jpg',
      'id': 315162,
      'title': 'Puss in Boots: The Last Wish',
      'original_language': 'en',
      'original_title': 'Puss in Boots: The Last Wish',
      'overview':
          'Puss in Boots discovers that his passion for adventure has taken its toll: He has burned through eight of his nine lives, leaving him with only one life left. Puss sets out on an epic journey to find the mythical Last Wish and restore his nine lives.',
      'poster_path': '/kuf6dutpsT0vSVehic3EZIqkOBt.jpg',
      'media_type': 'movie',
      'genre_ids': [16, 12, 35, 10751],
      'popularity': 2004.115,
      'release_date': '2022-12-07',
      'video': false,
      'vote_average': 8.405,
      'vote_count': 4402
    },
    {
      'adult': false,
      'backdrop_path': '/xDMIl84Qo5Tsu62c9DGWhmPI67A.jpg',
      'id': 505642,
      'title': 'Black Panther: Wakanda Forever',
      'original_language': 'en',
      'original_title': 'Black Panther: Wakanda Forever',
      'overview':
          'Queen Ramonda, Shuri, M’Baku, Okoye and the Dora Milaje fight to protect their nation from intervening world powers in the wake of King T’Challa’s death.  As the Wakandans strive to embrace their next chapter, the heroes must band together with the help of War Dog Nakia and Everett Ross and forge a new path for the kingdom of Wakanda.',
      'poster_path': '/sv1xJUazXeYqALzczSZ3O6nkH75.jpg',
      'media_type': 'movie',
      'genre_ids': [28, 12, 878],
      'popularity': 2159.377,
      'release_date': '2022-11-09',
      'video': false,
      'vote_average': 7.338,
      'vote_count': 3958
    }
  ],
  'total_pages': 1000,
  'total_results': 20000
};
