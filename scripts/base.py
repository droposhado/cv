"""Get infos from sabedoria to render a latex file"""

import os

import requests
import yaml
from mako.template import Template

SABEDORIA_URL = os.getenv("SABEDORIA_URL")
SABEDORIA_TOKEN = os.getenv("SABEDORIA_TOKEN")
LANG = os.getenv('LANG')

with open("lang.yml", mode="r", encoding="utf-8") as lang:
    i18n = yaml.safe_load(lang.read())

req = requests.get(
    SABEDORIA_URL,
    headers={
        "Authorization": f"Bearer {SABEDORIA_TOKEN}",
        "Accept-Language": LANG,
        "User-Agent": "droposhado/cv",
    }, timeout=5)

data = req.json()

for d in data["descriptions"]:
    if d.get("scope") != "cv":
        continue

    description = d.get("value")

t = Template(filename="src/base.tex.mako")
r = t.render(i18n=i18n,
        lang=LANG,
        courses=data["courses"],
        description=description,
        education=data["educations"],
        interests=data["interests"],
        jobs=data["jobs"],
        name=data["name"],
        projects=data["projects"],
        email=data["socials"]["email"],
        github=data["socials"]["github"],
        linkedin=data["socials"]["linkedin"],
        site=data["socials"]["site"])

print(r)
