class Champion{

  final int _id;
  final _name;
  bool _isPickable = false;

  int get getId => _id;
  String get getName => _name;

  bool get isPickable => _isPickable;

  set isPickable(bool value){
    _isPickable = value;
  }

  Champion(this._id, this._name);

}