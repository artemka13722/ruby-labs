# frozen_string_literal: true

require_relative '../lib/converter_ckf'
require 'rspec'

RSpec.describe ConverterCKF do
  describe '.converter' do
    context 'From C to F' do
      it { expect(ConverterCKF.convert(42, 'C', 'F')).to eq 107 }
    end

    context 'From C to K' do
      it { expect(ConverterCKF.convert(42, 'C', 'K')).to eq 315 }
    end

    context 'From F to C' do
      it { expect(ConverterCKF.convert(42, 'F', 'C')).to eq(5) }
    end

    context 'From F to K' do
      it { expect(ConverterCKF.convert(42, 'F', 'K')).to eq 297 }
    end

    context 'From K to C' do
      it { expect(ConverterCKF.convert(42, 'K', 'C')).to eq(-231) }
    end

    context 'From K to F' do
      it { expect(ConverterCKF.convert(42, 'K', 'F')).to eq(-384) }
    end
  end
end
