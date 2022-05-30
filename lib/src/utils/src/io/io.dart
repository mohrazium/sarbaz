part of sarbaz.utils;




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
    bool noExtension = false;
    String file = "undefined";
    if (Platform.isLinux) {
      Process.run('which', ['zenity'], runInShell: true).then((pr) {
        if (pr.exitCode != 0) {
          logger.warning("zenity not found.");
          return null;
        }

        logger.info("zenity found.");

        if (extensions == null) {
          noExtension = true;
          logger.warning("File picker extension not specified.");
        }

        List<String> combinedExtensions = [''];
        if (!noExtension) {
          combinedExtensions.clear();
          extensions!.asMap().entries.forEach((element) {
            combinedExtensions.add('--file-filter= *.${element.value}');
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

          file = pr.stdout.toString();
          logger.info("File: $file");
          return file;
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
          noExtension = true;
          logger.warning("File picker extension not specified.");
        }

        String combinedExtensions = "|*.*";
        String showedCombinedExtensions = "|All files (*.*)";
        if (!noExtension) {
          combinedExtensions = "";
          showedCombinedExtensions = "";
          extensions!.asMap().entries.forEach((element) {
            combinedExtensions = '$combinedExtensions|*.${element.value}';
            showedCombinedExtensions = '$showedCombinedExtensions*.${element.value},';
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

          file = pr.stdout.toString();
          logger.info("File: $file");
          return file;
        });
      });
    }

    return null;
  }

  String? pickDirectory() {
    String dir = "undefined";

    Process.run('which', ['zenity'], runInShell: true).then((pr) {
      if (pr.exitCode != 0) {
        logger.warning("zenity not found.");
        return null;
      }

      logger.info("zenity found.");
    });

    Process.run('zenity', ['--file-selection', '--directory'], runInShell: true).then((pr) {
      if (pr.exitCode != 0) {
        logger.info("user canceled choice.");
        logger.info(pr.stderr.toString());
        logger.info(pr.stdout.toString());
        return null;
      }

      dir = pr.stdout.toString();
      logger.info("Directory: $dir");
      return dir;
    });

    return null;
  }
}
