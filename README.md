# Obligations-Positor
This is a discord bot designed to play a medieval logic game called *Obligiations*, functioning as the positor while you affirm or deny the statements that it generates.
Written in Python, this project uses the Discord API bindings from [discordpy](https://discordpy.readthedocs.io/en/stable/), and uses Microsoft's logic solver library [z3](https://github.com/Z3Prover/z3)

## TLDR Build & Run:
* Have `uv` python project manager installed in your environment.
* Create a `.env` file with the variable `DISCORD_BOT_TOKEN` set to  the application token for your discord bot account [If you do not already have a bot created, you must create one yourself.](https://discordpy.readthedocs.io/en/stable/discord.html)
* Run `uv run main.py`. (First time, this will install python and all dependencies in your project environment.)

## Developer Notes: Installing the environment
Option A: Manually
* [Install uv, a python project manager](https://docs.astral.sh/uv/getting-started/installation/).
* Run `uv sync` to automatically install BOTH `python` and all dependencies. (`uv` automatically creates a Python VENV for you.)

Option B: The Nix Way :)
* Have `nix` [installed](https://determinate.systems/nix-installer/), with flakes enabled.
* Also optionally enable .direnv,
* OR run `nix develop --no-pure-eval`
