// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'programme.dart';

class ProgrammeMapper extends ClassMapperBase<Programme> {
  ProgrammeMapper._();

  static ProgrammeMapper? _instance;
  static ProgrammeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ProgrammeMapper._());
      TitleMapper.ensureInitialized();
      SubTitleMapper.ensureInitialized();
      DescriptionMapper.ensureInitialized();
      CategoryMapper.ensureInitialized();
      KeywordMapper.ensureInitialized();
      IconMapper.ensureInitialized();
      UrlMapper.ensureInitialized();
      CountryMapper.ensureInitialized();
      EpisodeNumberMapper.ensureInitialized();
      SubtitlesMapper.ensureInitialized();
      RatingMapper.ensureInitialized();
      StarRatingMapper.ensureInitialized();
      ReviewMapper.ensureInitialized();
      ImageMapper.ensureInitialized();
      CreditsMapper.ensureInitialized();
      LanguageMapper.ensureInitialized();
      OriginalLanguageMapper.ensureInitialized();
      LengthMapper.ensureInitialized();
      VideoMapper.ensureInitialized();
      AudioMapper.ensureInitialized();
      PreviouslyShownMapper.ensureInitialized();
      PremiereMapper.ensureInitialized();
      LastChanceMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Programme';

  static DateTime _$start(Programme v) => v.start;
  static const Field<Programme, DateTime> _f$start = Field('start', _$start);
  static String _$channel(Programme v) => v.channel;
  static const Field<Programme, String> _f$channel =
      Field('channel', _$channel);
  static String _$clumpidx(Programme v) => v.clumpidx;
  static const Field<Programme, String> _f$clumpidx =
      Field('clumpidx', _$clumpidx);
  static List<Title> _$titles(Programme v) => v.titles;
  static const Field<Programme, List<Title>> _f$titles =
      Field('titles', _$titles);
  static List<SubTitle> _$subTitles(Programme v) => v.subTitles;
  static const Field<Programme, List<SubTitle>> _f$subTitles =
      Field('subTitles', _$subTitles);
  static List<Description> _$descs(Programme v) => v.descs;
  static const Field<Programme, List<Description>> _f$descs =
      Field('descs', _$descs);
  static List<Category> _$categories(Programme v) => v.categories;
  static const Field<Programme, List<Category>> _f$categories =
      Field('categories', _$categories);
  static List<Keyword> _$keywords(Programme v) => v.keywords;
  static const Field<Programme, List<Keyword>> _f$keywords =
      Field('keywords', _$keywords);
  static List<Icon> _$icons(Programme v) => v.icons;
  static const Field<Programme, List<Icon>> _f$icons = Field('icons', _$icons);
  static List<Url> _$urls(Programme v) => v.urls;
  static const Field<Programme, List<Url>> _f$urls = Field('urls', _$urls);
  static List<Country> _$countries(Programme v) => v.countries;
  static const Field<Programme, List<Country>> _f$countries =
      Field('countries', _$countries);
  static List<EpisodeNumber> _$episodeNums(Programme v) => v.episodeNums;
  static const Field<Programme, List<EpisodeNumber>> _f$episodeNums =
      Field('episodeNums', _$episodeNums);
  static bool _$isNew(Programme v) => v.isNew;
  static const Field<Programme, bool> _f$isNew = Field('isNew', _$isNew);
  static List<Subtitles> _$subtitles(Programme v) => v.subtitles;
  static const Field<Programme, List<Subtitles>> _f$subtitles =
      Field('subtitles', _$subtitles);
  static List<Rating> _$ratings(Programme v) => v.ratings;
  static const Field<Programme, List<Rating>> _f$ratings =
      Field('ratings', _$ratings);
  static List<StarRating> _$starRatings(Programme v) => v.starRatings;
  static const Field<Programme, List<StarRating>> _f$starRatings =
      Field('starRatings', _$starRatings);
  static List<Review> _$reviews(Programme v) => v.reviews;
  static const Field<Programme, List<Review>> _f$reviews =
      Field('reviews', _$reviews);
  static List<Image> _$images(Programme v) => v.images;
  static const Field<Programme, List<Image>> _f$images =
      Field('images', _$images);
  static DateTime? _$stop(Programme v) => v.stop;
  static const Field<Programme, DateTime> _f$stop =
      Field('stop', _$stop, opt: true);
  static DateTime? _$pdcStart(Programme v) => v.pdcStart;
  static const Field<Programme, DateTime> _f$pdcStart =
      Field('pdcStart', _$pdcStart, opt: true);
  static DateTime? _$vpsStart(Programme v) => v.vpsStart;
  static const Field<Programme, DateTime> _f$vpsStart =
      Field('vpsStart', _$vpsStart, opt: true);
  static String? _$showview(Programme v) => v.showview;
  static const Field<Programme, String> _f$showview =
      Field('showview', _$showview, opt: true);
  static String? _$videoplus(Programme v) => v.videoplus;
  static const Field<Programme, String> _f$videoplus =
      Field('videoplus', _$videoplus, opt: true);
  static Credits? _$credits(Programme v) => v.credits;
  static const Field<Programme, Credits> _f$credits =
      Field('credits', _$credits, opt: true);
  static String? _$date(Programme v) => v.date;
  static const Field<Programme, String> _f$date =
      Field('date', _$date, opt: true);
  static Language? _$language(Programme v) => v.language;
  static const Field<Programme, Language> _f$language =
      Field('language', _$language, opt: true);
  static OriginalLanguage? _$origLanguage(Programme v) => v.origLanguage;
  static const Field<Programme, OriginalLanguage> _f$origLanguage =
      Field('origLanguage', _$origLanguage, opt: true);
  static Length? _$length(Programme v) => v.length;
  static const Field<Programme, Length> _f$length =
      Field('length', _$length, opt: true);
  static Video? _$video(Programme v) => v.video;
  static const Field<Programme, Video> _f$video =
      Field('video', _$video, opt: true);
  static Audio? _$audio(Programme v) => v.audio;
  static const Field<Programme, Audio> _f$audio =
      Field('audio', _$audio, opt: true);
  static PreviouslyShown? _$previouslyShown(Programme v) => v.previouslyShown;
  static const Field<Programme, PreviouslyShown> _f$previouslyShown =
      Field('previouslyShown', _$previouslyShown, opt: true);
  static Premiere? _$premiere(Programme v) => v.premiere;
  static const Field<Programme, Premiere> _f$premiere =
      Field('premiere', _$premiere, opt: true);
  static LastChance? _$lastChance(Programme v) => v.lastChance;
  static const Field<Programme, LastChance> _f$lastChance =
      Field('lastChance', _$lastChance, opt: true);

  @override
  final MappableFields<Programme> fields = const {
    #start: _f$start,
    #channel: _f$channel,
    #clumpidx: _f$clumpidx,
    #titles: _f$titles,
    #subTitles: _f$subTitles,
    #descs: _f$descs,
    #categories: _f$categories,
    #keywords: _f$keywords,
    #icons: _f$icons,
    #urls: _f$urls,
    #countries: _f$countries,
    #episodeNums: _f$episodeNums,
    #isNew: _f$isNew,
    #subtitles: _f$subtitles,
    #ratings: _f$ratings,
    #starRatings: _f$starRatings,
    #reviews: _f$reviews,
    #images: _f$images,
    #stop: _f$stop,
    #pdcStart: _f$pdcStart,
    #vpsStart: _f$vpsStart,
    #showview: _f$showview,
    #videoplus: _f$videoplus,
    #credits: _f$credits,
    #date: _f$date,
    #language: _f$language,
    #origLanguage: _f$origLanguage,
    #length: _f$length,
    #video: _f$video,
    #audio: _f$audio,
    #previouslyShown: _f$previouslyShown,
    #premiere: _f$premiere,
    #lastChance: _f$lastChance,
  };

  static Programme _instantiate(DecodingData data) {
    return Programme(
        start: data.dec(_f$start),
        channel: data.dec(_f$channel),
        clumpidx: data.dec(_f$clumpidx),
        titles: data.dec(_f$titles),
        subTitles: data.dec(_f$subTitles),
        descs: data.dec(_f$descs),
        categories: data.dec(_f$categories),
        keywords: data.dec(_f$keywords),
        icons: data.dec(_f$icons),
        urls: data.dec(_f$urls),
        countries: data.dec(_f$countries),
        episodeNums: data.dec(_f$episodeNums),
        isNew: data.dec(_f$isNew),
        subtitles: data.dec(_f$subtitles),
        ratings: data.dec(_f$ratings),
        starRatings: data.dec(_f$starRatings),
        reviews: data.dec(_f$reviews),
        images: data.dec(_f$images),
        stop: data.dec(_f$stop),
        pdcStart: data.dec(_f$pdcStart),
        vpsStart: data.dec(_f$vpsStart),
        showview: data.dec(_f$showview),
        videoplus: data.dec(_f$videoplus),
        credits: data.dec(_f$credits),
        date: data.dec(_f$date),
        language: data.dec(_f$language),
        origLanguage: data.dec(_f$origLanguage),
        length: data.dec(_f$length),
        video: data.dec(_f$video),
        audio: data.dec(_f$audio),
        previouslyShown: data.dec(_f$previouslyShown),
        premiere: data.dec(_f$premiere),
        lastChance: data.dec(_f$lastChance));
  }

  @override
  final Function instantiate = _instantiate;

  static Programme fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Programme>(map);
  }

  static Programme fromJson(String json) {
    return ensureInitialized().decodeJson<Programme>(json);
  }
}

mixin ProgrammeMappable {
  String toJson() {
    return ProgrammeMapper.ensureInitialized()
        .encodeJson<Programme>(this as Programme);
  }

  Map<String, dynamic> toMap() {
    return ProgrammeMapper.ensureInitialized()
        .encodeMap<Programme>(this as Programme);
  }

  ProgrammeCopyWith<Programme, Programme, Programme> get copyWith =>
      _ProgrammeCopyWithImpl<Programme, Programme>(
          this as Programme, $identity, $identity);
  @override
  String toString() {
    return ProgrammeMapper.ensureInitialized()
        .stringifyValue(this as Programme);
  }

  @override
  bool operator ==(Object other) {
    return ProgrammeMapper.ensureInitialized()
        .equalsValue(this as Programme, other);
  }

  @override
  int get hashCode {
    return ProgrammeMapper.ensureInitialized().hashValue(this as Programme);
  }
}

extension ProgrammeValueCopy<$R, $Out> on ObjectCopyWith<$R, Programme, $Out> {
  ProgrammeCopyWith<$R, Programme, $Out> get $asProgramme =>
      $base.as((v, t, t2) => _ProgrammeCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ProgrammeCopyWith<$R, $In extends Programme, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Title, TitleCopyWith<$R, Title, Title>> get titles;
  ListCopyWith<$R, SubTitle, SubTitleCopyWith<$R, SubTitle, SubTitle>>
      get subTitles;
  ListCopyWith<$R, Description,
      DescriptionCopyWith<$R, Description, Description>> get descs;
  ListCopyWith<$R, Category, CategoryCopyWith<$R, Category, Category>>
      get categories;
  ListCopyWith<$R, Keyword, KeywordCopyWith<$R, Keyword, Keyword>> get keywords;
  ListCopyWith<$R, Icon, IconCopyWith<$R, Icon, Icon>> get icons;
  ListCopyWith<$R, Url, UrlCopyWith<$R, Url, Url>> get urls;
  ListCopyWith<$R, Country, CountryCopyWith<$R, Country, Country>>
      get countries;
  ListCopyWith<$R, EpisodeNumber,
      EpisodeNumberCopyWith<$R, EpisodeNumber, EpisodeNumber>> get episodeNums;
  ListCopyWith<$R, Subtitles, SubtitlesCopyWith<$R, Subtitles, Subtitles>>
      get subtitles;
  ListCopyWith<$R, Rating, RatingCopyWith<$R, Rating, Rating>> get ratings;
  ListCopyWith<$R, StarRating, StarRatingCopyWith<$R, StarRating, StarRating>>
      get starRatings;
  ListCopyWith<$R, Review, ReviewCopyWith<$R, Review, Review>> get reviews;
  ListCopyWith<$R, Image, ImageCopyWith<$R, Image, Image>> get images;
  CreditsCopyWith<$R, Credits, Credits>? get credits;
  LanguageCopyWith<$R, Language, Language>? get language;
  OriginalLanguageCopyWith<$R, OriginalLanguage, OriginalLanguage>?
      get origLanguage;
  LengthCopyWith<$R, Length, Length>? get length;
  VideoCopyWith<$R, Video, Video>? get video;
  AudioCopyWith<$R, Audio, Audio>? get audio;
  PreviouslyShownCopyWith<$R, PreviouslyShown, PreviouslyShown>?
      get previouslyShown;
  PremiereCopyWith<$R, Premiere, Premiere>? get premiere;
  LastChanceCopyWith<$R, LastChance, LastChance>? get lastChance;
  $R call(
      {DateTime? start,
      String? channel,
      String? clumpidx,
      List<Title>? titles,
      List<SubTitle>? subTitles,
      List<Description>? descs,
      List<Category>? categories,
      List<Keyword>? keywords,
      List<Icon>? icons,
      List<Url>? urls,
      List<Country>? countries,
      List<EpisodeNumber>? episodeNums,
      bool? isNew,
      List<Subtitles>? subtitles,
      List<Rating>? ratings,
      List<StarRating>? starRatings,
      List<Review>? reviews,
      List<Image>? images,
      DateTime? stop,
      DateTime? pdcStart,
      DateTime? vpsStart,
      String? showview,
      String? videoplus,
      Credits? credits,
      String? date,
      Language? language,
      OriginalLanguage? origLanguage,
      Length? length,
      Video? video,
      Audio? audio,
      PreviouslyShown? previouslyShown,
      Premiere? premiere,
      LastChance? lastChance});
  ProgrammeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ProgrammeCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Programme, $Out>
    implements ProgrammeCopyWith<$R, Programme, $Out> {
  _ProgrammeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Programme> $mapper =
      ProgrammeMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Title, TitleCopyWith<$R, Title, Title>> get titles =>
      ListCopyWith($value.titles, (v, t) => v.copyWith.$chain(t),
          (v) => call(titles: v));
  @override
  ListCopyWith<$R, SubTitle, SubTitleCopyWith<$R, SubTitle, SubTitle>>
      get subTitles => ListCopyWith($value.subTitles,
          (v, t) => v.copyWith.$chain(t), (v) => call(subTitles: v));
  @override
  ListCopyWith<$R, Description,
          DescriptionCopyWith<$R, Description, Description>>
      get descs => ListCopyWith(
          $value.descs, (v, t) => v.copyWith.$chain(t), (v) => call(descs: v));
  @override
  ListCopyWith<$R, Category, CategoryCopyWith<$R, Category, Category>>
      get categories => ListCopyWith($value.categories,
          (v, t) => v.copyWith.$chain(t), (v) => call(categories: v));
  @override
  ListCopyWith<$R, Keyword, KeywordCopyWith<$R, Keyword, Keyword>>
      get keywords => ListCopyWith($value.keywords,
          (v, t) => v.copyWith.$chain(t), (v) => call(keywords: v));
  @override
  ListCopyWith<$R, Icon, IconCopyWith<$R, Icon, Icon>> get icons =>
      ListCopyWith(
          $value.icons, (v, t) => v.copyWith.$chain(t), (v) => call(icons: v));
  @override
  ListCopyWith<$R, Url, UrlCopyWith<$R, Url, Url>> get urls => ListCopyWith(
      $value.urls, (v, t) => v.copyWith.$chain(t), (v) => call(urls: v));
  @override
  ListCopyWith<$R, Country, CountryCopyWith<$R, Country, Country>>
      get countries => ListCopyWith($value.countries,
          (v, t) => v.copyWith.$chain(t), (v) => call(countries: v));
  @override
  ListCopyWith<$R, EpisodeNumber,
          EpisodeNumberCopyWith<$R, EpisodeNumber, EpisodeNumber>>
      get episodeNums => ListCopyWith($value.episodeNums,
          (v, t) => v.copyWith.$chain(t), (v) => call(episodeNums: v));
  @override
  ListCopyWith<$R, Subtitles, SubtitlesCopyWith<$R, Subtitles, Subtitles>>
      get subtitles => ListCopyWith($value.subtitles,
          (v, t) => v.copyWith.$chain(t), (v) => call(subtitles: v));
  @override
  ListCopyWith<$R, Rating, RatingCopyWith<$R, Rating, Rating>> get ratings =>
      ListCopyWith($value.ratings, (v, t) => v.copyWith.$chain(t),
          (v) => call(ratings: v));
  @override
  ListCopyWith<$R, StarRating, StarRatingCopyWith<$R, StarRating, StarRating>>
      get starRatings => ListCopyWith($value.starRatings,
          (v, t) => v.copyWith.$chain(t), (v) => call(starRatings: v));
  @override
  ListCopyWith<$R, Review, ReviewCopyWith<$R, Review, Review>> get reviews =>
      ListCopyWith($value.reviews, (v, t) => v.copyWith.$chain(t),
          (v) => call(reviews: v));
  @override
  ListCopyWith<$R, Image, ImageCopyWith<$R, Image, Image>> get images =>
      ListCopyWith($value.images, (v, t) => v.copyWith.$chain(t),
          (v) => call(images: v));
  @override
  CreditsCopyWith<$R, Credits, Credits>? get credits =>
      $value.credits?.copyWith.$chain((v) => call(credits: v));
  @override
  LanguageCopyWith<$R, Language, Language>? get language =>
      $value.language?.copyWith.$chain((v) => call(language: v));
  @override
  OriginalLanguageCopyWith<$R, OriginalLanguage, OriginalLanguage>?
      get origLanguage =>
          $value.origLanguage?.copyWith.$chain((v) => call(origLanguage: v));
  @override
  LengthCopyWith<$R, Length, Length>? get length =>
      $value.length?.copyWith.$chain((v) => call(length: v));
  @override
  VideoCopyWith<$R, Video, Video>? get video =>
      $value.video?.copyWith.$chain((v) => call(video: v));
  @override
  AudioCopyWith<$R, Audio, Audio>? get audio =>
      $value.audio?.copyWith.$chain((v) => call(audio: v));
  @override
  PreviouslyShownCopyWith<$R, PreviouslyShown, PreviouslyShown>?
      get previouslyShown => $value.previouslyShown?.copyWith
          .$chain((v) => call(previouslyShown: v));
  @override
  PremiereCopyWith<$R, Premiere, Premiere>? get premiere =>
      $value.premiere?.copyWith.$chain((v) => call(premiere: v));
  @override
  LastChanceCopyWith<$R, LastChance, LastChance>? get lastChance =>
      $value.lastChance?.copyWith.$chain((v) => call(lastChance: v));
  @override
  $R call(
          {DateTime? start,
          String? channel,
          String? clumpidx,
          List<Title>? titles,
          List<SubTitle>? subTitles,
          List<Description>? descs,
          List<Category>? categories,
          List<Keyword>? keywords,
          List<Icon>? icons,
          List<Url>? urls,
          List<Country>? countries,
          List<EpisodeNumber>? episodeNums,
          bool? isNew,
          List<Subtitles>? subtitles,
          List<Rating>? ratings,
          List<StarRating>? starRatings,
          List<Review>? reviews,
          List<Image>? images,
          Object? stop = $none,
          Object? pdcStart = $none,
          Object? vpsStart = $none,
          Object? showview = $none,
          Object? videoplus = $none,
          Object? credits = $none,
          Object? date = $none,
          Object? language = $none,
          Object? origLanguage = $none,
          Object? length = $none,
          Object? video = $none,
          Object? audio = $none,
          Object? previouslyShown = $none,
          Object? premiere = $none,
          Object? lastChance = $none}) =>
      $apply(FieldCopyWithData({
        if (start != null) #start: start,
        if (channel != null) #channel: channel,
        if (clumpidx != null) #clumpidx: clumpidx,
        if (titles != null) #titles: titles,
        if (subTitles != null) #subTitles: subTitles,
        if (descs != null) #descs: descs,
        if (categories != null) #categories: categories,
        if (keywords != null) #keywords: keywords,
        if (icons != null) #icons: icons,
        if (urls != null) #urls: urls,
        if (countries != null) #countries: countries,
        if (episodeNums != null) #episodeNums: episodeNums,
        if (isNew != null) #isNew: isNew,
        if (subtitles != null) #subtitles: subtitles,
        if (ratings != null) #ratings: ratings,
        if (starRatings != null) #starRatings: starRatings,
        if (reviews != null) #reviews: reviews,
        if (images != null) #images: images,
        if (stop != $none) #stop: stop,
        if (pdcStart != $none) #pdcStart: pdcStart,
        if (vpsStart != $none) #vpsStart: vpsStart,
        if (showview != $none) #showview: showview,
        if (videoplus != $none) #videoplus: videoplus,
        if (credits != $none) #credits: credits,
        if (date != $none) #date: date,
        if (language != $none) #language: language,
        if (origLanguage != $none) #origLanguage: origLanguage,
        if (length != $none) #length: length,
        if (video != $none) #video: video,
        if (audio != $none) #audio: audio,
        if (previouslyShown != $none) #previouslyShown: previouslyShown,
        if (premiere != $none) #premiere: premiere,
        if (lastChance != $none) #lastChance: lastChance
      }));
  @override
  Programme $make(CopyWithData data) => Programme(
      start: data.get(#start, or: $value.start),
      channel: data.get(#channel, or: $value.channel),
      clumpidx: data.get(#clumpidx, or: $value.clumpidx),
      titles: data.get(#titles, or: $value.titles),
      subTitles: data.get(#subTitles, or: $value.subTitles),
      descs: data.get(#descs, or: $value.descs),
      categories: data.get(#categories, or: $value.categories),
      keywords: data.get(#keywords, or: $value.keywords),
      icons: data.get(#icons, or: $value.icons),
      urls: data.get(#urls, or: $value.urls),
      countries: data.get(#countries, or: $value.countries),
      episodeNums: data.get(#episodeNums, or: $value.episodeNums),
      isNew: data.get(#isNew, or: $value.isNew),
      subtitles: data.get(#subtitles, or: $value.subtitles),
      ratings: data.get(#ratings, or: $value.ratings),
      starRatings: data.get(#starRatings, or: $value.starRatings),
      reviews: data.get(#reviews, or: $value.reviews),
      images: data.get(#images, or: $value.images),
      stop: data.get(#stop, or: $value.stop),
      pdcStart: data.get(#pdcStart, or: $value.pdcStart),
      vpsStart: data.get(#vpsStart, or: $value.vpsStart),
      showview: data.get(#showview, or: $value.showview),
      videoplus: data.get(#videoplus, or: $value.videoplus),
      credits: data.get(#credits, or: $value.credits),
      date: data.get(#date, or: $value.date),
      language: data.get(#language, or: $value.language),
      origLanguage: data.get(#origLanguage, or: $value.origLanguage),
      length: data.get(#length, or: $value.length),
      video: data.get(#video, or: $value.video),
      audio: data.get(#audio, or: $value.audio),
      previouslyShown: data.get(#previouslyShown, or: $value.previouslyShown),
      premiere: data.get(#premiere, or: $value.premiere),
      lastChance: data.get(#lastChance, or: $value.lastChance));

  @override
  ProgrammeCopyWith<$R2, Programme, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ProgrammeCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
