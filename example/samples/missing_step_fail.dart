library ogurets_example;

import 'package:ogurets/ogurets.dart';


import '../steps/steps1.dart';

void main(args) async {
  var def = OguretsOpts()
    ..feature("example/gherkin/test_feature.feature")
    ..step(SampleSteps);

  var run = await def.run();

  if (run.failedFeatures.length != 1) {
    throw Exception("missing steps should be failing feature.");
  }

//  def.run();

}
