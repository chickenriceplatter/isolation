require 'spec_helper'

module Isolation; describe CommandRunner do

  it 'runs commands that do not blow up' do
    runner = Isolation::CommandRunner.new("ls")
    runner.run

    expect(runner.success?).to eq(true)
    expect(runner.error_message).to eq("")
  end

  it 'captures error messages for commands that blow up' do
    runner = Isolation::CommandRunner.new("ls -z")
    runner.run

    expect(runner.success?).to eq(false)
    expect(runner.error_message).to include "ls: illegal option"
  end

end; end

