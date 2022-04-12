library io;

import 'dart:async';
import 'dart:ffi';

import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:sarbaz/core/src/config/config.dart';
import 'package:sqlite3/open.dart';

part 'sqlite3library.dart';

class IO {
  static void loadLibraries() {
    Sqlite3Library.load();
  }

  static Future<String> getApplicationDirectory() async {
    var appDir = await getApplicationSupportDirectory();
    return appDir.path;
  }

  static File loadFile(String path) {
    logger.info("path in file $path");
    return File(path);
  }

  static String? openFilePicker([List<String>? formats]) {
    _FilePicker picker = _FilePicker();
    return picker.pickFile(formats);
  }

  // static Future<void> openFile(String filePath) async {
  //   final _result = await OpenFile.open(filePath);
  //   logger.log(_result.message);

  //   logger.log("type=${_result.type}  message=${_result.message}");
  // }
}

class _FilePicker {
  String? pickFile(List<String>? extensions) {
    bool _noExtension = false;
    String _file = "undefined";
    if (Platform.isLinux) {
      Process.run('which', ['zenity'], runInShell: true).then((pr) {
        if (pr.exitCode != 0) {
          logger.warning("zenity not found.");
          return null;
        }

        logger.info("zenity found.");

        if (extensions == null) {
          _noExtension = true;
          logger.warning(
              "File picker extension not specified.");
        }

        List<String> combinedExtensions = [''];
        if (!_noExtension) {
          combinedExtensions.clear();
          extensions!.asMap().entries.forEach((element) {
            combinedExtensions.add('--file-filter= *.' + element.value + '');
          });
        }

        Process.run(
                'zenity',
                [
                  '--file-selection',
                  ...combinedExtensions,
                  '--file-filter= All files (*.*)|*.*',
                ],
                runInShell: false)
            .then((pr) {
          if (pr.exitCode != 0) {
            logger.info("user canceled choice.");
            logger.info(pr.stderr.toString());
            return null;
          }

          _file = pr.stdout.toString();
          logger.info("File: " + _file);
          return _file;
        });
      });
    } else if (Platform.isWindows) {
      Process.run('where', ['PowerShell'], runInShell: true).then((pr) {
        if (pr.exitCode != 0) {
          logger.warning("PowerShell not found.");
          return null;
        }

        logger.info("PowerShell found.");
        if (extensions == null) {
          _noExtension = true;
          logger.warning(
              "File picker extension not specified.");
        }

        String combinedExtensions = "|*.*";
        String showedCombinedExtensions = "|All files (*.*)";
        if (!_noExtension) {
          combinedExtensions = "";
          showedCombinedExtensions = "";
          extensions!.asMap().entries.forEach((element) {
            combinedExtensions =
                combinedExtensions + '|*.' + element.value + '';
            showedCombinedExtensions =
                showedCombinedExtensions + '*.' + element.value + ',';
          });
        }

        Process.run(
                'powershell.exe',
                [
                  '''Add-Type -AssemblyName System.windows.forms|Out-Null;\$f=New-Object System.Windows.Forms.OpenFileDialog;\$f.Filter='Supported picture Files ({$showedCombinedExtensions})$combinedExtensions';\$f.showHelp=\$false;\$f.ShowDialog()|Out-Null;\$f.FileName'''
                ],
                runInShell: true)
            .then((pr) {
          if (pr.exitCode != 0) {
            logger.warning("PowerShell not found.");
            return null;
          }

          _file = pr.stdout.toString();
          logger.info("File: " + _file);
          return _file;
        });
      });
    }

    return null;
  }

  String? pickDirectory() {
    String _dir = "undefined";

    Process.run('which', ['zenity'], runInShell: true).then((pr) {
      if (pr.exitCode != 0) {
        logger.warning("zenity not found.");
        return null;
      }

      logger.info("zenity found.");
    });

    Process.run('zenity', ['--file-selection', '--directory'], runInShell: true)
        .then((pr) {
      if (pr.exitCode != 0) {
        logger.info("user canceled choice.");
        logger.info(pr.stderr.toString());
        logger.info(pr.stdout.toString());
        return null;
      }

      _dir = pr.stdout.toString();
      logger.info("Directory: " + _dir);
      return _dir;
    });

    return null;
  }
}
