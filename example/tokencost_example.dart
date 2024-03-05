// ignore_for_file: avoid_print

import 'package:tokencost/tokencost.dart';

void main() async {
  final tokenCost = await TokenCost.getInstance();

  const model = 'gpt-3.5-turbo';
  final prompt = [
    {
      'role': 'user',
      'content': 'Hello world',
    },
  ];
  const completion = 'How may I assist you today?';

  final promptCost = tokenCost.calculatePromptCost(prompt, model);
  final completionCost = tokenCost.calculateCompletionCost(completion, model);

  print('$promptCost + $completionCost = ${promptCost + completionCost}');
  // $0.0000135 + $0.0000140 = $0.0000275
}
