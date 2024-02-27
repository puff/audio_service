import 'package:android_content_provider/android_content_provider.dart';
import 'package:path_provider/path_provider.dart';

class MediaItemContentProvider extends AndroidContentProvider {
  MediaItemContentProvider(String authority) : super(authority);

  @override
  Future<String?> openFile(String uri, String mode) async {
    final documentsDirectory = await getApplicationDocumentsDirectory();
    final parsedUri = Uri.parse(uri);
    return Uri(scheme: "file", path: "${documentsDirectory.absolute.path}/${parsedUri.path}").toFilePath();
  }

  // Unused

  @override
  Future<int> delete(String uri, String? selection, List<String>? selectionArgs) async {
    return 0;
  }

  @override
  Future<String?> getType(String uri) async {
    return null;
  }

  @override
  Future<String?> insert(String uri, ContentValues? values) async {
    return null;
  }

  @override
  Future<CursorData?> query(String uri, List<String>? projection, String? selection, List<String>? selectionArgs, String? sortOrder) async {
    return null;
  }

  @override
  Future<int> update(String uri, ContentValues? values, String? selection, List<String>? selectionArgs) async {
    return 0;
  }
}