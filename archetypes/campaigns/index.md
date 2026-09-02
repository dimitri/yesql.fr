+++
title    = "{{ replace .Name "-" " " | title }}"
# Points at data/campaigns/{{ .Name }}.toml, which carries ALL the figures.
# Do not put any amount in this file.
campaign = "{{ .Name }}"
date     = {{ .Date }}
draft    = true
weight   = 10
summary  = ""
description = ""

[cta]
  label = "{{ if eq .Site.Language.Lang "fr" }}Contribuer{{ else }}Back this{{ end }}"

# Keys must match the [[tiers]] ids in the data file.
[tier_labels]
  individual = ""
  company    = ""
  sponsor    = ""
+++

{{ if eq .Site.Language.Lang "fr" }}## Ce qui est financé{{ else }}## What gets built{{ end }}

{{ if eq .Site.Language.Lang "fr" }}## Ce qui n'est pas financé{{ else }}## What does not get built{{ end }}

{{ if eq .Site.Language.Lang "fr" }}## Le seuil{{ else }}## The threshold{{ end }}
