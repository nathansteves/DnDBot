import random
import discord
import configparser

config = configparser.ConfigParser()
config.read('INSERT CONFIG FILE PATH')
discord_token = config.get('default', 'token')
client = discord.Client()

#if you want a console log in message
@client.event
async def on_ready():
    print('We have logged in as {0.user}'.format(client))

@client.event
async def on_message(message):
    username = str(message.author).split('#')[0]
    user_message = str(message.content)
    channel = str(message.channel.name)
    print(f'{username}: {user_message} ({channel})')

    if message.author == client.user:
        return

    if "!d4" in message.content:
        await message.channel.send(random.randrange(1,5))
        return
    elif "!d6" in message.content:
        await message.channel.send(random.randrange(1,7))
        return
    elif "!d10" in message.content:
        await message.channel.send(random.randrange(1,11))
        return
    elif "!d12" in message.content:
        await message.channel.send(random.randrange(1,13))
        return 
    elif "!d20" in message.content:
        await message.channel.send(random.randrange(1,21))
        return

client.run(discord_token)