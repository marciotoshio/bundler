# frozen_string_literal: true

RSpec.describe "Bundler::YamlLibrarySyntaxError" do
  it "is raised on YAML parse errors" do
    require "bundler/psyched_yaml"

    expect { YAML.parse "{foo" }.to raise_error(Bundler::YamlLibrarySyntaxError)
  end
end
