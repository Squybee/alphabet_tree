import 'dart:collection';

import 'alphabet-tree.dart';
import 'package:test/test.dart';

void main() {
  test('test that AlphabetTree.compareTo() return a union of both trees', () {
    AlphabetTree tree1 = AlphabetTree('U', [
      AlphabetTree('J', [
        AlphabetTree('U'),
      ]),
      AlphabetTree('L')
    ]);
    AlphabetTree tree2 = AlphabetTree('U', [
      AlphabetTree('E'),
      AlphabetTree('J', [
        AlphabetTree('I'),
        AlphabetTree('N'),
      ]),
    ]);
    SplayTreeSet<String> union1 = tree1.compareTo(tree2);
    SplayTreeSet<String> union2 = tree2.compareTo(tree1);
    expect(union1.join() == union2.join(), true);
    String expectedOutput = 'EIJLNU';
    expect(union1.join(), expectedOutput);
    expect(union2.join(), expectedOutput);
  });
}
