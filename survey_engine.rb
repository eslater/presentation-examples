require 'singleton'

module Survey

  class Engine

    include Singleton

    attr_accessor :questions

    def initialize
      @questions = []
    end

    def add_question(question)
      @questions << question
    end

    def run_survey
      response_indexes = []
      @questions.each { |q|
        response_indexes << q.ask
      }

      puts ""
      puts "Your selections were as follows: "
      @questions.each_with_index { |q,i|
        puts "For question #{i+1}:"
        puts "#{q.responses[response_indexes[i]].text}"
      }
    end
  end

  class Question

    attr_reader :text
    attr_reader :responses

    def initialize(text)
      @text = text
      @responses = []
    end

    def add_response(response)
      @responses << response
    end

    def ask
      puts ""
      puts "Question: #{@text}"
      @responses.each_with_index { |r,i|
        puts "#{i+1} - #{r.text}"
      }
      puts "Please select a response: "
      return (gets.to_i - 1)
    end

  end

  class Response

    attr_reader :text

    def initialize(text)
      @text = text
    end

  end

end