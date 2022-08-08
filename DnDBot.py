import random
import discord
import configparser

config = configparser.ConfigParser()
config.read('INSERT CONFIG FILE PATH')
discord_token = config.get('default', 'token')
client = discord.Client()

dice = [4,6,10,12,20]

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

    #roll d4 6 10 12 or 20
    for a in range(0, len(dice)):
        if "!d" + str(dice[a]) in message.content:
            await message.channel.send(random.randrange(1, int(dice[a]) + 1))


client.run(discord_token)
