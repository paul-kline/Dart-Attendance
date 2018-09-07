import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_components/material_button/material_button.dart';
import 'package:angular_components/material_stepper/material_step.dart';
import 'package:angular_components/material_stepper/material_stepper.dart';
import 'package:angular_components/model/action/async_action.dart';
// import 'package:angular_gallery_section/annotation/gallery_section_config.dart';

@Component(
    selector: 'newclasswizard',
    templateUrl: 'newclasswizard.html',
    directives: [
      MaterialStepperComponent,
      StepDirective,
      SummaryDirective,
      MaterialButtonComponent,
      NgFor,
    ],
    styleUrls: [
      'newclasswizard.css'
    ])
class Newclasswizard {
  bool showButton = false;

  void toggleContinue() {
    showButton = !showButton;
  }

  void validDelayedCheck(AsyncAction<bool> action) {
    action.cancelIf(Future.delayed(const Duration(seconds: 1), () {
      // Don't cancel
      return false;
    }));
  }
}
