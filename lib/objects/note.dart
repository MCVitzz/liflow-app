class Note {
  bool isSaved;
  String title;
  String body;

  Note({this.isSaved = false, this.title = '', this.body = ''});

  bool save() {
    isSaved = true;
    return isSaved;
  }
}