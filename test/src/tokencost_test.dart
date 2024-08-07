// ignore_for_file: prefer_const_constructors
import 'dart:math';

import 'package:money2/money2.dart';
import 'package:test/test.dart';
import 'package:tokencost/src/model/model_prices_and_context_window.dart';
import 'package:tokencost/src/tokencost.dart';
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
  group('basic', () {
    test('decimalDigits', () {
      const price = 12.34567891234;
      expect('12.34567891234', price.toString());
      expect('0.0', 0.00000000000000000000.toString());
      expect('5e-7', 0.0000005.toString());

      const decimalDigits = 11;
      final priceMinorUnits = price * pow(10, decimalDigits);
      final money = Money.fromInt(priceMinorUnits.toInt(), decimalDigits: decimalDigits, isoCode: 'USD');
      expect(money.minorUnits, BigInt.parse('1234567891234'));
      expect(money.integerPart, BigInt.parse('12'));
      expect(money.decimalPart, BigInt.parse('34567891234'));
      expect(money.decimalDigits, equals(decimalDigits));
      expect(money.isNegative, isFalse);
      expect(money.isPositive, isTrue);
      expect(money.isZero, isFalse);
      expect(money.sign, equals(1));

      final money2 = Money.fromInt(150000, decimalDigits: 11, isoCode: 'USD');
      final result = Money.fromFixed(money2.amount.multiply(15), decimalDigits: 11, isoCode: 'USD');
      expect(result.minorUnits, BigInt.parse('2250000'));
      expect(result.integerPart, BigInt.parse('0'));
      expect(result.decimalPart, BigInt.parse('2250000'));
      expect(result.decimalDigits, equals(11));
      expect(result.isNegative, isFalse);
      expect(result.isPositive, isTrue);
      expect(result.isZero, isFalse);
      expect(result.sign, equals(1));
    });
  });

  final tokenCost = TokenCost.getLocalInstance();
  Currencies().registerList(CommonCurrencies().asList());

  group('static constructors', () {
    test('getLocalInstance', () {
      expect(TokenCost.getLocalInstance(), isA<TokenCost>());
    });
    test('getInstance', () async {
      expect(await TokenCost.getInstance(), isA<TokenCost>());
    });
    test('_calculateMaxScale', () {
      expect(
        TokenCost.calculateMaxScale(
          {
            'model1': ModelPricesAndContextWindow(
              inputCostPerToken: 0.00000000000,
              outputCostPerToken: 0.00000000001,
            ),
            'model2': ModelPricesAndContextWindow(
              inputCostPerToken: 0.00000000020,
              outputCostPerToken: 0.00000000300,
            ),
          },
        ),
        equals(11),
      );
    });
  });

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
        expect(tokenCost.countMessageTokens(testMessages, model), expectedOutput);
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
        expect(tokenCost.countMessageTokens(testMessagesWithName, model), expectedOutput);
      });
    });

    /// Empty input should throw an Exception
    test('empty input', () {
      expect(() => tokenCost.countMessageTokens([], ''), throwsException);
    });

    /// Invalid model should throw an Exception
    test('invalid model', () {
      expect(
        () => tokenCost.countMessageTokens(testMessages, 'invalid model'),
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
        expect(tokenCost.countStringTokens(testString, model), expectedOutput);
      });

      // Empty string should return 0
      test('empty string, $model', () {
        expect(tokenCost.countStringTokens('', model), 0);
      });
    });

    /// Invalid model should throw an Exception
    test('invalid model', () {
      expect(tokenCost.countStringTokens(testString, 'invalid model'), 4);
    });
  });

  group('calculateCostByTokens', () {
    final testData = <(int, String, TokenType, Money)>[
      (10, 'gpt-3.5-turbo', TokenType.input, Money.fromInt(150, decimalDigits: 7, isoCode: 'USD')),
      (5, 'gpt-4', TokenType.output, Money.fromInt(30, decimalDigits: 5, isoCode: 'USD')),
      (10, 'ai21.j2-mid-v1', TokenType.input, Money.fromInt(1250, decimalDigits: 7, isoCode: 'USD')),
    ];

    for (final (numTokens, model, tokenType, expectedCost) in testData) {
      test(model, () {
        final actualCost = tokenCost.calculateCostByTokens(numTokens, model, tokenType);
        expect(
          actualCost,
          expectedCost,
          reason: 'expected: <${expectedCost.format('S0.000000000000 CCC')}> '
              'but was:<${actualCost.format('S0.000000000000 CCC')}>',
        );
      });
    }
  });

  group('calculatePromptCost', () {
    // Costs from https://openai.com/pricing
    // https://platform.openai.com/docs/models/gpt-4-and-gpt-4-turbo
    final promptModelExpectedOutput1 = <(dynamic, String, Money)>[
      (testMessages, 'gpt-3.5-turbo', Money.fromInt(15 * 15, decimalDigits: 7, isoCode: 'USD')),
      (testMessages, 'gpt-3.5-turbo-0301', Money.fromInt(15 * 17, decimalDigits: 7, isoCode: 'USD')),
      (testMessages, 'gpt-3.5-turbo-0613', Money.fromInt(15 * 15, decimalDigits: 7, isoCode: 'USD')),
      (testMessages, 'gpt-3.5-turbo-16k', Money.fromInt(3 * 15, decimalDigits: 6, isoCode: 'USD')),
      (testMessages, 'gpt-3.5-turbo-16k-0613', Money.fromInt(3 * 15, decimalDigits: 6, isoCode: 'USD')),
      (testMessages, 'gpt-3.5-turbo-1106', Money.fromInt(1 * 15, decimalDigits: 6, isoCode: 'USD')),
      (testMessages, 'gpt-3.5-turbo-instruct', Money.fromInt(15 * 15, decimalDigits: 7, isoCode: 'USD')),
      (testMessages, 'gpt-4', Money.fromInt(3 * 15, decimalDigits: 5, isoCode: 'USD')),
      (testMessages, 'gpt-4-0314', Money.fromInt(3 * 15, decimalDigits: 5, isoCode: 'USD')),
      (testMessages, 'gpt-4-32k', Money.fromInt(6 * 15, decimalDigits: 5, isoCode: 'USD')),
      (testMessages, 'gpt-4-32k-0314', Money.fromInt(6 * 15, decimalDigits: 5, isoCode: 'USD')),
      (testMessages, 'gpt-4-0613', Money.fromInt(3 * 15, decimalDigits: 5, isoCode: 'USD')),
      (testMessages, 'gpt-4-1106-preview', Money.fromInt(1 * 15, decimalDigits: 5, isoCode: 'USD')),
      (testMessages, 'gpt-4-vision-preview', Money.fromInt(1 * 15, decimalDigits: 5, isoCode: 'USD')),
      (testString, 'text-embedding-ada-002', Money.fromInt(1 * 4, decimalDigits: 7, isoCode: 'USD')),
    ];

    /// Test that the cost calculation is correct.
    for (final (prompt, model, expectedOutput) in promptModelExpectedOutput1) {
      test(model, () {
        final actual = tokenCost.calculatePromptCost(prompt, model);
        expect(
          actual,
          expectedOutput,
          reason: 'expected: <${expectedOutput.format('S0.00000000000')}> '
              'but was:<${actual.format('S0.00000000000')}>',
        );
      });
    }

    /// Invalid prompt format should throw an Exception
    test('invalid prompt format', () {
      expect(
        () => tokenCost.calculatePromptCost(
          {'role': 'user', 'content': 'invalid message type'},
          'gpt-3.5-turbo',
        ),
        throwsException,
      );
    });

    /// Invalid input type should throw an Exception
    test('invalid input type', () {
      expect(
        () => tokenCost.calculatePromptCost(
          testString,
          'invalid model',
        ),
        throwsException,
      );
    });

    /// Message objects not allowed, must be list of message objects.
    test('message object', () {
      expect(
        () => tokenCost.calculatePromptCost(
          testMessages[0],
          'invalid model',
        ),
        throwsException,
      );
    });
  });

  group('calculateCompletionCost', () {
    final promptModelExpectedOutput2 = <(String, String, Money)>[
      (testString, 'gpt-3.5-turbo', Money.fromInt(2 * 4, decimalDigits: 6, isoCode: 'USD')),
      (testString, 'gpt-3.5-turbo-0301', Money.fromInt(2 * 4, decimalDigits: 6, isoCode: 'USD')),
      (testString, 'gpt-3.5-turbo-0613', Money.fromInt(2 * 4, decimalDigits: 6, isoCode: 'USD')),
      (testString, 'gpt-3.5-turbo-16k', Money.fromInt(4 * 4, decimalDigits: 6, isoCode: 'USD')),
      (testString, 'gpt-3.5-turbo-16k-0613', Money.fromInt(4 * 4, decimalDigits: 6, isoCode: 'USD')),
      (testString, 'gpt-3.5-turbo-1106', Money.fromInt(2 * 4, decimalDigits: 6, isoCode: 'USD')),
      (testString, 'gpt-3.5-turbo-instruct', Money.fromInt(2 * 4, decimalDigits: 6, isoCode: 'USD')),
      (testString, 'gpt-4', Money.fromInt(6 * 4, decimalDigits: 5, isoCode: 'USD')),
      (testString, 'gpt-4-0314', Money.fromInt(6 * 4, decimalDigits: 5, isoCode: 'USD')),
      (testString, 'gpt-4-32k', Money.fromInt(12 * 4, decimalDigits: 5, isoCode: 'USD')),
      (testString, 'gpt-4-32k-0314', Money.fromInt(12 * 4, decimalDigits: 5, isoCode: 'USD')),
      (testString, 'gpt-4-0613', Money.fromInt(6 * 4, decimalDigits: 5, isoCode: 'USD')),
      (testString, 'gpt-4-1106-preview', Money.fromInt(3 * 4, decimalDigits: 5, isoCode: 'USD')),
      (testString, 'gpt-4-vision-preview', Money.fromInt(3 * 4, decimalDigits: 5, isoCode: 'USD')),
      (testString, 'text-embedding-ada-002', Money.fromInt(0 * 4, decimalDigits: 0, isoCode: 'USD')),
    ];
    for (final (prompt, model, expectedOutput) in promptModelExpectedOutput2) {
      test(model, () {
        final actual = tokenCost.calculateCompletionCost(prompt, model);
        expect(
          actual,
          expectedOutput,
          reason: 'expected: <${expectedOutput.format('S0.00000000000')}> '
              'but was:<${actual.format('S0.00000000000')}>',
        );
      });
    }

    /// Invalid model should throw an Exception
    test('invalid model', () {
      expect(
        () => tokenCost.calculateCompletionCost(
          testString,
          'invalid model',
        ),
        throwsException,
      );
    });

    /// Invalid input type should throw an Exception
    test('invalid input type', () {
      expect(
        () => tokenCost.calculateCompletionCost(
          testString,
          'invalid model',
        ),
        throwsException,
      );
    });
  });

  group('calculateCostByDuration', () {
    test('whisper-1', () {
      final actualCost = tokenCost.calculateCostByDuration(
        Duration(seconds: 640.4400024414062.toInt()),
        'whisper-1',
        TokenType.output,
      );
      expect(actualCost, Money.fromInt(6400000000, decimalDigits: 11, isoCode: 'USD'));
    });
  });
}
