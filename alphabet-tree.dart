import 'dart:collection';

/// A tree of [String]
class AlphabetTree {
  final String value;
  final List<AlphabetTree>? children;

  AlphabetTree(this.value, [this.children]);

  /// returns a [SplayTreeSet] containing a union of the elements of the current tree and [other]
  SplayTreeSet<String> compareTo(AlphabetTree other) {
    // SplayTreeSet will only add unique elements, and since it compares the values when attempting to add them
    // and String is Comparable, then it will end up ordering them as well.
    SplayTreeSet<String> result = SplayTreeSet<String>();
    result.add(value);
    result.addAll(this.getChildrenFlat());
    result.add(other.value);
    result.addAll(other.getChildrenFlat());
    return result;
  }

  /// returns a [List] of all leaves as well as the current node value
  List<String> getChildrenFlat() {
    if (this.children == null) {
      // leaf node case
      return [this.value];
    } else {
      // recursively getting the list of children node values and add current node value
      List<String> childrenValues = [];
      this.children?.forEach((node) => childrenValues.addAll(node.getChildrenFlat()));
      childrenValues.add(value);
      return childrenValues;
    }
  }
}