# homebrew-meowping

The official Homebrew tap for [meowping](https://github.com/Entytaiment25/meowping) — a flexible ping utility written in Rust, focused on being size efficient and fast.

## Install

```sh
brew tap Entytaiment25/meowping
brew install meowping
```

## What is meowping?

meowping is a lightweight, fast ping utility built in Rust. It aims to be a drop-in replacement for traditional ping with a focus on speed and minimal binary size.

For more information, visit the main repository: https://github.com/Entytaiment25/meowping

## Auto-updates

This tap is kept up to date automatically. A GitHub Actions workflow runs every hour, checks for a new release on the [meowping](https://github.com/Entytaiment25/meowping) repository, and commits an updated `Formula/meowping.rb` when a new version is found. No manual steps or extra tokens are required.

You can also trigger the update manually from the [Actions tab](../../actions/workflows/update-formula.yml) using the **Run workflow** button.
