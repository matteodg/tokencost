// ignore_for_file: avoid_print

import 'package:tokencost/tokencost.dart';

void main() {
  const model = 'gpt-3.5-turbo';
  final prompt = [
    {
      'role': 'user',
      'content': 'Hello world',
    },
  ];
  const completion = 'How may I assist you today?';

  final promptCost = calculatePromptCost(prompt, model);
  final completionCost = calculateCompletionCost(completion, model);

  print('$promptCost + $completionCost = ${promptCost + completionCost}');
  // 135 + 140 = 275 ($0.0000275)
  // Priced in TPUs (token price units), which is 1/10,000,000th of a USD.
}
