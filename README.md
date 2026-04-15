> [!NOTE]
> merged into [anturated/nix-config](https://github.com/anturated/nix-config)

## Installation
Kale uses a daemon for power control, so you need to add it to your config:
```nix
{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    kale = {
      url = "github:anturated/kale";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
}
```
Standalone script coming soon™

## Usage
Put this into your game's launch args
```bash
kale %command%
```

`--help` coming soon™
