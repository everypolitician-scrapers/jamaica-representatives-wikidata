#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

names = EveryPolitician::Wikidata.morph_wikinames(source: 'tmtmtmtm/jamaica-representatives-wikipedia', column: 'wikiname')
EveryPolitician::Wikidata.scrape_wikidata(names: { en: names })
warn EveryPolitician::Wikidata.notify_rebuilder

