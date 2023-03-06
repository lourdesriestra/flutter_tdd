import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_architecture/features/number_trivia/data/models/number_trivia_model.dart';
import 'package:tdd_architecture/features/number_trivia/domain/entities/number_trivia.dart';

import '../../../../fixtures/trivia/fixture_reader.dart';

void main() {
  const tNumberTriviaModel = NumberTriviaModel(number: 1, text: 'Test');

  setUp(() {});

  test(
      'NumberTriviaModel - This test should be a subclass of NumberTrivia Entity',
      () async {
    // Arrange

    // Act

    // Assert
    expect(tNumberTriviaModel, isA<NumberTrivia>());
  });

  group('NumberTriviaModel - from JSON', () {
    test(
        'This test should return a valid model when the JSON number is an integer',
        () async {
      // Arrange
      final Map<String, dynamic> jsonMap =
          json.decode(fixture('trivia.json', 'trivia'));
      // Act
      final result = NumberTriviaModel.fromJson(jsonMap);
      // Assert
      expect(result, tNumberTriviaModel);
    });

    test(
        'This test should return a valid model when the JSON number is refarded as a double',
        () async {
      // Arrange
      final Map<String, dynamic> jsonMap =
          json.decode(fixture('trivia_double.json', 'trivia'));
      // Act
      final result = NumberTriviaModel.fromJson(jsonMap);
      // Assert
      expect(result, tNumberTriviaModel);
    });
  });

  group('NumberTriviaModel - to JSON', () {
    test('This test should return a JSON map containing the proper data',
        () async {
      // Arrange

      // Act
      final result = tNumberTriviaModel.toJson();
      // Assert
      final expectedMap = {
        "text": "Test",
        "number": 1,
      };
      expect(result, expectedMap);
    });
  });

  tearDown(() => {});
}
