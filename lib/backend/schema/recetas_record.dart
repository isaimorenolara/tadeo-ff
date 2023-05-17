import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'recetas_record.g.dart';

abstract class RecetasRecord
    implements Built<RecetasRecord, RecetasRecordBuilder> {
  static Serializer<RecetasRecord> get serializer => _$recetasRecordSerializer;

  @BuiltValueField(wireName: 'NombreReceta')
  String? get nombreReceta;

  @BuiltValueField(wireName: 'Categoria')
  String? get categoria;

  @BuiltValueField(wireName: 'Descripcion')
  String? get descripcion;

  @BuiltValueField(wireName: 'ImagenesLista')
  String? get imagenesLista;

  @BuiltValueField(wireName: 'Imagen')
  String? get imagen;

  @BuiltValueField(wireName: 'Preparacion')
  String? get preparacion;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(RecetasRecordBuilder builder) => builder
    ..nombreReceta = ''
    ..categoria = ''
    ..descripcion = ''
    ..imagenesLista = ''
    ..imagen = ''
    ..preparacion = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('recetas');

  static Stream<RecetasRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<RecetasRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  RecetasRecord._();
  factory RecetasRecord([void Function(RecetasRecordBuilder) updates]) =
      _$RecetasRecord;

  static RecetasRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createRecetasRecordData({
  String? nombreReceta,
  String? categoria,
  String? descripcion,
  String? imagenesLista,
  String? imagen,
  String? preparacion,
}) {
  final firestoreData = serializers.toFirestore(
    RecetasRecord.serializer,
    RecetasRecord(
      (r) => r
        ..nombreReceta = nombreReceta
        ..categoria = categoria
        ..descripcion = descripcion
        ..imagenesLista = imagenesLista
        ..imagen = imagen
        ..preparacion = preparacion,
    ),
  );

  return firestoreData;
}
