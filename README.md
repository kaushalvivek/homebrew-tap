# Homebrew Tap

Homebrew formulae for Kaushal Vivek's tools, all in one tap.

## Install

Homebrew 7 may ask you to trust this tap the first time:

```bash
brew trust kaushalvivek/tap
```

Then:

```bash
brew install kaushalvivek/tap/hn
brew install kaushalvivek/tap/pom
```

## Tools

| Formula | Description |
| --- | --- |
| [`hn`](https://github.com/kaushalvivek/hn-cli) | Interactive terminal client for Hacker News |
| [`pom`](https://github.com/kaushalvivek/pom) | Elegant terminal pomodoro timer |

## Migration from the old `pom` tap

The old `kaushalvivek/pom` tap has been retired. If you used it, switch to the consolidated tap:

```bash
brew untap kaushalvivek/pom
brew install kaushalvivek/tap/pom
```
