// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'credits.dart';

class CreditsMapper extends ClassMapperBase<Credits> {
  CreditsMapper._();

  static CreditsMapper? _instance;
  static CreditsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CreditsMapper._());
      ActorMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Credits';

  static List<String> _$directors(Credits v) => v.directors;
  static const Field<Credits, List<String>> _f$directors =
      Field('directors', _$directors);
  static List<Actor> _$actors(Credits v) => v.actors;
  static const Field<Credits, List<Actor>> _f$actors =
      Field('actors', _$actors);
  static List<String> _$writers(Credits v) => v.writers;
  static const Field<Credits, List<String>> _f$writers =
      Field('writers', _$writers);
  static List<String> _$adapters(Credits v) => v.adapters;
  static const Field<Credits, List<String>> _f$adapters =
      Field('adapters', _$adapters);
  static List<String> _$producers(Credits v) => v.producers;
  static const Field<Credits, List<String>> _f$producers =
      Field('producers', _$producers);
  static List<String> _$composers(Credits v) => v.composers;
  static const Field<Credits, List<String>> _f$composers =
      Field('composers', _$composers);
  static List<String> _$editors(Credits v) => v.editors;
  static const Field<Credits, List<String>> _f$editors =
      Field('editors', _$editors);
  static List<String> _$presenters(Credits v) => v.presenters;
  static const Field<Credits, List<String>> _f$presenters =
      Field('presenters', _$presenters);
  static List<String> _$commentators(Credits v) => v.commentators;
  static const Field<Credits, List<String>> _f$commentators =
      Field('commentators', _$commentators);
  static List<String> _$guests(Credits v) => v.guests;
  static const Field<Credits, List<String>> _f$guests =
      Field('guests', _$guests);

  @override
  final MappableFields<Credits> fields = const {
    #directors: _f$directors,
    #actors: _f$actors,
    #writers: _f$writers,
    #adapters: _f$adapters,
    #producers: _f$producers,
    #composers: _f$composers,
    #editors: _f$editors,
    #presenters: _f$presenters,
    #commentators: _f$commentators,
    #guests: _f$guests,
  };

  static Credits _instantiate(DecodingData data) {
    return Credits(
        directors: data.dec(_f$directors),
        actors: data.dec(_f$actors),
        writers: data.dec(_f$writers),
        adapters: data.dec(_f$adapters),
        producers: data.dec(_f$producers),
        composers: data.dec(_f$composers),
        editors: data.dec(_f$editors),
        presenters: data.dec(_f$presenters),
        commentators: data.dec(_f$commentators),
        guests: data.dec(_f$guests));
  }

  @override
  final Function instantiate = _instantiate;

  static Credits fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Credits>(map);
  }

  static Credits fromJson(String json) {
    return ensureInitialized().decodeJson<Credits>(json);
  }
}

mixin CreditsMappable {
  String toJson() {
    return CreditsMapper.ensureInitialized()
        .encodeJson<Credits>(this as Credits);
  }

  Map<String, dynamic> toMap() {
    return CreditsMapper.ensureInitialized()
        .encodeMap<Credits>(this as Credits);
  }

  CreditsCopyWith<Credits, Credits, Credits> get copyWith =>
      _CreditsCopyWithImpl<Credits, Credits>(
          this as Credits, $identity, $identity);
  @override
  String toString() {
    return CreditsMapper.ensureInitialized().stringifyValue(this as Credits);
  }

  @override
  bool operator ==(Object other) {
    return CreditsMapper.ensureInitialized()
        .equalsValue(this as Credits, other);
  }

  @override
  int get hashCode {
    return CreditsMapper.ensureInitialized().hashValue(this as Credits);
  }
}

extension CreditsValueCopy<$R, $Out> on ObjectCopyWith<$R, Credits, $Out> {
  CreditsCopyWith<$R, Credits, $Out> get $asCredits =>
      $base.as((v, t, t2) => _CreditsCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CreditsCopyWith<$R, $In extends Credits, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get directors;
  ListCopyWith<$R, Actor, ActorCopyWith<$R, Actor, Actor>> get actors;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get writers;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get adapters;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get producers;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get composers;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get editors;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get presenters;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get commentators;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get guests;
  $R call(
      {List<String>? directors,
      List<Actor>? actors,
      List<String>? writers,
      List<String>? adapters,
      List<String>? producers,
      List<String>? composers,
      List<String>? editors,
      List<String>? presenters,
      List<String>? commentators,
      List<String>? guests});
  CreditsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CreditsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Credits, $Out>
    implements CreditsCopyWith<$R, Credits, $Out> {
  _CreditsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Credits> $mapper =
      CreditsMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get directors =>
      ListCopyWith($value.directors, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(directors: v));
  @override
  ListCopyWith<$R, Actor, ActorCopyWith<$R, Actor, Actor>> get actors =>
      ListCopyWith($value.actors, (v, t) => v.copyWith.$chain(t),
          (v) => call(actors: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get writers =>
      ListCopyWith($value.writers, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(writers: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get adapters =>
      ListCopyWith($value.adapters, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(adapters: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get producers =>
      ListCopyWith($value.producers, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(producers: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get composers =>
      ListCopyWith($value.composers, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(composers: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get editors =>
      ListCopyWith($value.editors, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(editors: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get presenters =>
      ListCopyWith($value.presenters, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(presenters: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
      get commentators => ListCopyWith(
          $value.commentators,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(commentators: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get guests =>
      ListCopyWith($value.guests, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(guests: v));
  @override
  $R call(
          {List<String>? directors,
          List<Actor>? actors,
          List<String>? writers,
          List<String>? adapters,
          List<String>? producers,
          List<String>? composers,
          List<String>? editors,
          List<String>? presenters,
          List<String>? commentators,
          List<String>? guests}) =>
      $apply(FieldCopyWithData({
        if (directors != null) #directors: directors,
        if (actors != null) #actors: actors,
        if (writers != null) #writers: writers,
        if (adapters != null) #adapters: adapters,
        if (producers != null) #producers: producers,
        if (composers != null) #composers: composers,
        if (editors != null) #editors: editors,
        if (presenters != null) #presenters: presenters,
        if (commentators != null) #commentators: commentators,
        if (guests != null) #guests: guests
      }));
  @override
  Credits $make(CopyWithData data) => Credits(
      directors: data.get(#directors, or: $value.directors),
      actors: data.get(#actors, or: $value.actors),
      writers: data.get(#writers, or: $value.writers),
      adapters: data.get(#adapters, or: $value.adapters),
      producers: data.get(#producers, or: $value.producers),
      composers: data.get(#composers, or: $value.composers),
      editors: data.get(#editors, or: $value.editors),
      presenters: data.get(#presenters, or: $value.presenters),
      commentators: data.get(#commentators, or: $value.commentators),
      guests: data.get(#guests, or: $value.guests));

  @override
  CreditsCopyWith<$R2, Credits, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _CreditsCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
