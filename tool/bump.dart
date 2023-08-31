import 'package:grinder/grinder.dart';

@Task(
  'バージョン番号をbumpする',
)
void bump() {
  final args = context.invocation.arguments;

  final package = args.getOption('package');
  if (package == null) {
    fail('--package is required');
  }

  run(
    'git',
    arguments: [
      'fetch',
    ],
  );

  run(
    'git',
    arguments: [
      'checkout',
      'main',
    ],
  );

  run(
    'git',
    arguments: [
      'pull',
    ],
  );

  final version = run(
    'cider',
    arguments: [
      'bump',
      'patch',
      '--bump-build',
    ],
    workingDirectory: 'packages/$package',
  ).trim();

  final branch = 'release/$package-v$version';

  run(
    'git',
    arguments: [
      'checkout',
      '-b',
      branch,
    ],
  );

  run(
    'git',
    arguments: [
      'add',
      'pubspec.yaml',
    ],
    workingDirectory: 'packages/$package',
  );

  run(
    'git',
    arguments: [
      'commit',
      '-m',
      '[skip ci] Bump $package to v$version',
    ],
  );

  run(
    'git',
    arguments: [
      'push',
      '--set-upstream',
      'origin',
      branch,
    ],
  );

  run(
    'gh',
    arguments: [
      'pr',
      'create',
      '--fill',
      '--assignee',
      '@me',
    ],
  );
}
