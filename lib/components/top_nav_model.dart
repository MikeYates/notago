import '/flutter_flow/flutter_flow_util.dart';
import 'top_nav_widget.dart' show TopNavWidget;
import 'package:flutter/material.dart';

class TopNavModel extends FlutterFlowModel<TopNavWidget> {
  ///  Local state fields for this component.

  List<DocumentReference> documentsList = [];
  void addToDocumentsList(DocumentReference item) => documentsList.add(item);
  void removeFromDocumentsList(DocumentReference item) =>
      documentsList.remove(item);
  void removeAtIndexFromDocumentsList(int index) =>
      documentsList.removeAt(index);
  void insertAtIndexInDocumentsList(int index, DocumentReference item) =>
      documentsList.insert(index, item);
  void updateDocumentsListAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      documentsList[index] = updateFn(documentsList[index]);

  int loopIndex = 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
