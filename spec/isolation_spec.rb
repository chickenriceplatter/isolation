require 'spec_helper'

describe Isolation do
  it 'has a version number' do
    expect(Isolation::VERSION).not_to be nil
  end

  it 'does something useful' do
    runner = Isolation::CommandRunner.new("ls")
    runner.run

    expect(runner.success?).to eq(true)
    expect(runner.error_message).to eq("")
  end
end
