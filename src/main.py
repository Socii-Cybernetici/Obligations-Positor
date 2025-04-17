import os
import discord
import discord.ext.commands as commands
import dotenv
import logging
import asyncio

async def main():
    dotenv.load_dotenv()
    bot = commands.Bot(
        command_prefix = "!",
        intents = discord.Intents(
            message_content = True,
            guilds = True,
            guild_messages = True
        ),
    )

    @bot.event
    async def on_ready():
        logging.info(f"Starting bot as bot {bot.user}")
        await bot.tree.sync()
    @bot.command()
    async def ping(ctx):
        await ctx.send("pong!")
    discord.utils.setup_logging()

    await bot.start(os.getenv("DISCORD_BOT_TOKEN"))
    
if __name__ == "__main__":
    try:
        asyncio.run(main())
    except KeyboardInterrupt:
        pass
