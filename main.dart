import 'alphabet-tree.dart';

void main() {
  AlphabetTree tree1 = AlphabetTree('B', [
    AlphabetTree('J', [
      AlphabetTree('B'),
      AlphabetTree('A'),
      AlphabetTree('V'),
    ]),
    AlphabetTree('F'),
    AlphabetTree('Q', [
      AlphabetTree('H'),
      AlphabetTree('J'),
    ]),
  ]);

  AlphabetTree tree2 = AlphabetTree('Q', [
    AlphabetTree('A', [
      AlphabetTree('H'),
      AlphabetTree('Z'),
    ]),
    AlphabetTree('C', [
      AlphabetTree('J'),
      AlphabetTree('F'),
    ]),
  ]);
  print(tree1.compareTo(tree2));
}
