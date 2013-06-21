#!/usr/bin/env ruby

require './survey_engine.rb'

def question(text)
  Blackbaud::Survey.instance.add_question(Blackbaud::Question.new(text))
end

def response(text)
  Blackbaud::Survey.instance.questions.last.add_response(Blackbaud::Response.new(text))
end

load 'survey.sv'

Blackbaud::Survey.instance.run_survey