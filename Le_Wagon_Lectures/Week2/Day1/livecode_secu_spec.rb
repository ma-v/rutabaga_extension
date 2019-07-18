require_relative "livecode_secu"

describe "#secu" do
  it "returns 'the ssn is invalid when passed an empty string' " do
    actual = secu('')
    expected = 'The ssn is invalid'
    expect(actual).to eq(expected)
  end
end
