
# EasySanskrit for macOS

Version 1.0.0

EasySanskrit for macOS is a Hammerspoon Spoon for typing Romanized Sanskrit on macOS.

It uses the same simple input rules as EasySanskrit for Windows.  
The input rules are based mainly on the visual shapes of diacritical marks.

For example:

- `a=` → ā
- `r.` → ṛ
- `r.=` → ṝ
- `n~` → ñ
- `n^` → ṅ
- `s'` → ś

## Requirements

- macOS
- Hammerspoon

Tested on:

- macOS Tahoe 26.5.2
- Hammerspoon 1.1.1

Hammerspoon can be downloaded from:

[Hammerspoon](https://www.hammerspoon.org/)

After installing Hammerspoon, allow the required Accessibility permission when macOS requests it.

## Installation

### 1. Install Hammerspoon

Download and install Hammerspoon, then start it.

### 2. Install EasySanskrit

Copy `EasySanskrit.spoon` to:

```text
~/.hammerspoon/Spoons/
```

Do not copy only the `init.lua` file. The entire `EasySanskrit.spoon` must be placed in the `Spoons` directory.

The resulting directory structure should be:

```text
~/.hammerspoon/
├── init.lua
└── Spoons/
    └── EasySanskrit.spoon/
        └── init.lua
```

### 3. Configure Hammerspoon

To use EasySanskrit, you need to add the following two lines to Hammerspoon's main configuration file:

`~/.hammerspoon/init.lua`

Add:

```lua
hs.loadSpoon("EasySanskrit")
spoon.EasySanskrit:start()
```

These lines load and start EasySanskrit.

If `init.lua` is empty, these two lines are sufficient.

If you already use Hammerspoon, add these lines to your existing `init.lua`. You do not need to replace your current configuration.

The `init.lua` file is Hammerspoon's main configuration file and is read when Hammerspoon starts or reloads its configuration.

### 4. Reload the Hammerspoon configuration

Click the Hammerspoon icon in the macOS menu bar and select:

```text
Reload Config
```

If EasySanskrit starts correctly, the following message will briefly appear:

```text
EasySanskrit for macOS started
```

## Input Rules

### Vowels

| Output | Input |
|---|---|
| ā, ī, ū | `a=`, `i=`, `u=` |
| Ā, Ī, Ū | `A=`, `I=`, `U=` |
| ṛ, ḷ | `r.`, `l.` |
| Ṛ, Ḷ | `R.`, `L.` |
| ṝ, ḹ | `r.=`, `l.=` |
| Ṝ, Ḹ | `R.=`, `L.=` |

For `ṝ`, `Ṝ`, `ḹ`, and `Ḹ`, enter `=` within 3 seconds after entering the corresponding short form.

For example:

```text
r.=
```

produces:

```text
ṝ
```

### Consonants

| Output | Input |
|---|---|
| ṭ, ḍ, ṇ, ṣ | `t.`, `d.`, `n.`, `s.` |
| Ṭ, Ḍ, Ṇ, Ṣ | `T.`, `D.`, `N.`, `S.` |
| ṅ | `n^` |
| Ṅ | `N^` |
| ñ | `n~` |
| Ñ | `N~` |
| ś | `s'` |
| Ś | `S'` |

### Anusvāra and Visarga

| Output | Input |
|---|---|
| ṃ | `m.` |
| Ṃ | `M.` |
| ḥ | `h.` |
| Ḥ | `H.` |

### Anunāsika-related Characters

| Output | Input |
|---|---|
| m̐ | `m~` |
| M̐ | `M~` |
| ỹ, l̃, ṽ | `y~`, `l~`, `v~` |
| Ỹ, L̃, Ṽ | `Y~`, `L~`, `V~` |

### Other Symbols

| Symbol | Output | Input |
|---|---|---|
| Avagraha | ’ | `''` |
| Danda | । | `\|.` |
| Double danda | ॥ | `\|\|.` |

## Pause and Resume Conversion

Press:

```text
Control + Command + E
```

to pause EasySanskrit conversion.

Press the same shortcut again to resume conversion.

When conversion is paused:

```text
EasySanskrit: OFF
```

is displayed.

When conversion is resumed:

```text
EasySanskrit: ON
```

is displayed.

## Changing the Pause/Resume Shortcut

The pause/resume shortcut can be changed in your Hammerspoon `init.lua`.

The default shortcut is:

```lua
spoon.EasySanskrit.toggleHotkey = {
    {"ctrl", "cmd"},
    "E"
}
```

To use another shortcut, change the modifier keys and key before starting EasySanskrit:

```lua
hs.loadSpoon("EasySanskrit")

spoon.EasySanskrit.toggleHotkey = {
    {"ctrl", "cmd"},
    "K"
}

spoon.EasySanskrit:start()
```

Choose a shortcut that does not conflict with macOS or other applications.

## Notes

- EasySanskrit for macOS uses the same input rules as EasySanskrit for Windows.
- Keyboard layouts may differ, so the physical positions of symbols such as `~`, `^`, `|`, and `=` may vary.
- A font that supports the required Unicode characters must be used.
- EasySanskrit does not perform automatic transliteration. It only converts predefined input sequences into the corresponding Unicode characters.
  
## License

MIT License
