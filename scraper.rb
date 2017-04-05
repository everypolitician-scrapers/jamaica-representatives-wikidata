#!/bin/env ruby
# encoding: utf-8

require 'everypolitician'
require 'wikidata/fetcher'

existing = EveryPolitician::Index.new.country("Jamaica").lower_house.popolo.persons.map(&:wikidata).compact

names = EveryPolitician::Wikidata.morph_wikinames(source: 'tmtmtmtm/jamaica-representatives-wikipedia', column: 'wikiname')
EveryPolitician::Wikidata.scrape_wikidata(ids: existing, names: { en: names })
