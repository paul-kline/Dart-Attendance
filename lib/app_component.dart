import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

import 'src/todo_list/todo_list_component.dart';
import 'src/newclasswizard/newclasswizard.dart';
import 'package:angular_components/utils/angular/scroll_host/angular_2.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  providers: const <dynamic>[scrollHostProviders, materialProviders],
  templateUrl: 'app_component.html',
  directives: [TodoListComponent, Newclasswizard],
)
class AppComponent {
  final title = "Tour of Heroes";
  var hero = 'Windstorm';
  // Nothing here yet. All logic is in TodoListComponent.
}
