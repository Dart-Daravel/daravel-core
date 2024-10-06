import 'package:args/command_runner.dart';
import 'package:daravel_core/core.dart';

class ServeCommand extends Command {
  final Core core;

  @override
  String get name => 'serve';

  @override
  String get description => 'Generates the project config map file';

  ServeCommand(this.core) {
    argParser.addOption('port', abbr: 'p');
  }

  @override
  void run() async {
    await core.run(port: int.tryParse(argResults?.option('port') ?? ''));
  }
}
