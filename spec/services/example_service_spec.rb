# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ExampleService do
  it { expect(described_class.call).to eq(3) }
end
