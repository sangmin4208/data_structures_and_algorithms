import 'package:test/test.dart';
import 'package:trie_dart/string_trie.dart';

main() {
  group('String Trie Test', () {
    test('insert & contains', () {
      final trie = StringTrie();
      trie.insert('car');
      trie.insert('card');
      trie.insert('care');
      trie.insert('cared');
      trie.insert('cars');
      trie.insert('carbs');
      trie.insert('carapace');
      trie.insert('cargo');
      expect(trie.contains('car'), true);
      expect(trie.contains('card'), true);
      expect(trie.contains('care'), true);
      expect(trie.contains('cared'), true);
      expect(trie.contains('cars'), true);
      expect(trie.contains('carbs'), true);
      expect(trie.contains('carapace'), true);
      expect(trie.contains('cargo'), true);
    });

    test('remove', () {
      final trie = StringTrie();
      trie.insert('car');
      trie.insert('card');
      trie.insert('care');
      trie.insert('cared');
      trie.insert('cars');
      trie.insert('carbs');
      trie.insert('carapace');
      trie.insert('cargo');
      trie.remove('car');
      trie.remove('card');
      trie.remove('care');
      trie.remove('cared');
      trie.remove('cars');
      trie.remove('carbs');
      trie.remove('carapace');
      trie.remove('cargo');
      expect(trie.contains('car'), false);
      expect(trie.contains('card'), false);
      expect(trie.contains('care'), false);
      expect(trie.contains('cared'), false);
      expect(trie.contains('cars'), false);
      expect(trie.contains('carbs'), false);
      expect(trie.contains('carapace'), false);
      expect(trie.contains('cargo'), false);
    });

    test('matchPrefix', () {
      final trie = StringTrie();
      trie.insert('car');
      trie.insert('card');
      trie.insert('care');
      trie.insert('cared');
      trie.insert('cars');
      trie.insert('carbs');
      trie.insert('carapace');
      trie.insert('cargo');
      expect(trie.matchPrefix('car'), [
        'car',
        'card',
        'care',
        'cared',
        'cars',
        'carbs',
        'carapace',
        'cargo'
      ]);
      expect(trie.matchPrefix('care'), ['care', 'cared']);
      expect(trie.matchPrefix('cared'), ['cared']);
      expect(trie.matchPrefix('cars'), ['cars']);
      expect(trie.matchPrefix('carbs'), ['carbs']);
      expect(trie.matchPrefix('carapace'), ['carapace']);
      expect(trie.matchPrefix('cargo'), ['cargo']);
    });
  });
}
