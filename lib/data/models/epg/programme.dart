import 'package:dart_mappable/dart_mappable.dart';
import 'package:xml/xml.dart';

import 'audio.dart';
import 'category.dart';
import 'country.dart';
import 'credits.dart';
import 'description.dart';
import 'episode_number.dart';
import 'icon.dart';
import 'image.dart';
import 'keyword.dart';
import 'language.dart';
import 'last_chance.dart';
import 'length.dart';
import 'original_language.dart';
import 'premiere.dart';
import 'previously_shown.dart';
import 'rating.dart';
import 'review.dart';
import 'star_rating.dart';
import 'sub_title.dart';
import 'subtitles.dart';
import 'title.dart';
import 'url.dart';
import 'video.dart';

part 'programme.mapper.dart';

/// Represents a TV programme in the XMLTV format.
///
/// This class corresponds to the 'programme' element in the XMLTV DTD.
/// It contains comprehensive information about a specific TV show or event,
/// including timing, titles, descriptions, categories, and various metadata.
@MappableClass()
class Programme with ProgrammeMappable {
  final DateTime start;
  final DateTime? stop;
  final DateTime? pdcStart;
  final DateTime? vpsStart;
  final String? showview;
  final String? videoplus;
  final String channel;
  final String clumpidx;
  final List<Title> titles;
  final List<SubTitle> subTitles;
  final List<Description> descs;
  final Credits? credits;
  final String? date;
  final List<Category> categories;
  final List<Keyword> keywords;
  final Language? language;
  final OriginalLanguage? origLanguage;
  final Length? length;
  final List<Icon> icons;
  final List<Url> urls;
  final List<Country> countries;
  final List<EpisodeNumber> episodeNums;
  final Video? video;
  final Audio? audio;
  final PreviouslyShown? previouslyShown;
  final Premiere? premiere;
  final LastChance? lastChance;
  final bool isNew;
  final List<Subtitles> subtitles;
  final List<Rating> ratings;
  final List<StarRating> starRatings;
  final List<Review> reviews;
  final List<Image> images;

  Programme({
    required this.start,
    required this.channel,
    required this.clumpidx,
    required this.titles,
    required this.subTitles,
    required this.descs,
    required this.categories,
    required this.keywords,
    required this.icons,
    required this.urls,
    required this.countries,
    required this.episodeNums,
    required this.isNew,
    required this.subtitles,
    required this.ratings,
    required this.starRatings,
    required this.reviews,
    required this.images,
    this.stop,
    this.pdcStart,
    this.vpsStart,
    this.showview,
    this.videoplus,
    this.credits,
    this.date,
    this.language,
    this.origLanguage,
    this.length,
    this.video,
    this.audio,
    this.previouslyShown,
    this.premiere,
    this.lastChance,
  });

  /// Creates a [Programme] instance from an XML element.
  ///
  /// This factory method parses all the child elements and attributes
  /// defined in the XMLTV DTD for a programme.
  factory Programme.fromXmlElement(XmlElement element) {
    DateTime? parseDateTime(String? value) {
      return value != null && value.isNotEmpty ? DateTime.parse(value) : null;
    }

    DateTime? parseDateTimeWithOffset(String? value) {
      if (value == null || value.isEmpty) return null;
      try {
        // Parse YYYYMMDDHHMMSS +HHMM format
        final date = value.substring(0, 14);
        final offset = value.substring(15);
        return DateTime.parse('${date.substring(0, 8)}T${date.substring(8)}$offset');
      } catch (e) {
        return null;
      }
    }

    return Programme(
      start: parseDateTimeWithOffset(element.getAttribute('start')) ?? DateTime.now(),
      stop: parseDateTimeWithOffset(element.getAttribute('stop')),
      pdcStart: parseDateTime(element.getAttribute('pdc-start')),
      vpsStart: parseDateTime(element.getAttribute('vps-start')),
      showview: element.getAttribute('showview'),
      videoplus: element.getAttribute('videoplus'),
      channel: element.getAttribute('channel') ?? '',
      clumpidx: element.getAttribute('clumpidx') ?? '0/1',
      titles: element.findElements('title').map(Title.fromXmlElement).toList(),
      subTitles: element.findElements('sub-title').map(SubTitle.fromXmlElement).toList(),
      descs: element.findElements('desc').map(Description.fromXmlElement).toList(),
      credits: element.getElement('credits') != null ? Credits.fromXmlElement(element.getElement('credits')!) : null,
      date: element.getElement('date')?.value,
      categories: element.findElements('category').map(Category.fromXmlElement).toList(),
      keywords: element.findElements('keyword').map(Keyword.fromXmlElement).toList(),
      language:
          element.getElement('language') != null ? Language.fromXmlElement(element.getElement('language')!) : null,
      origLanguage:
          element.getElement('orig-language') != null
              ? OriginalLanguage.fromXmlElement(element.getElement('orig-language')!)
              : null,
      length: element.getElement('length') != null ? Length.fromXmlElement(element.getElement('length')!) : null,
      icons: element.findElements('icon').map(Icon.fromXmlElement).toList(),
      urls: element.findElements('url').map(Url.fromXmlElement).toList(),
      countries: element.findElements('country').map(Country.fromXmlElement).toList(),
      episodeNums: element.findElements('episode-num').map(EpisodeNumber.fromXmlElement).toList(),
      video: element.getElement('video') != null ? Video.fromXmlElement(element.getElement('video')!) : null,
      audio: element.getElement('audio') != null ? Audio.fromXmlElement(element.getElement('audio')!) : null,
      previouslyShown:
          element.getElement('previously-shown') != null
              ? PreviouslyShown.fromXmlElement(element.getElement('previously-shown')!)
              : null,
      premiere:
          element.getElement('premiere') != null ? Premiere.fromXmlElement(element.getElement('premiere')!) : null,
      lastChance:
          element.getElement('last-chance') != null
              ? LastChance.fromXmlElement(element.getElement('last-chance')!)
              : null,
      isNew: element.getElement('new') != null,
      subtitles: element.findElements('subtitles').map(Subtitles.fromXmlElement).toList(),
      ratings: element.findElements('rating').map(Rating.fromXmlElement).toList(),
      starRatings: element.findElements('star-rating').map(StarRating.fromXmlElement).toList(),
      reviews: element.findElements('review').map(Review.fromXmlElement).toList(),
      images: element.findElements('image').map(Image.fromXmlElement).toList(),
    );
  }
}
