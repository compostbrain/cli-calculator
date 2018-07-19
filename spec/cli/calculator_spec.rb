RSpec.describe Cli::Calculator do
  it "has a version number" do
    expect(Cli::Calculator::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end
