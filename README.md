# EasySanskrit

EasySanskrit is an input support tool for typing Romanized Sanskrit.

It provides simple input rules based mainly on the visual shapes of diacritical marks.

For example:

- `a=` → ā
- `r.` → ṛ
- `r.=` → ṝ
- `n~` → ñ
- `n^` → ṅ
- `s'` → ś

EasySanskrit is available for both Windows and macOS.

## Versions

### EasySanskrit for Windows

Version 1.0.1

EasySanskrit for Windows is implemented as an AutoHotkey v2 script.

See:

[EasySanskrit for Windows](windows/README.md)

### EasySanskrit for macOS

Version 1.0.0

EasySanskrit for macOS is implemented as a Hammerspoon Spoon.

See:

[EasySanskrit for macOS](macos/README.md)

## Input Rules

EasySanskrit for Windows and EasySanskrit for macOS use the same input rules.

The input rules are designed so that many characters can be entered using symbols that resemble their diacritical marks.

Examples:

| Output | Input |
|---|---|
| ā | `a=` |
| ṛ | `r.` |
| ṝ | `r.=` |
| ṅ | `n^` |
| ñ | `n~` |
| ś | `s'` |
| ṃ | `m.` |
| ḥ | `h.` |

For complete input rules and installation instructions, see the README for each platform.

## Platforms

| Platform | Implementation | Version |
|---|---|---|
| Windows | AutoHotkey v2 | 1.0.1 |
| macOS | Hammerspoon | 1.0.0 |

## License

MIT License
