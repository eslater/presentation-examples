#!/usr/bin/env ruby

require './survey_engine.rb'

def question(text)
  Survey::Engine.instance.add_question(Survey::Question.new(text))
end

def response(text)
  Survey::Engine.instance.questions.last.add_response(Survey::Response.new(text))
end

load 'survey.sv'

Survey::Engine.instance.run_survey