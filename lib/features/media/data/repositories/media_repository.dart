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

  final TMDBClient _client;

  FutureOr<List<TMDBMedia>> getTrendingMediaList({
    required TMDBMediaType mediaType,
    required TMDBTimeWindow timeWindow,
  }) async {
    // final path =
    //     '${TMDBApiConfigs.trending}/${mediaType.name}/${timeWindow.name}';

    // final response = await _client.get<Map<String, dynamic>>(path);
    final response = {
      'page': 1,
      'results': [
        {
          'adult': false,
          'backdrop_path': '/A5JyEZvXHbPLN2cU65oB9NaIuYH.jpg',
          'id': 768362,
          'title': 'Missing',
          'original_language': 'en',
          'original_title': 'Missing',
          'overview':
              'When her mother disappears while on vacation in Colombia with her new boyfriend, June’s search for answers is hindered by international red tape. Stuck thousands of miles away in Los Angeles, June creatively uses all the latest technology at her fingertips to try and find her before it’s too late. But as she digs deeper, her digital sleuthing raises more questions than answers... and when June unravels secrets about her mom, she discovers that she never really knew her at all.',
          'poster_path': '/qgZuXiDAkXdARlsDzQwmrCpkqpL.jpg',
          'media_type': 'movie',
          'genre_ids': [53, 9648, 18, 27],
          'popularity': 134.015,
          'release_date': '2023-01-19',
          'video': false,
          'vote_average': 7.72,
          'vote_count': 75
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
          'popularity': 374.764,
          'first_air_date': '2013-04-07',
          'vote_average': 8.648,
          'vote_count': 5005,
          'origin_country': ['JP']
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
          'popularity': 6243.954,
          'first_air_date': '2023-01-15',
          'vote_average': 8.814,
          'vote_count': 2353,
          'origin_country': ['US']
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
          'popularity': 26.313,
          'release_date': '2023-02-15',
          'video': false,
          'vote_average': 5.1,
          'vote_count': 27
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
          'popularity': 1819.863,
          'first_air_date': '2019-11-12',
          'vote_average': 8.478,
          'vote_count': 8485,
          'origin_country': ['US']
        },
        {
          'adult': false,
          'backdrop_path': '/wrwnybuMhkzmtmHTbYaIZxZwb4S.jpg',
          'id': 934433,
          'title': 'Scream VI',
          'original_language': 'en',
          'original_title': 'Scream VI',
          'overview':
              'Following the latest Ghostface killings, the four survivors leave Woodsboro behind and start a fresh chapter.',
          'poster_path': '/t2NEaFrNFRCrBIyAETlz5sqq15H.jpg',
          'media_type': 'movie',
          'genre_ids': [27, 9648, 53],
          'popularity': 343.136,
          'release_date': '2023-03-08',
          'video': false,
          'vote_average': 7.3,
          'vote_count': 14
        },
        {
          'adult': false,
          'backdrop_path': '/wUvnilQQ6LWNvSHrYZb5x4ALjL1.jpg',
          'id': 937278,
          'title': 'A Man Called Otto',
          'original_language': 'en',
          'original_title': 'A Man Called Otto',
          'overview':
              'When a lively young family moves in next door, grumpy widower Otto Anderson meets his match in a quick-witted, pregnant woman named Marisol, leading to an unlikely friendship that turns his world upside down.',
          'poster_path': '/130H1gap9lFfiTF9iDrqNIkFvC9.jpg',
          'media_type': 'movie',
          'genre_ids': [35, 18],
          'popularity': 1977.383,
          'release_date': '2022-12-28',
          'video': false,
          'vote_average': 7.8,
          'vote_count': 565
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
          'popularity': 397.966,
          'release_date': '2022-12-22',
          'video': false,
          'vote_average': 7.589,
          'vote_count': 1293
        },
        {
          'adult': false,
          'backdrop_path': '/26YLjaC1udGEmSvlM1P5eBGWO5h.jpg',
          'id': 677179,
          'title': 'Creed III',
          'original_language': 'en',
          'original_title': 'Creed III',
          'overview':
              'After dominating the boxing world, Adonis Creed has been thriving in both his career and family life. When a childhood friend and former boxing prodigy, Damien Anderson, resurfaces after serving a long sentence in prison, he is eager to prove that he deserves his shot in the ring. The face-off between former friends is more than just a fight. To settle the score, Adonis must put his future on the line to battle Damien - a fighter who has nothing to lose.',
          'poster_path': '/cvsXj3I9Q2iyyIo95AecSd1tad7.jpg',
          'media_type': 'movie',
          'genre_ids': [18, 28],
          'popularity': 1627.738,
          'release_date': '2023-03-01',
          'video': false,
          'vote_average': 6.941,
          'vote_count': 221
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
          'popularity': 89.758,
          'first_air_date': '2023-03-06',
          'vote_average': 4.9,
          'vote_count': 5,
          'origin_country': ['US']
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
          'popularity': 628.7,
          'release_date': '2022-12-09',
          'video': false,
          'vote_average': 8.0,
          'vote_count': 868
        },
        {
          'adult': false,
          'backdrop_path': '/8QMWSEeotCy7dhB8EAZgCuNaQtb.jpg',
          'id': 850871,
          'title': 'Sayen',
          'original_language': 'es',
          'original_title': 'Sayen',
          'overview':
              "Sayen is hunting down the men who murdered her grandmother. Using her training and knowledge of nature, she is able to turn the tables on them, learning of a conspiracy from a corporation that threatens her people's ancestral lands.",
          'poster_path': '/aCy61aU7BMG7SfhkaAaasS0KzUO.jpg',
          'media_type': 'movie',
          'genre_ids': [53, 28],
          'popularity': 62.236,
          'release_date': '2023-03-03',
          'video': false,
          'vote_average': 6.4,
          'vote_count': 20
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
          'popularity': 2525.408,
          'release_date': '2022-11-09',
          'video': false,
          'vote_average': 7.339,
          'vote_count': 3937
        },
        {
          'adult': false,
          'backdrop_path': '/b1Y8SUb12gPHCSSSNlbX4nB3IKy.jpg',
          'id': 315162,
          'title': 'Puss in Boots: The Last Wish',
          'original_language': 'en',
          'original_title': 'Puss in Boots: The Last Wish',
          'overview':
              'Puss in Boots discovers that his passion for adventure has taken its toll: He has burned through eight of his nine lives, leaving him with only one life left. Puss sets out on an epic journey to find the mythical Last Wish and restore his nine lives.',
          'poster_path': '/kuf6dutpsT0vSVehic3EZIqkOBt.jpg',
          'media_type': 'movie',
          'genre_ids': [16, 12, 35, 10751],
          'popularity': 2158.063,
          'release_date': '2022-12-07',
          'video': false,
          'vote_average': 8.402,
          'vote_count': 4372
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
          'genre_ids': [99, 10764],
          'popularity': 34.71,
          'first_air_date': '2023-03-08',
          'vote_average': 6.5,
          'vote_count': 2,
          'origin_country': ['GB']
        },
        {
          'adult': false,
          'backdrop_path': '/ovM06PdF3M8wvKb06i4sjW3xoww.jpg',
          'id': 76600,
          'title': 'Avatar: The Way of Water',
          'original_language': 'en',
          'original_title': 'Avatar: The Way of Water',
          'overview':
              'Set more than a decade after the events of the first film, learn the story of the Sully family (Jake, Neytiri, and their kids), the trouble that follows them, the lengths they go to keep each other safe, the battles they fight to stay alive, and the tragedies they endure.',
          'poster_path': '/t6HIqrRAclMCA60NsSmeqe9RmNV.jpg',
          'media_type': 'movie',
          'genre_ids': [878, 12, 28],
          'popularity': 1136.205,
          'release_date': '2022-12-14',
          'video': false,
          'vote_average': 7.729,
          'vote_count': 5654
        },
        {
          'adult': false,
          'backdrop_path': '/wVxlmhk4OS2eCr0wTQcM4zJ20ml.jpg',
          'id': 906221,
          'title': "Magic Mike's Last Dance",
          'original_language': 'en',
          'original_title': "Magic Mike's Last Dance",
          'overview':
              'Mike Lane takes to the stage again after a lengthy hiatus, following a business deal that went bust, leaving him broke and taking bartender gigs in Florida. For what he hopes will be one last hurrah, Mike heads to London with a wealthy socialite who lures him with an offer he can’t refuse… and an agenda all her own. With everything on the line, once Mike discovers what she truly has in mind, will he—and the roster of hot new dancers he’ll have to whip into shape—be able to pull it off?',
          'poster_path': '/5C9rerMqV1X0jnRdbbsM1BswVI2.jpg',
          'media_type': 'movie',
          'genre_ids': [35, 18, 10749],
          'popularity': 948.952,
          'release_date': '2023-02-09',
          'video': false,
          'vote_average': 7.1,
          'vote_count': 111
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
          'genre_ids': [35, 10749],
          'popularity': 28.395,
          'release_date': '2023-03-08',
          'video': false,
          'vote_average': 7.5,
          'vote_count': 2
        },
        {
          'adult': false,
          'backdrop_path': '/4t20ZBChS7o31j2iuROafO8kTLo.jpg',
          'id': 216795,
          'name': 'Rain Dogs',
          'original_language': 'en',
          'original_name': 'Rain Dogs',
          'overview':
              "A wild and punky tale of a mother's love for her daughter, of deep-rooted and passionate friendships, and of brilliance thwarted by poverty and prejudice.",
          'poster_path': '/cA3JlHtx24lEnflydTdX6TReAva.jpg',
          'media_type': 'tv',
          'genre_ids': [18, 35],
          'popularity': 33.362,
          'first_air_date': '2023-03-06',
          'vote_average': 9.0,
          'vote_count': 3,
          'origin_country': ['US']
        },
        {
          'adult': false,
          'backdrop_path': '/6A42xrhuyHboDRCsEOkMI0RZicS.jpg',
          'id': 760099,
          'title': 'Living',
          'original_language': 'en',
          'original_title': 'Living',
          'overview':
              'In 1950s London, a humorless civil servant decides to take time off work to experience life after receiving a grim diagnosis.',
          'poster_path': '/ftUdaxguhUoPAtwTkSLNglAaqfd.jpg',
          'media_type': 'movie',
          'genre_ids': [18],
          'popularity': 62.381,
          'release_date': '2022-11-04',
          'video': false,
          'vote_average': 7.1,
          'vote_count': 87
        }
      ],
      'total_pages': 1000,
      'total_results': 20000
    };
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
