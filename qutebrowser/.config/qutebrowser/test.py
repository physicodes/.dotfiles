import json

with open('/home/josh/.cache/wal/colors.json', 'r') as colors_json:
    colors = json.load(colors_json)['colors']
    print(colors)
