// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recetas_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RecetasRecord> _$recetasRecordSerializer =
    new _$RecetasRecordSerializer();

class _$RecetasRecordSerializer implements StructuredSerializer<RecetasRecord> {
  @override
  final Iterable<Type> types = const [RecetasRecord, _$RecetasRecord];
  @override
  final String wireName = 'RecetasRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, RecetasRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nombreReceta;
    if (value != null) {
      result
        ..add('NombreReceta')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.categoria;
    if (value != null) {
      result
        ..add('Categoria')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.descripcion;
    if (value != null) {
      result
        ..add('Descripcion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imagenesLista;
    if (value != null) {
      result
        ..add('ImagenesLista')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imagen;
    if (value != null) {
      result
        ..add('Imagen')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.preparacion;
    if (value != null) {
      result
        ..add('Preparacion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  RecetasRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RecetasRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'NombreReceta':
          result.nombreReceta = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Categoria':
          result.categoria = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Descripcion':
          result.descripcion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ImagenesLista':
          result.imagenesLista = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Imagen':
          result.imagen = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Preparacion':
          result.preparacion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$RecetasRecord extends RecetasRecord {
  @override
  final String? nombreReceta;
  @override
  final String? categoria;
  @override
  final String? descripcion;
  @override
  final String? imagenesLista;
  @override
  final String? imagen;
  @override
  final String? preparacion;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$RecetasRecord([void Function(RecetasRecordBuilder)? updates]) =>
      (new RecetasRecordBuilder()..update(updates))._build();

  _$RecetasRecord._(
      {this.nombreReceta,
      this.categoria,
      this.descripcion,
      this.imagenesLista,
      this.imagen,
      this.preparacion,
      this.ffRef})
      : super._();

  @override
  RecetasRecord rebuild(void Function(RecetasRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecetasRecordBuilder toBuilder() => new RecetasRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecetasRecord &&
        nombreReceta == other.nombreReceta &&
        categoria == other.categoria &&
        descripcion == other.descripcion &&
        imagenesLista == other.imagenesLista &&
        imagen == other.imagen &&
        preparacion == other.preparacion &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nombreReceta.hashCode);
    _$hash = $jc(_$hash, categoria.hashCode);
    _$hash = $jc(_$hash, descripcion.hashCode);
    _$hash = $jc(_$hash, imagenesLista.hashCode);
    _$hash = $jc(_$hash, imagen.hashCode);
    _$hash = $jc(_$hash, preparacion.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RecetasRecord')
          ..add('nombreReceta', nombreReceta)
          ..add('categoria', categoria)
          ..add('descripcion', descripcion)
          ..add('imagenesLista', imagenesLista)
          ..add('imagen', imagen)
          ..add('preparacion', preparacion)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class RecetasRecordBuilder
    implements Builder<RecetasRecord, RecetasRecordBuilder> {
  _$RecetasRecord? _$v;

  String? _nombreReceta;
  String? get nombreReceta => _$this._nombreReceta;
  set nombreReceta(String? nombreReceta) => _$this._nombreReceta = nombreReceta;

  String? _categoria;
  String? get categoria => _$this._categoria;
  set categoria(String? categoria) => _$this._categoria = categoria;

  String? _descripcion;
  String? get descripcion => _$this._descripcion;
  set descripcion(String? descripcion) => _$this._descripcion = descripcion;

  String? _imagenesLista;
  String? get imagenesLista => _$this._imagenesLista;
  set imagenesLista(String? imagenesLista) =>
      _$this._imagenesLista = imagenesLista;

  String? _imagen;
  String? get imagen => _$this._imagen;
  set imagen(String? imagen) => _$this._imagen = imagen;

  String? _preparacion;
  String? get preparacion => _$this._preparacion;
  set preparacion(String? preparacion) => _$this._preparacion = preparacion;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  RecetasRecordBuilder() {
    RecetasRecord._initializeBuilder(this);
  }

  RecetasRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombreReceta = $v.nombreReceta;
      _categoria = $v.categoria;
      _descripcion = $v.descripcion;
      _imagenesLista = $v.imagenesLista;
      _imagen = $v.imagen;
      _preparacion = $v.preparacion;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecetasRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RecetasRecord;
  }

  @override
  void update(void Function(RecetasRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecetasRecord build() => _build();

  _$RecetasRecord _build() {
    final _$result = _$v ??
        new _$RecetasRecord._(
            nombreReceta: nombreReceta,
            categoria: categoria,
            descripcion: descripcion,
            imagenesLista: imagenesLista,
            imagen: imagen,
            preparacion: preparacion,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
