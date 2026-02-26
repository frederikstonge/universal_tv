// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_adapters.dart';

// **************************************************************************
// AdaptersGenerator
// **************************************************************************

class ImdbEntryAdapter extends TypeAdapter<ImdbEntry> {
  @override
  final typeId = 0;

  @override
  ImdbEntry read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ImdbEntry(
      id: fields[0] as String?,
      type: fields[1] as String?,
      primaryTitle: fields[2] as String?,
      originalTitle: fields[3] as String?,
      primaryImage: fields[4] as ImdbImage?,
      startYear: (fields[5] as num?)?.toInt(),
      endYear: (fields[6] as num?)?.toInt(),
      runtimeSeconds: (fields[7] as num?)?.toInt(),
      genres: (fields[8] as List?)?.cast<String>(),
      rating: fields[9] as ImdbRating?,
      plot: fields[10] as String?,
      interests: (fields[11] as List?)?.cast<ImdbInterestEntry>(),
    );
  }

  @override
  void write(BinaryWriter writer, ImdbEntry obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.type)
      ..writeByte(2)
      ..write(obj.primaryTitle)
      ..writeByte(3)
      ..write(obj.originalTitle)
      ..writeByte(4)
      ..write(obj.primaryImage)
      ..writeByte(5)
      ..write(obj.startYear)
      ..writeByte(6)
      ..write(obj.endYear)
      ..writeByte(7)
      ..write(obj.runtimeSeconds)
      ..writeByte(8)
      ..write(obj.genres)
      ..writeByte(9)
      ..write(obj.rating)
      ..writeByte(10)
      ..write(obj.plot)
      ..writeByte(11)
      ..write(obj.interests);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ImdbEntryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ImdbImageAdapter extends TypeAdapter<ImdbImage> {
  @override
  final typeId = 1;

  @override
  ImdbImage read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ImdbImage(
      url: fields[0] as String?,
      width: (fields[1] as num?)?.toInt(),
      height: (fields[2] as num?)?.toInt(),
      type: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ImdbImage obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.url)
      ..writeByte(1)
      ..write(obj.width)
      ..writeByte(2)
      ..write(obj.height)
      ..writeByte(3)
      ..write(obj.type);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ImdbImageAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ImdbRatingAdapter extends TypeAdapter<ImdbRating> {
  @override
  final typeId = 2;

  @override
  ImdbRating read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ImdbRating(
      aggregateRating: (fields[0] as num?)?.toDouble(),
      voteCount: (fields[1] as num?)?.toInt(),
    );
  }

  @override
  void write(BinaryWriter writer, ImdbRating obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.aggregateRating)
      ..writeByte(1)
      ..write(obj.voteCount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ImdbRatingAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
