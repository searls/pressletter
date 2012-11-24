module Bench
  def self.mark(name, &experiment)
    @marks ||= Marks.new
    @marks.add(name, &experiment)
  end

  def self.run
    return unless @marks
    @marks.run
  end

  class Marks
    def initialize
      @marks = {}
    end

    def add(name, &experiment)
      raise "Benchmark named \"#{name}\" was already defined!" if @marks.has_key?(name)
      @marks[name] = {:experiment => experiment }
    end

    def run
      require 'benchmark'

      Results.new(
        @marks.map do |(name, mark)|
          begin
            {
              :name => name,
              :errors => nil,
              :time => Benchmark.measure(&mark[:experiment]).total
            }
          rescue
            {
              :name => name,
              :errors => [$!.message],
              :time => nil
            }
          end
        end
      )
    end
  end

  class Results
    def initialize(results)
      @results = results
    end

    def as_array
      @results
    end

    def total_time
      raise failure_message if failures?
      @results.map {|r| r[:time] }.inject(&:+)
    end

    def average_time
      total_time / @results.size
    end

  private

    def failure_message
      "Errors occurred, total benchmark time is meaningless:\n\n #{errors}"
    end

    def failures?
      @results.any? {|r| r[:errors] }
    end

    def errors
      @results.map { |r| r[:errors] }.flatten.compact.join("\n")
    end
  end


end

$LOAD_PATH.unshift File.join(File.dirname(__FILE__), '..', 'lib')
require 'pressletter'

Bench.mark "eiptctbntymeiphoxvitkmzib" do
  Pressletter.solve("eiptctbntymeiphoxvitkmzib")
end

# Bench.mark "agslumxaeyylyuwfoszmddjhi" do
#   Pressletter.solve("agslumxaeyylyuwfoszmddjhi")
# end

puts Bench.run.total_time