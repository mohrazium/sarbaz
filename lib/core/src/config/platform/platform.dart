part of config;

class PlatformConfigs{
  static String pathSeparator() => Platform.isWindows ? "\\" : "/"; 
}