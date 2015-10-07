module Isolation; class CommandRunner

  attr_reader :command
  attr_accessor :success_status, :error_message
  alias_method :success?, :success_status

  def initialize(command)
    @command = command
  end

  def run
    Open3.popen3(ENV, command) do |stdin, stdout, stderr, wait_thr|
      self.success_status = wait_thr.value.success?
      self.error_message = stderr.read
    end
  end

end; end
