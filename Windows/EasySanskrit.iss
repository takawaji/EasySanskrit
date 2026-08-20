[Setup]
AppId=EasySanskrit
AppName=EasySanskrit
AppVersion=1.0.1
DefaultDirName={autopf}\EasySanskrit
DefaultGroupName=EasySanskrit
PrivilegesRequired=lowest
OutputDir=Output
OutputBaseFilename=EasySanskrit-Setup
Compression=lzma2
SolidCompression=yes
UninstallDisplayName=EasySanskrit

; 日本語を標準言語にする
LanguageDetectionMethod=none
ShowLanguageDialog=yes

[Languages]
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"

[Files]
Source: "EasySanskrit.exe"; DestDir: "{app}"; Flags: ignoreversion

[Tasks]
Name: "autostart"; Description: "{cm:AutoStart}"

[Icons]
Name: "{group}\EasySanskrit"; Filename: "{app}\EasySanskrit.exe"
Name: "{autostartup}\EasySanskrit"; Filename: "{app}\EasySanskrit.exe"; Tasks: autostart

[Run]
Filename: "{app}\EasySanskrit.exe"; Description: "{cm:LaunchEasySanskrit}"; Flags: nowait postinstall skipifsilent

[CustomMessages]
japanese.AutoStart=Windows起動時にEasySanskritを自動的に起動する
english.AutoStart=Start EasySanskrit automatically when Windows starts
german.AutoStart=EasySanskrit beim Start von Windows automatisch starten

japanese.LaunchEasySanskrit=EasySanskritを起動する
english.LaunchEasySanskrit=Launch EasySanskrit
german.LaunchEasySanskrit=EasySanskrit starten
