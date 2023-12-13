import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SalelistRecord extends FirestoreRecord {
  SalelistRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "price" field.
  String? _price;
  String get price => _price ?? '';
  bool hasPrice() => _price != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "photo_url_1" field.
  String? _photoUrl1;
  String get photoUrl1 => _photoUrl1 ?? '';
  bool hasPhotoUrl1() => _photoUrl1 != null;

  // "photo_url_2" field.
  String? _photoUrl2;
  String get photoUrl2 => _photoUrl2 ?? '';
  bool hasPhotoUrl2() => _photoUrl2 != null;

  // "photo_url_3" field.
  String? _photoUrl3;
  String get photoUrl3 => _photoUrl3 ?? '';
  bool hasPhotoUrl3() => _photoUrl3 != null;

  // "photo_url_4" field.
  String? _photoUrl4;
  String get photoUrl4 => _photoUrl4 ?? '';
  bool hasPhotoUrl4() => _photoUrl4 != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _price = snapshotData['price'] as String?;
    _description = snapshotData['description'] as String?;
    _photoUrl1 = snapshotData['photo_url_1'] as String?;
    _photoUrl2 = snapshotData['photo_url_2'] as String?;
    _photoUrl3 = snapshotData['photo_url_3'] as String?;
    _photoUrl4 = snapshotData['photo_url_4'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('salelist');

  static Stream<SalelistRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SalelistRecord.fromSnapshot(s));

  static Future<SalelistRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SalelistRecord.fromSnapshot(s));

  static SalelistRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SalelistRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SalelistRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SalelistRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SalelistRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SalelistRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSalelistRecordData({
  String? title,
  String? price,
  String? description,
  String? photoUrl1,
  String? photoUrl2,
  String? photoUrl3,
  String? photoUrl4,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'price': price,
      'description': description,
      'photo_url_1': photoUrl1,
      'photo_url_2': photoUrl2,
      'photo_url_3': photoUrl3,
      'photo_url_4': photoUrl4,
    }.withoutNulls,
  );

  return firestoreData;
}

class SalelistRecordDocumentEquality implements Equality<SalelistRecord> {
  const SalelistRecordDocumentEquality();

  @override
  bool equals(SalelistRecord? e1, SalelistRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.price == e2?.price &&
        e1?.description == e2?.description &&
        e1?.photoUrl1 == e2?.photoUrl1 &&
        e1?.photoUrl2 == e2?.photoUrl2 &&
        e1?.photoUrl3 == e2?.photoUrl3 &&
        e1?.photoUrl4 == e2?.photoUrl4;
  }

  @override
  int hash(SalelistRecord? e) => const ListEquality().hash([
        e?.title,
        e?.price,
        e?.description,
        e?.photoUrl1,
        e?.photoUrl2,
        e?.photoUrl3,
        e?.photoUrl4
      ]);

  @override
  bool isValidKey(Object? o) => o is SalelistRecord;
}
