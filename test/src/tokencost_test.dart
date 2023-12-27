// ignore_for_file: prefer_const_constructors
import 'package:test/test.dart';
import 'package:tokencost/tokencost.dart';

// 15 tokens
final testMessages = [
  {'role': 'user', 'content': 'Hello'},
  {'role': 'assistant', 'content': 'Hi there!'},
];

final testMessagesWithName = [
  {'role': 'user', 'content': 'Hello', 'name': 'John'},
  {'role': 'assistant', 'content': 'Hi there!'},
];

// 4 tokens
const testString = 'Hello, world!';

void main() {
  group('countMessageTokens', () {
    // Chat models only, no embeddings (such as ada) since embeddings only does
    // strings, not messages
    <String, int>{
      'gpt-3.5-turbo': 15,
      'gpt-3.5-turbo-0301': 17,
      'gpt-3.5-turbo-0613': 15,
      'gpt-3.5-turbo-16k': 15,
      'gpt-3.5-turbo-16k-0613': 15,
      'gpt-3.5-turbo-1106': 15,
      'gpt-3.5-turbo-instruct': 15,
      'gpt-4': 15,
      'gpt-4-0314': 15,
      'gpt-4-0613': 15,
      'gpt-4-32k': 15,
      'gpt-4-32k-0314': 15,
      'gpt-4-1106-preview': 15,
      'gpt-4-vision-preview': 15,
    }.forEach((model, expectedOutput) {
      test(model, () {
        expect(countMessageTokens(testMessages, model), expectedOutput);
      });
    });

    // Chat models only, no embeddings
    /// Notice: name 'John' appears
    <String, int>{
      'gpt-3.5-turbo': 17,
      'gpt-3.5-turbo-0301': 17,
      'gpt-3.5-turbo-0613': 17,
      'gpt-3.5-turbo-16k': 17,
      'gpt-3.5-turbo-16k-0613': 17,
      'gpt-3.5-turbo-1106': 17,
      'gpt-3.5-turbo-instruct': 17,
      'gpt-4': 17,
      'gpt-4-0314': 17,
      'gpt-4-0613': 17,
      'gpt-4-32k': 17,
      'gpt-4-32k-0314': 17,
      'gpt-4-1106-preview': 17,
      'gpt-4-vision-preview': 17,
    }.forEach((model, expectedOutput) {
      test('$model with name', () {
        expect(countMessageTokens(testMessagesWithName, model), expectedOutput);
      });
    });

    /// Empty input should throw an Exception
    test('empty input', () {
      expect(() => countMessageTokens([], ''), throwsException);
    });

    /// Invalid model should throw an Exception
    test('invalid model', () {
      expect(
        () => countMessageTokens(testMessages, 'invalid model'),
        throwsException,
      );
    });
  });

  group('countStringTokens', () {
    <String, int>{
      'gpt-3.5-turbo': 4,
      'gpt-3.5-turbo-0301': 4,
      'gpt-3.5-turbo-0613': 4,
      'gpt-3.5-turbo-16k': 4,
      'gpt-3.5-turbo-16k-0613': 4,
      'gpt-3.5-turbo-1106': 4,
      'gpt-3.5-turbo-instruct': 4,
      'gpt-4': 4,
      'gpt-4-0314': 4,
      'gpt-4-0613': 4,
      'gpt-4-32k': 4,
      'gpt-4-32k-0314': 4,
      'gpt-4-1106-preview': 4,
      'gpt-4-vision-preview': 4,
      'text-embedding-ada-002': 4,
    }.forEach((model, expectedOutput) {
      // Test that the string tokens are counted correctly.
      // 4 tokens
      test(model, () {
        expect(countStringTokens(testString, model), expectedOutput);
      });

      // Empty string should return 0
      test('empty string, $model', () {
        expect(countStringTokens('', model), 0);
      });
    });

    /// Invalid model should throw an Exception
    test('invalid model', () {
      expect(countStringTokens(testString, 'invalid model'), 4);
    });
  });

  group('calculatePromptCost', () {
    // Costs from https://openai.com/pricing
    // https://platform.openai.com/docs/models/gpt-4-and-gpt-4-turbo
    final promptModelExpectedOutput1 = <(dynamic, String, int)>[
      (testMessages, 'gpt-3.5-turbo', 225),
      (testMessages, 'gpt-3.5-turbo-0301', 255),
      (testMessages, 'gpt-3.5-turbo-0613', 225),
      (testMessages, 'gpt-3.5-turbo-16k', 450),
      (testMessages, 'gpt-3.5-turbo-16k-0613', 450),
      (testMessages, 'gpt-3.5-turbo-1106', 150),
      (testMessages, 'gpt-3.5-turbo-instruct', 225),
      (testMessages, 'gpt-4', 4500),
      (testMessages, 'gpt-4-0314', 4500),
      (testMessages, 'gpt-4-32k', 9000),
      (testMessages, 'gpt-4-32k-0314', 9000),
      (testMessages, 'gpt-4-0613', 4500),
      (testMessages, 'gpt-4-1106-preview', 1500),
      (testMessages, 'gpt-4-vision-preview', 1500),
      (testString, 'text-embedding-ada-002', 4),
    ];

    /// Test that the cost calculation is correct.
    for (final (prompt, model, expectedOutput) in promptModelExpectedOutput1) {
      test(model, () {
        expect(calculatePromptCost(prompt, model), expectedOutput);
      });
    }

    /// Invalid prompt format should throw an Exception
    test('invalid prompt format', () {
      expect(
        () => calculatePromptCost(
          {'role': 'user', 'content': 'invalid message type'},
          'gpt-3.5-turbo',
        ),
        throwsException,
      );
    });

    /// Invalid input type should throw an Exception
    test('invalid input type', () {
      expect(
        () => calculatePromptCost(
          testString,
          'invalid model',
        ),
        throwsException,
      );
    });

    /// Message objects not allowed, must be list of message objects.
    test('message object', () {
      expect(
        () => calculatePromptCost(
          testMessages[0],
          'invalid model',
        ),
        throwsException,
      );
    });
  });

  group('calculateCompletionCost', () {
    final promptModelExpectedOutput2 = <(String, String, int)>[
      (testString, 'gpt-3.5-turbo', 80),
      (testString, 'gpt-3.5-turbo-0301', 80),
      (testString, 'gpt-3.5-turbo-0613', 80),
      (testString, 'gpt-3.5-turbo-16k', 160),
      (testString, 'gpt-3.5-turbo-16k-0613', 160),
      (testString, 'gpt-3.5-turbo-1106', 80),
      (testString, 'gpt-3.5-turbo-instruct', 80),
      (testString, 'gpt-4', 2400),
      (testString, 'gpt-4-0314', 2400),
      (testString, 'gpt-4-32k', 4800),
      (testString, 'gpt-4-32k-0314', 4800),
      (testString, 'gpt-4-0613', 2400),
      (testString, 'gpt-4-1106-preview', 1200),
      (testString, 'gpt-4-vision-preview', 1200),
      (testString, 'text-embedding-ada-002', 0),
    ];
    for (final (prompt, model, expectedOutput) in promptModelExpectedOutput2) {
      test(model, () {
        expect(
          calculateCompletionCost(prompt, model),
          expectedOutput,
        );
      });
    }

    /// Invalid model should throw an Exception
    test('invalid model', () {
      expect(
        () => calculateCompletionCost(
          testString,
          'invalid model',
        ),
        throwsException,
      );
    });

    /// Invalid input type should throw an Exception
    test('invalid input type', () {
      expect(
        () => calculateCompletionCost(
          testString,
          'invalid model',
        ),
        throwsException,
      );
    });
  });
}
